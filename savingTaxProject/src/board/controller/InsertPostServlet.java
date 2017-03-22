package board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;

/**
 * Servlet implementation class InsertPostServlet
 */
@WebServlet("/insertpost")
public class InsertPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       //
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String post_title = request.getParameter("post_title");
		String post_contents = request.getParameter("post_contents");
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		int up_post_no = Integer.parseInt(request.getParameter("up_post_no"));
		int writer_no = Integer.parseInt(request.getParameter("writer_no"));
		Board b = new Board();
		b.setPost_title(post_title);
		b.setPost_contents(post_contents);
		b.setBoard_no(board_no);
		b.setUp_post_no(up_post_no);
		b.setWriter_no(writer_no);
		int result = new BoardService().InsertPost(b);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
