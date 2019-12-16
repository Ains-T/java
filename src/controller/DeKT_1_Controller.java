package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.DeKT_1_Bo;

/**
 * Servlet implementation class DeKT_1_Controller
 */
@WebServlet("/DeKT_1_Controller")
public class DeKT_1_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeKT_1_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }
    DeKT_1_Bo hang= new DeKT_1_Bo();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String tim = request.getParameter("tim");
		if(tim!=null) {
			try {
				request.setAttribute("dshang", hang.gettimkiem(tim));
				RequestDispatcher rd= request.getRequestDispatcher("DeKT_1.jsp");
				rd.forward(request, response);
				
			}catch (Exception e) {
				
				// TODO: handle exception
				e.printStackTrace();
			}

			
		}else {
		
			try {
			request.setAttribute("dshang", hang.gethang());
			RequestDispatcher rd= request.getRequestDispatcher("DeKT_1.jsp");
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
