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
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/blist")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		//페이지 수 처리용 변수 선언
		int currentPage = 1;
		//한 페이지에 보여질 목록 갯수
		int limit = 10;
		
		//전달받은 현재 페이지 추출
		if(request.getParameter("page") != null)
			currentPage = Integer.parseInt(
					request.getParameter("page"));
		
		//전체 목록 갯수와 목록 전체를 리턴받음
		BoardService bService = new BoardService();
		
		int listCount = bService.getListCount();
		List<Board> blist = bService.selectList(currentPage, limit);
		
		//총 페이지수 계산
		//예를 들면, 목록수가 123개 이면 페이지 수는 13 페이지임.
		//짜투리 목록이 최소 1개일 때, 1page 로 처리하기 위해
		// 0.9를 더하기 함
		int maxPage = (int)((double)(listCount / limit + 0.9));
		
		//현재 페이지에 보여줄 시작 페이지 수 (10개씩 보여지게 할 경우)
		//아래쪽에 페이지 수가 10개씩 보여지게 한다면
		//1, 11, 21, 31, .....
		int startPage = (((int)((double)currentPage / limit + 0.9)) - 1)
				* limit + 1;
		//목록 아래쪽에 보여질 마지막 페이지 수 (10, 20, 30, ....)
		int endPage = startPage + limit - 1;
		if(maxPage < endPage)
			endPage = maxPage;		
		
		RequestDispatcher view = null;
		if(blist != null){
			view = request.getRequestDispatcher(
					"views/board/boardListView.jsp");
			
			request.setAttribute("blist", blist);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("maxPage", maxPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("listCount", listCount);
			
			view.forward(request, response);
		}else{
			view = request.getRequestDispatcher(
					"views/board/boardError.jsp");
			request.setAttribute("message", "게시글 전체 조회 실패");
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
