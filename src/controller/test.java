package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//tao ra doi tuong out
	PrintWriter out=response.getWriter();
	out.print("<html><body>Xin chao Servlet</body></html>");
	// da co san request va reponse
	//tao ra 1 doi tuong session
	HttpSession session= request.getSession();
	session.setAttribute("s", (long)4*4);
	// dieu huong ve trang vd.jsp
	// tao ra bien de gui ve jsp
	request.setAttribute("ht", "Le Tan Nghia");
	request.setAttribute("tong", (long)10*4);
	String[] ds= {"haha","huhu","hue","bun bo"};
	request.setAttribute("dsht", ds);
	// dieu huong ve trang vs.jsp va  truyen 3 bien ht tong va ds
	RequestDispatcher rd= request.getRequestDispatcher("vd.jsp");
	rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
