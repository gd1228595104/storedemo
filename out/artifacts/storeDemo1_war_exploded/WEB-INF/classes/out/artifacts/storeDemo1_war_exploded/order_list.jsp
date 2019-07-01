<%@ page import="bean.Order_Info" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/11
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
    <link href="style/authority/basic_layout.css" rel="stylesheet" type="text/css">
    <link href="style/authority/common_style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="scripts/authority/commonAll.js"></script>
    <script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.js"></script>
    <script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
    <link rel="stylesheet" type="text/css" href="style/authority/jquery.fancybox-1.3.4.css" media="screen"></link>
    <script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
    <title>信息管理系统</title>
    <script type="text/javascript">
        $(document).ready(function(){
            /** 新增   **/
            $("#addBtn").fancybox({
                'href'  : 'order_list_edit.jsp',
                'width' : 733,
                'height' : 530,
                'type' : 'iframe',
                'hideOnOverlayClick' : false,
                'showCloseButton' : false,
                'onClosed' : function() {
                    window.location.href = 'house_list.html';
                }
            });

            /** 导入  **/
            $("#importBtn").fancybox({
                'href'  : '/xngzf/archives/importFangyuan.action',
                'width' : 633,
                'height' : 260,
                'type' : 'iframe',
                'hideOnOverlayClick' : false,
                'showCloseButton' : false,
                'onClosed' : function() {
                    window.location.href = 'house_list.html';
                }
            });

            /**编辑   **/
            $("a.edit").fancybox({
                'width' : 733,
                'height' : 530,
                'type' : 'iframe',
                'hideOnOverlayClick' : false,
                'showCloseButton' : false,
                'onClosed' : function() {
                    window.location.href = 'order_list.jsp';
                }
            });
        });
        /** 用户角色   **/
        var userRole = '';

        /** 模糊查询来电用户  **/
        function search(){
            number = document.getElementById("order_number").value;
            phone = document.getElementById("phone").value;
            paramters = number+","+phone
            $("#submitForm").attr("action", "InsearchOrderInfoaction.action?paramters="+paramters).submit();
        }

        /** 新增   **/
        function add(){
          // window.location.href = "hreforder_list_edit.jsp";
        }

        /** Excel导出  **/
        function exportExcel(){
            window.location.href = "ExportOrderInfoAction2.action?type="+2
            alert("导出成功")
        }
       /* function exportExcel(){
            if( confirm('您确定要导出吗？') ){
                var fyXqCode = $("#fyXq").val();
                var fyXqName = $('#fyXq option:selected').text();
//	 		alert(fyXqCode);
                if(fyXqCode=="" || fyXqCode==null){
                    $("#fyXqName").val("");
                }else{
//	 			alert(fyXqCode);
                    $("#fyXqName").val(fyXqName);
                }
                $("#submitForm").attr("action", "/xngzf/archives/exportExcelFangyuan.action").submit();
            }
        }*/

        /** 删除 **/
        function del(fyID){
            // 非空判断
            if(fyID == '') return;
            if(confirm("您确定要删除吗？")){
                $("#submitForm").attr("action", "DeleteOrderInfoaction.action?order_number=" + fyID).submit();
            }
        }

        /** 批量删除 **/
        function batchDel(){
            if($("input[name='IDCheck']:checked").size()<=0){
                art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'至少选择一条', ok:true,});
                return;
            }
            // 1）取出用户选中的checkbox放入字符串传给后台,form提交
            var allIDCheck = "";
            $("input[name='IDCheck']:checked").each(function(index, domEle){
                bjText = $(domEle).parent("td").parent("tr").last().children("td").eq(3).prev().text();
                allIDCheck += bjText + ",";
            });
//
            // 截掉最后一个","
            if(allIDCheck.length>0) {
                allIDCheck = allIDCheck.substring(0, allIDCheck.length-1);
                // 赋给隐藏域
                $("#allIDCheck").val(allIDCheck);
                if(confirm("您确定要批量删除这些记录吗？")){
                    // 提交form
                    $("#submitForm").attr("action", "DeleteManyOrderInfoaction.action?order_number="+allIDCheck).submit();
                }
            }
        }

        /** 输入页跳转 **/
        function jumpInputPage(totalPage){
            // 如果“跳转页数”不为空
            if($("#jumpNumTxt").val() != ''){
                var pageNum = parseInt($("#jumpNumTxt").val());
                // 如果跳转页数在不合理范围内，则置为1
                if(pageNum<1 | pageNum>totalPage){
                    art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'请输入合适的页数，\n自动为您跳到首页', ok:true,});
                    pageNum = 1;
                }
                $("#submitForm").attr("action", "OrderInfoPagesAction.action?page=" + pageNum).submit();
            }else{
                // “跳转页数”为空
                art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'请输入合适的页数，\n自动为您跳到首页', ok:true,});
                $("#submitForm").attr("action", "OrderInfoPagesAction.action?page=" + 1).submit();
            }
        }
    </script>
    <style>
        .alt td{ background:black !important;}
    </style>
