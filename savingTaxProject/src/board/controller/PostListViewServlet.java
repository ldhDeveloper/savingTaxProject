package board.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;

/**
 * Servlet implementation class PostListViewServlet
 */
@WebServlet("/listview")
public class PostListViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    //   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostListViewServlet() {
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
		int currentPage = 1;
		int limit = 10;
		if(request.getParameter("page")!=null){
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		BoardService bService = new BoardService();
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		int listCount = bService.getListCount(board_no);
		List<Board> blist = bService.selectAll();
		RequestDispatcher view = null;
		if(blist != null){
			view = request.getRequestDispatcher("");
			request.setAttribute("blist", blist);
			view.forward(request, response);
		}else{
			view = request.getRequestDispatcher("views/board/boardError.jsp");
			request.setAttribute("message", "게시판 정보 조회 실패");
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
