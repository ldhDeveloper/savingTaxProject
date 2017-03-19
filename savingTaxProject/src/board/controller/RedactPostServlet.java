package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.member.service.BoardService;
import board.member.vo.Board;

/**
 * Servlet implementation class RedactPostServlet
 */
@WebServlet("/redactpost")
public class RedactPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RedactPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		int post_no = Integer.parseInt(request.getParameter("postno"));
		Board b = new BoardService().showContent(post_no);
		RequestDispatcher view = null;
		if(b !=null){
			view = request.getRequestDispatcher("view/board/redactPost.jsp");
			request.setAttribute("b", b);
			view.forward(request, response);
		}else{
			view = request.getRequestDispatcher("view/board/boardError.jsp");
			request.setAttribute("message", "글수정페이지로 이동 실패");
			view.forward(request, response);
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
