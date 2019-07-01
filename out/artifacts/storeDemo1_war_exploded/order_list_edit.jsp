<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/4
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="bean.Order_Info" %>
<%@ page import="org.hibernate.criterion.Order" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/11
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
    <link href="style/authority/basic_layout.css" rel="stylesheet" type="text/css">
    <link href="style/authority/common_style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="scripts/authority/commonAll.js"></script>
    <script type="text/javascript" src="scripts/jquery/jquery-1.4.4.min.js"></script>
    <script src="scripts/My97DatePicker/WdatePicker.js" type="text/javascript" defer="defer"></script>
    <script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            /*
             * 提交
             */
            $("#submitbutton").click(function() {
                if(validateForm()){
                    checkFyFhSubmit();
                }
            });

            /*
             * 取消
             */
            $("#cancelbutton").click(function() {
                /**  关闭弹出iframe  **/
                window.parent.$.fancybox.close();
            });
            var result = '<%=(String)request.getAttribute("result")%>';
            if(result =='success'){
                /**  关闭弹出iframe  **/
                window.parent.$.fancybox.close();
            }
        });

        /** 检测房源房号是否存在  **/
        function checkFyFh(){
            // 分别获取小区编号、栋号、层号、房号
            var fyID = $('#fyID').val();
            var fyXqCode = $("#fyXq").val();
            var fyDh = $("#fyDh").val();
            var fyCh = $("#fyCh").val();
            var fyFh = $("#fyFh").val();
            if(fyXqCode!="" && fyDh!="" && fyCh!="" && fyFh!=""){
                // 给房屋坐落地址赋值
                $("#fyZldz").val($('#fyDh option:selected').text() + fyCh + "-" + fyFh);
                // 异步判断该房室是否存在，如果已存在，给用户已提示哦
                $.ajax({
                    type:"POST",
                    url:"checkFyFhIsExists.action",
                    data:{"fangyuanEntity.fyID":fyID,"fangyuanEntity.fyXqCode":fyXqCode, "fangyuanEntity.fyDhCode":fyDh, "fangyuanEntity.fyCh":fyCh, "fangyuanEntity.fyFh":fyFh},
                    dataType : "text",
                    success:function(data){
// 					alert(data);
                        // 如果返回数据不为空，更改“房源信息”
                        if(data=="1"){
                            art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'该房室在系统中已经存在哦，\n请维护其他房室数据', ok:true,});
                            $("#fyFh").css("background", "#EEE");
                            $("#fyFh").focus();
                            return false;
                        }
                    }
                });
            }
        }

        /** 检测房源房号是否存在并提交form  **/
        function checkFyFhSubmit(){
            // 分别获取小区编号、栋号、层号、房号
            var fyID = $('#fyID').val();
            var fyXqCode = $("#fyXq").val();
            var fyDh = $("#fyDh").val();
            var fyCh = $("#fyCh").val();
            var fyFh = $("#fyFh").val();
            if(fyXqCode!="" && fyDh!="" && fyCh!="" && fyFh!=""){
                // 给房屋坐落地址赋值
                $("#fyZldz").val($('#fyDh option:selected').text()  + fyCh + "-" + fyFh);
                // 异步判断该房室是否存在，如果已存在，给用户已提示哦
                $.ajax({
                    type:"POST",
                    url:"checkFyFhIsExists.action",
                    data:{"fangyuanEntity.fyID":fyID,"fangyuanEntity.fyXqCode":fyXqCode, "fangyuanEntity.fyDhCode":fyDh, "fangyuanEntity.fyCh":fyCh, "fangyuanEntity.fyFh":fyFh},
                    dataType : "text",
                    success:function(data){
// 					alert(data);
                        // 如果返回数据不为空，更改“房源信息”
                        if(data=="1"){
                            art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'该房室在系统中已经存在哦，\n请维护其他房室数据', ok:true,});
                            $("#fyFh").css("background", "#EEE");
                            $("#fyFh").focus();
                            return false;
                        }else{
                            $("#submitForm").attr("action", "/xngzf/archives/saveOrUpdateFangyuan.action").submit();
                        }
                    }
                });
            }
            return true;
        }

        /** 表单验证  **/
        function validateForm(){
            if($("#fyXqName").val()==""){
                art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写房源小区', ok:true,});
                return false;
            }
            if($("#fyDh").val()==""){
                art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写房源栋号', ok:true,});
                return false;
            }
            if($("#fyCh").val()==""){
                art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写房源层号', ok:true,});
                return false;
            }
            if($("#fyFh").val()==""){
                art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写房源房号', ok:true,});
                return false;
            }
            if($("#fyZongMj").val()==""){
                art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写房源面积', ok:true,});
                return false;
            }
            if($("#fyJizuMj").val()==""){
                art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写计租面积', ok:true,});
                return false;
            }
            if($("#fyZldz").val()==""){
                art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写房源座落地址', ok:true,});
                return false;
            }
            return true;
        }
    </script>
    <%
        String args = (String) request.getAttribute("type");
        Order_Info order_info = (Order_Info) request.getAttribute("UpdateOrderInfo");

    %>
