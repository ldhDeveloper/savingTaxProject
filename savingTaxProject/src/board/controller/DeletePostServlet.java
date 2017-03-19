package board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.member.service.BoardService;
import board.member.vo.Board;

/**
 * Servlet implementation class DeletePostServlet
 */
@WebServlet("/deletepost")
public class DeletePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		int post_no = Integer.parseInt(request.getParameter("postno"));
		int result = new BoardService().deletePost(post_no);
		List<Board> blist = new BoardService().selectAll();
		RequestDispatcher view = null;
		if(result >0){
		view = request.getRequestDispatcher("views/board/customerServiceBoard.jsp");
		request.setAttribute("blist", blist);
		view.forward(request, response);
		}else{
		view = request.getRequestDispatcher("views/board/BoardError.jsp");
		request.setAttribute("message", "게시글 삭제 시도 실패");
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
