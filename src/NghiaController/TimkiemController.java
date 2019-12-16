package NghiaController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import NghiaBo.KhoaBo;
import NghiaBo.SinhVienBo;

/**
 * Servlet implementation class TimkiemController
 */
@WebServlet("/TimkiemController")
public class TimkiemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimkiemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		KhoaBo khoa= new KhoaBo();
		SinhVienBo sv= new SinhVienBo();
		String tim = request.getParameter("tim");
		if(tim!=null) {
			try {
				request.setAttribute("dskhoa", khoa.getkhoa());
				request.setAttribute("dssv", sv.getSV());
				request.setAttribute("dssv", sv.gettimkiem(tim));
				RequestDispatcher rd= request.getRequestDispatcher("HT.jsp");
				rd.forward(request, response);
				
				
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}else {
		try {
			request.setAttribute("dskhoa", khoa.getkhoa());
			request.setAttribute("dssv", sv.getSV());
			RequestDispatcher rd= request.getRequestDispatcher("HT.jsp");
			rd.forward(request, response);
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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
