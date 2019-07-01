package util;

import org.lxh.smart.SmartUpload;

import javax.servlet.Servlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

public class FileUpLoad {
	private JspFactory jspfactory = null;
	private PageContext pagecontext= null;
	private SmartUpload smart = null;
	private String FILE_NAME;
	private String FILE_ROAD;
	private String FILE_EXT;
	private Servlet servlet;
	public FileUpLoad(Servlet servlet, HttpServletRequest request, HttpServletResponse reponse){
		try{
			this.servlet = servlet;
			jspfactory = JspFactory.getDefaultFactory();
			pagecontext = jspfactory.getPageContext(servlet, request, reponse, "", true, 8912, true);
			this.smart = new SmartUpload();
			smart.initialize(pagecontext);
			smart.upload();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public String getFileName(){
		System.out.println(".........."+FILE_NAME+"."+FILE_EXT);
		return FILE_NAME+"."+FILE_EXT;
	}
	public void SetUpload_NameRoad(String FILE_NAME,String FILE_ROAD){		//设置文件名和存储文件夹
		this.FILE_NAME = FILE_NAME;
		this.FILE_ROAD = FILE_ROAD;
	}
	public boolean Upload_File(){
		boolean flag = false;
		try{

			FILE_EXT = smart.getFiles().getFile(0).getFileExt();
			System.out.println("File_Ext-->"+FILE_EXT);
			smart.getFiles().getFile(0).saveAs(this.servlet.getServletConfig().getServletContext().getRealPath("/")
					+FILE_ROAD+java.io.File.separator+FILE_NAME+"."+FILE_EXT);
			flag = true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	public SmartUpload getSmart(){
		return this.smart;
	}
}
