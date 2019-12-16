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
 * Servlet implementation class dangkicontroller
 */
@WebServlet("/dangkicontroller")
public class dangkicontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkicontroller() {
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
		String HotenKH = request.getParameter("HotenKH");
		String tendn = request.getParameter("TenDN");
		String mk1 = request.getParameter("Matkhau");
		String email = request.getParameter("Email");
		String diachi = request.getParameter("Diachi");
		String sdt = request.getParameter("Dienthoai");
		
		KhachHangBo kh= new KhachHangBo();
		loaibo loai=new loaibo();
		try {
			request.setAttribute("dsloai", loai.getloai());
			}catch (Exception e) {
				// TODO: handle exception
			}
		    kh.ThemKH( HotenKH, diachi, sdt, email, tendn, mk1);
		
			RequestDispatcher rd= request.getRequestDispatcher("dangkitemples.jsp");
			rd.forward(request, response);//chay ve dang nhap
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
