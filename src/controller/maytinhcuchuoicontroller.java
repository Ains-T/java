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

/**
 * Servlet implementation class maytinhcuchuoicontroller
 */
@WebServlet("/maytinhcuchuoicontroller")
public class maytinhcuchuoicontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public maytinhcuchuoicontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		// lay ve txtun,txtpass,kt
				String a = request.getParameter("txta");
				String b = request.getParameter("txtb");
				String kq = request.getParameter("txtkq");
				String nut = request.getParameter("but1");
		//chay lan dau
			if((a==null)||(b==null)) {
				RequestDispatcher rd= request.getRequestDispatcher("maytinhcuchuoi.jsp");
			rd.forward(request, response);//chay ve dang nhap
			}
			else // neu a b k trong
			{   Long aa,bb,kqq=(long)0;
				aa=Long.parseLong(a);
				bb=Long.parseLong(b);
				if(nut.equals("+"))
					kqq=aa+bb;
				if(nut.equals("-"))
					kqq=aa-bb;
				request.setAttribute("tong",kqq);
				request.setAttribute("a",a);
				request.setAttribute("b",b);
				RequestDispatcher rd= request.getRequestDispatcher("maytinhcuchuoi.jsp");
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
