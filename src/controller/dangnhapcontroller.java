package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.KhachHangBo;
import bo.loaibo;

/**
 * Servlet implementation class dangnhapcontroller
 */
@WebServlet("/dangnhapcontroller")
public class dangnhapcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		loaibo loai=new loaibo();
		// lay ve txtun,txtpass,kt
		String un = request.getParameter("TenDN");
		String pass = request.getParameter("Matkhau");
		String kt = request.getParameter("kt");
		KhachHangBo bo= new KhachHangBo();
		
		
		if(un==null) { //neu chay lan dau
			request.setAttribute("dsloai", loai.getloai());
			RequestDispatcher rd= request.getRequestDispatcher("dangnhaptemples.jsp");
			rd.forward(request, response);//chay ve dang nhap
		}
		else
			if(bo.KtTrungMa(un, pass))
			// neu da nhap un thi chuyen qua trang t1
		  {  
			HttpSession session= request.getSession();
			session.setAttribute("un",un);
			RequestDispatcher rd= request.getRequestDispatcher("sachcontroller");
			rd.forward(request, response);
		  }
			else {
				request.setAttribute("dsloai", loai.getloai());	
				request.setAttribute("helo","1");
				RequestDispatcher rd= request.getRequestDispatcher("dangnhaptemples.jsp");
				rd.forward(request, response);//chay ve dang nhap
			  
			     }
		}catch (Exception e) {
			// TODO: handle exception
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
