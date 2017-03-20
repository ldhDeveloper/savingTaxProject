package board.controller;
import board.member.vo.*;
import board.member.service.*;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/boardinsert")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertServlet() {
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
		int post_no = Integer.parseInt(request.getParameter("post_no"));
		int board_no =  Integer.parseInt(request.getParameter("board_no"));
		int writer_no = Integer.parseInt(request.getParameter("writer_no"));
		String post_title = request.getParameter("post_title");
		String post_content = request.getParameter("post_content");
		Board b = new Board();
		b.setBoard_no(board_no);
		b.setPost_content(post_content);
		b.setPost_no(post_no);
		b.setPost_title(post_title);
		b.setWriter_no(writer_no);
		int result = new BoardService().insertBoard(b);
		if(result >0){
			response.sendRedirect("/jsmi/listview");
		}
		else{
			RequestDispatcher view = request.getRequestDispatcher("views/board/boardError.jsp");
			request.setAttribute("message", "게시물 상세정보 조회 실패");
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