</head>
<body>

<form id="submitForm" name="submitForm" action="UpdateOrderInfoaction.action" method="post">
    <input type="hidden" name="fyID" value="14458625716623" id="fyID1"/>
    <div id="container1">
        <div id="nav_links1">
            当前位置：基础数据&nbsp;>&nbsp;<span style="color: #1A5CC6;">订单编辑</span>
            <div id="page_close1">
                <a href="javascript:parent.$.fancybox.close();">
                    <img src="images/common/page_close.png" width="20" height="20" style="vertical-align: text-top;"/>
                </a>
            </div>
        </div>
        <div class="ui_content">
            <table  cellspacing="0" cellpadding="0" width="100%" align="left" border="0">
                <tr>
                    <td class="ui_text_rt" width="80">订单号</td>
                    <td class="ui_text_lt">
                        <input type="text" name="order_info.order_number" class="ui_select01" placeholder="请输入商品名称" value="<%=order_info.getOrder_number()%>">
                    </td>
                </tr>
                <tr>
                    <td class="ui_text_rt">地址</td>
                    <td class="ui_text_lt">
                       <input type="text" name="order_info.address" value="<%=order_info.getAddress()%>">
                    </td>
                </tr>
                <tr>
                <tr>
                    <td class="ui_text_rt">订单所属客户</td>
                    <td class="ui_text_lt">
                        <input type="text" name="order_info.affiliated_customers" class="ui_select01" placeholder="请输入商品id" value="<%=order_info.getAffiliated_customers()%>">
                    </td>
                </tr>
                <td class="ui_text_rt">电话号码</td>
                <td class="ui_text_lt">
                    <input type="text" name="order_info.phone"  class="ui_select01" placeholder="请输入商品的价格" value="<%=order_info.getPhone()%>">
                </td>
                </tr>
                <tr>
                    <td class="ui_text_rt">总价格</td>
                    <td>
                        <input type="number" name="order_info.total_price" value="<%=order_info.getTotal_price()%>">
                    </td>
                </tr>
                <tr>
                    <td class="ui_text_rt">下单时间</td>
                    <td class="ui_text_lt">
                        <input type="text" value="<%=order_info.getOrder_time()%>" name="order_info.order_time" class="ui_input_txt02"/>
                    </td>
                </tr>
                <tr>
                    <td class="ui_text_rt">订单状态</td>
                    <td class="ui_text_lt">
                        <input type="text" value="<%=order_info.getStatus()%>" name="order_info.status"  class="ui_input_txt02"/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="ui_text_lt">
                        &nbsp;<input id="submitbutton1" type="submit" value="提交" class="ui_input_btn01"/>
                        &nbsp;<input id="cancelbutton1" type="button" value="取消" class="ui_input_btn01"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</form>

</body>
</html>

</body>
</html>