</head>
<body>
<script language="JavaScript">
    function jumpNormalPage(page,a){
        if(page>a){
            page = a;
        }
        window.location.href="OrderInfoPagesAction.action?page="+page;
    }
    function UpdateOrderInfo(paramters) {
        ordernumber = document.getElementById(paramters).innerText
         window.location.href = "SelectOrderInfoaction.action?paramters="+ordernumber;
    }
</script>
<form id="submitForm" name="submitForm" action="" method="post">
    <div id="container">
        <div class="ui_content">
            <div class="ui_text_indent">
                <div id="box_border">
                    <div id="box_top">搜索</div>

                        订单号：&nbsp;&nbsp;<input type="text" id="order_number"  class="ui_input_txt02" />
                    　　电话号码：&nbsp;&nbsp;<input type="text" id="phone" class="ui_input_txt02" />
                         <input type="button" value="查询" class="ui_input_btn01" onclick="search()"/>
                </div>
                    <div id="box_bottom">
                        <%--<input type="button" value="查询" class="ui_input_btn01" onclick="search();" />--%>
                        <%--<input type="button" value="新增" class="ui_input_btn01" id="addBtn"/>--%>
                        <input type="button" value="删除" class="ui_input_btn01" onclick="batchDel();" />
                        <%--<input type="button" value="导入" class="ui_input_btn01" id="importBtn" />--%>
                        <input type="button" value="导出" class="ui_input_btn01" onclick="exportExcel();" />
                    </div>
                </div>
            </div>
        </div>
        <div class="ui_content">
            <div class="ui_tb">
                <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                    <tr>
                        <th width="30"><input type="checkbox" id="all" onclick="selectOrClearAllCheckbox(this);" />
                        </th>
                        <th>序号</th>
                        <!--<th>房源</th>-->
                        <th>订单号</th>
                        <th>客户电话</th>
                        <th>状态</th>
                        <th>操作</th>
                    </tr>
                    <%--表格--%>
                    <%
                        int page_num = Integer.parseInt(request.getSession().getAttribute("page").toString());
                        List<Order_Info> list = (List<Order_Info>) request.getSession().getAttribute("OrderInfo");
                        int i = (page_num-1)*9;
                        for(int j = i; j<(i+9);j++){
                            if(j>=list.size()){
                                break;
                            }
                    %>
                    <tr>
                        <td><input type="checkbox" name="IDCheck" value="14458579642011" class="acb" /></td>
                        <td><%=j+1%></td>
                        <td id="<%=j%>"><%=list.get(j).getOrder_number()%></td>
                        <td><%=list.get(j).getPhone()%></td>
                        <td><%=list.get(j).getStatus()%></td>
                        <td>
                            <a href="SelectOrderDetailAction2.action?order_number=<%=list.get(j).getOrder_number()%>">详情</a>
                            <a href="javascript:UpdateOrderInfo(<%=j%>)">编辑</a>
                            <a href="javascript:del(<%=list.get(j).getOrder_number()%>);">删除</a>
                        </td>
                    </tr>
                    <%
                        }
                    %>

                    <%--表格底--%>
                </table>
            </div>
            <%
                int a = list.size()/9;
                if(list.size()%9>0){
                    a+=1;
                }
            %>
            <div class="ui_tb_h30">
                <div class="ui_flt" style="height: 30px; line-height: 30px;">
                    共有
                    <span class="ui_txt_bold04"><%=list.size()%></span>
                    条记录，当前第
                    <span class="ui_txt_bold04">
                        <%=page_num%>
						/
						<%=a%></span>
                    页
                </div>
                <div class="ui_frt">
                    <!--    如果是第一页，则只显示下一页、尾页 -->

                    <input type="button" value="首页" class="ui_input_btn01"
                            onclick="jumpNormalPage(1)"/>
                    <input type="button" value="上一页" class="ui_input_btn01"
                            onclick="jumpNormalPage(<%=page_num-1%>,<%=a%>)"/>
                    <input type="button" value="下一页" class="ui_input_btn01"
                           onclick="jumpNormalPage(<%=page_num+1%>,<%=a%>)" />
                    <input type="button" value="尾页" class="ui_input_btn01"
                           onclick="jumpNormalPage(<%=a%>);" />



                    <!--     如果是最后一页，则只显示首页、上一页 -->

                    转到第<input type="text" id="jumpNumTxt" class="ui_input_txt01" />页
                    <input type="button" class="ui_input_btn01" value="跳转" onclick="jumpInputPage(<%=a%>);" />
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>
