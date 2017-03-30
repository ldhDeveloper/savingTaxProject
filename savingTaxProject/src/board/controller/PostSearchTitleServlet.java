package board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.model.service.PostService;
import board.model.vo.Post;

/**
 * Servlet implementation class PostSearchTitleServlet
 */
@WebServlet("/psearch")
public class PostSearchTitleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostSearchTitleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("세금소식 오니?");
		
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		int currentPage = 1;
		int limit = 10;
		
		if(request.getParameter("page") != null){
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		
		int startPage = ((int) ((double) currentPage / limit + 0.9) - 1) * limit + 1;
		
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		PostService pService = new PostService();
		
		int listCount = pService.getListCount(boardNo);
		
		int maxPage = (int) ((double) listCount / limit + 0.9);
		
		int endPage = startPage + limit - 1;
		
		if (maxPage < endPage){
			endPage = maxPage;
		}
					
		String ptitle = request.getParameter("searchTitle");

		List<Post> plist = pService.selectTitle(boardNo, ptitle);
		
		RequestDispatcher view = null;
		
		if(plist != null){
			switch(boardNo){
			case 2: view = request.getRequestDispatcher("views/main1/CSBoard/taxNews/taxNews.jsp"); break;
			case 3:	view = request.getRequestDispatcher("views/main1/CSBoard/taxTip/taxTip.jsp"); break;
			case 4: view = request.getRequestDispatcher("views/main1/CSBoard/QnA/QnA.jsp"); break;
			}
			
			request.setAttribute("boardNo", boardNo);
			request.setAttribute("plist", plist);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("listCount", listCount);
			request.setAttribute("endPage", endPage);
			request.setAttribute("maxPage", maxPage);
			view.forward(request, response);
		}
		
		else {
			view = request.getRequestDispatcher("views/main1/CSBoard/board/boardError.jsp");
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
