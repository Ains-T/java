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

import bo.GioHangBo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class muacontroller
 */
@WebServlet("/muacontroller")
public class muacontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public muacontroller() {
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
		out.print("<html><body>Xin chao Servlet</body></html>");
		String ms = request.getParameter("ms");
		String ts = request.getParameter("ts");
		String anh = request.getParameter("anh");
		String tg = request.getParameter("tg");
		String giatam = request.getParameter("gia");
		loaibo loai=new loaibo();
		if(giatam==null) {
			try {
				request.setAttribute("dsloai", loai.getloai());
				}catch (Exception e) {
					// TODO: handle exception
				}
			RequestDispatcher rd= request.getRequestDispatcher("t2temples.jsp");
			rd.forward(request, response);
		}
		if (giatam != null) {
			long gia = Long.parseLong(giatam);
			GioHangBo gh = null;
			HttpSession session= request.getSession();
			//kiem tra xem da tao session
			if (session.getAttribute("gh") == null)
			{
				//neu chua thi tao 1 session de luu giohangbo
				gh = new GioHangBo();
			session.setAttribute("gh", gh);
			}
			//b1 gan session vao bien gh
			gh = (GioHangBo) session.getAttribute("gh");

			//b2 thay doi bien gh
			 gh.Them(ms, ts, tg, gia,1,anh);
			//b3 luu bien vao lai session
			session.setAttribute("gh", gh);
		
			//hien thi gio hang
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			try {
			request.setAttribute("dsloai", loai.getloai());
			}catch (Exception e) {
				// TODO: handle exception
			}
			RequestDispatcher rd= request.getRequestDispatcher("t2temples.jsp");
			rd.forward(request, response);
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
