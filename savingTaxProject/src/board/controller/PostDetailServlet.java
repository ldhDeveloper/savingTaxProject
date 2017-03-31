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
import board.model.service.PostService;
import board.model.vo.Board;
import board.model.vo.Post;

/**
 * Servlet implementation class PostDetailServlet
 */
@WebServlet("/postdetail")
public class PostDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  //     
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		int currentPage = Integer.parseInt(request.getParameter("page"));
		Post post =  new PostService().selectPostNo(postNo);
		List<Post> commentList = new PostService().selectCommentList(postNo);
		RequestDispatcher view = null;
		
		if(post !=null){
			switch (boardNo) {
			case 1:
				view = request.getRequestDispatcher("views/main1/CSBoard/board/boardDetailView.jsp");
				break;
			case 2:
				view = request.getRequestDispatcher("views/main1/CSBoard/taxNews/taxNewsDetailView.jsp");
				break;
			case 3:
				view = request.getRequestDispatcher("views/main1/CSBoard/taxTip/taxTipDetailView.jsp");
				break;
			case 4:
				view = request.getRequestDispatcher("views/main1/CSBoard/QnA/QnADetailView.jsp");
				break;
			case 5:
				view = request.getRequestDispatcher("views/main1/board/boardListView.jsp");
				break;
			case 6:
				view = request.getRequestDispatcher("views/main1/board/boardListView.jsp");
				break;
			}
			
			request.setAttribute("post", post);
			request.setAttribute("page", currentPage);
			request.setAttribute("commentList", commentList);
			view.forward(request, response);
			
		}else{
			view = request.getRequestDispatcher("views/board/boardError.jsp");
			request.setAttribute("message", "게시물 내용 조회 실패");
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
