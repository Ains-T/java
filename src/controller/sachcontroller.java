package controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class sachcontroller
 */
@WebServlet("/sachcontroller")
public class sachcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sachcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		sachbo sbo= new sachbo();
		loaibo loai=new loaibo();
		
		String ml = request.getParameter("ml");
		String tim = request.getParameter("txttim");
		
		
		if(ml==null) 
		{  
//			if(tim!=null){
//			try {
//				request.setCharacterEncoding("utf-8");
//				response.setCharacterEncoding("utf-8");
//				//tao ra 1 bien request de chuyen sach ve tran htsach.jsp
//				request.setAttribute("dssach", sbo.getsachtimkiem(tim));
//				request.setAttribute("dsloai", loai.getloai());
//				RequestDispatcher rd= request.getRequestDispatcher("t1temples.jsp");
//				rd.forward(request, response);
//			}catch (Exception e) {
//			// TODO: handle exception
//			}
//		}else {
			try {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				//tao ra 1 bien request de chuyen sach ve tran htsach.jsp
				request.setAttribute("dssach", sbo.getsach());
				request.setAttribute("dsloai", loai.getloai());
				RequestDispatcher rd= request.getRequestDispatcher("t1temples.jsp");
				rd.forward(request, response);
			}catch (Exception e) {
			// TODO: handle exception
			}
		//}
		}
		else {
			try {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				//tao ra 1 bien request de chuyen sach ve tran htsach.jsp
				request.setAttribute("dssach", sbo.getsachtheoloai(ml));
				request.setAttribute("dsloai", loai.getloai());
				RequestDispatcher rd= request.getRequestDispatcher("t1temples.jsp");
				rd.forward(request, response);
			}catch (Exception e) {
			// TODO: handle exception
			}
			
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
