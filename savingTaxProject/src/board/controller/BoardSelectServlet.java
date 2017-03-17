package board.controller;

import java.io.IOException;

import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.member.service.BoardService;
import board.member.vo.Board;

/**
 * Servlet implementation class BoardSelectServlet
 */
@WebServlet("/selecttitle")
public class BoardSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardSelectServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");

		String title = request.getParameter("searchtitle");
		List<Board> blist = new BoardService().selectTitle(title);
		RequestDispatcher view = null;
		if (blist != null) {
			view = request.getRequestDispatcher("views/board/customerServiceBoard.jsp");
			request.setAttribute("blist", blist);
			view.forward(request, response);
		} else {
			view = request.getRequestDispatcher("views/board/boardError.jsp");
			request.setAttribute("message", "검색 정보 조회 실패");
			view.forward(request, response);

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
