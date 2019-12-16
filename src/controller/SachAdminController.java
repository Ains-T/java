package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.jasper.tagplugins.jstl.core.Out;

import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class SachAdminController
 */
@WebServlet("/SachAdminController")
public class SachAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SachAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		sachbo bo= new sachbo();
		loaibo lbo= new loaibo();
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		 DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		 ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		 String dirUrl1 = request.getServletContext().getRealPath("") +  java.io.File.separator + "image_sach";
		 try {
			
				
		
		try {
			
			List<FileItem> fileItems = upload.parseRequest(request);//Lấy về các đối tượng gửi lên
			//duyệt qua các đối tượng gửi lên từ client gồm file và các control
			for (FileItem fileItem : fileItems) {
			 			 if (!fileItem.isFormField()) {//Nếu ko phải các control=>upfile lên
							// xử lý file
							String nameimg = fileItem.getName();
							if (!nameimg.equals("")) {
						           //Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
								String dirUrl = request.getServletContext().getRealPath("") +  File.separator + "image_sach";
								File dir = new File(dirUrl);
								if (!dir.exists()) {//nếu ko có thư mục thì tạo ra
									dir.mkdir();
								}
							           String fileImg = dirUrl + File.separator + nameimg;
							           request.setAttribute("txtanh",nameimg);
							           File file = new File(fileImg);//tạo file
							            try {
							               fileItem.write(file);//lưu file
							              
							              System.out.println("UPLOAD THÀNH CÔNG...!");
							              System.out.println("Đường dẫn lưu file là: "+dirUrl);
							 } catch (Exception e) {
							    e.printStackTrace();
							}
						}
					 }
						else//Neu la control
						{    
							String tentk=fileItem.getFieldName();
							 if(tentk.equals("txtmasach"))
								 request.setAttribute("txtmasach",fileItem.getString());
							 if(tentk.equals("txttensach"))
								 request.setAttribute("txttensach",fileItem.getString());
							 if(tentk.equals("txttg"))
								 request.setAttribute("txttg",fileItem.getString());
							 if(tentk.equals("txtgia"))
								 request.setAttribute("txtgia",fileItem.getString());
							 if(tentk.equals("txtsl"))
								 request.setAttribute("txtsl",fileItem.getString());
							 if(tentk.equals("txtngay"))
								 request.setAttribute("txtngay",fileItem.getString());
							
							 if(tentk.equals("txtst"))
								 request.setAttribute("txtst",fileItem.getString());
							 if(tentk.equals("txtmaloai"))
								 request.setAttribute("txtmaloai",fileItem.getString());
						}
					
			 		}
		
		
           
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		try {
		String ms= (String) request.getAttribute("txtmasach");	
		String ts= (String) request.getAttribute("txttensach");	
		String tg= (String) request.getAttribute("txttg");	
		String gia= (String) request.getAttribute("txtgia");	
		String sl= (String) request.getAttribute("txtsl");	
		String nn= (String) request.getAttribute("txtngay");	
		String anh= (String) request.getAttribute("txtanh");	
		String st= (String) request.getAttribute("txtst");	
		String ml= (String) request.getAttribute("txtmaloai");	
		if(ms!=null) {
		
			long gia1=Long.parseLong(gia);
			int sl1=Integer.parseInt(sl);
			int st1= Integer.parseInt(st);
		    Date nn1= Date.valueOf(nn);
		    int n=bo.Them(ms, ts, tg, "image_sach/"+anh, gia1, nn1, ml, st1, sl1);
	          if(n==0)
			request.setAttribute("ktnhap",0);
		    request.setAttribute("dssach", bo.getsachAdmin());
		    request.setAttribute("dsloai", lbo.getloai());
			RequestDispatcher jc= request.getRequestDispatcher("SachAdmin.jsp");
			jc.forward(request, response);
	     	}
		else {
			  request.setAttribute("dssach", bo.getsachAdmin());
			    request.setAttribute("dsloai", lbo.getloai());
				RequestDispatcher jc= request.getRequestDispatcher("SachAdmin.jsp");
				jc.forward(request, response);
		}
		}catch (Exception e) {
			// TODO: handle exception
		}
		 request.setAttribute("dssach", bo.getsachAdmin());
			request.setAttribute("dsloai", lbo.getloai());
			RequestDispatcher rd= request.getRequestDispatcher("SachAdmin.jsp");
			rd.forward(request, response);

		 } catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
