package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.Post;

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
		String postName = request.getParameter("postName");
		String postContents = request.getParameter("postContents");
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int pNo = Integer.parseInt(request.getParameter("pNo"));
		Post p = new Post();
		p.setPostName(postName);
		p.setPostContents(postContents);
		p.setBoardNo(boardNo);
		p.setpNo(pNo);
		
		
		int result = new BoardService().InsertPost(p);
		if(result >0 ){
			response.sendRedirect("/jsmi/views/board/boardListView.jsp?page=1&boardNo=1");
		}else{
			RequestDispatcher view = request.getRequestDispatcher("views/board/boardError.jsp");
			request.setAttribute("message", "게시물 작성 실패");
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
