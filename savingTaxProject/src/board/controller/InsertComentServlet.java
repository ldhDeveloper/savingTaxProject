package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.PostService;
import board.model.vo.Post;

/**
 * Servlet implementation class InsertComentServlet
 */
@WebServlet("/insertcomment")
public class InsertComentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertComentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int currentPage =Integer.parseInt(request.getParameter("page"));
		int pNo = Integer.parseInt(request.getParameter("pNo"));
		String postContents = request.getParameter("postContents");
		int postRefNo = Integer.parseInt(request.getParameter("postRefNo"));
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		Post p = new Post();
		p.setpNo(pNo);
		p.setPostRefNo(postRefNo);
		p.setPostContents(postContents);
		p.setBoardNo(boardNo);
		int result = new PostService().insertComment(p);
		if (result > 0){
			response.sendRedirect("/jsmi/postdetail?boardNo="+boardNo+"&postNo="+postRefNo+"&page="+currentPage);
		}else{
			RequestDispatcher view = request.getRequestDispatcher("/views/main1/CSBoard/board?boardError.jsp");
			request.setAttribute("message", "댓글 작성 실패");
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
