package board.controller;
import java.util.*;
import board.member.vo.*;
import board.member.service.*;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardListViewServlet
 */
@WebServlet("/listview")
public class BoardListViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("utf-8");
		List<Board> blist = new BoardService().selectAll();
		RequestDispatcher  view = null;
		if(blist != null){
			view = request.getRequestDispatcher("");
			request.setAttribute("blist", blist);
			view.forward(request, response);
		}else{
			view = request.getRequestDispatcher("");
			request.setAttribute("message", "게시판 목록 조회 실패");
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
