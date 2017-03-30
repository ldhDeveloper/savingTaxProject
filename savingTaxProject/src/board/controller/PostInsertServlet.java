package board.controller;

import java.io.IOException;

import java.io.*;
import java.sql.Date;
import java.text.SimpleDateFormat;
import org.apache.tomcat.util.http.fileupload.servlet.*;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.PostService;
import board.model.vo.Post;

/**
 * Servlet implementation class PostInsertServlet
 */
@WebServlet("/pinsert")
public class PostInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)){
		
		
		int maxSize = 1024 * 1024 * 10;
		
		String root = request.getSession().getServletContext().getRealPath("/");
		
		String savePath  = root + "board_uploadFiles/";
		
		
		MultipartRequest mrequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new DefaultFileRenamePolicy()); 
		String renameFileName = "";
		String fname = mrequest.getFilesystemName("fname");
		if(fname !=null){
		long current = System.currentTimeMillis();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		renameFileName = sdf.format(new Date(current)) + "." +fname.substring(
				fname.lastIndexOf(".") +1
				);
		File originalFile = new File(savePath + fname);
		File renameFile = new File(savePath + renameFileName);
		
		if(!originalFile.renameTo(renameFile)){
			FileInputStream originalRead = 
					new FileInputStream(originalFile);
			FileOutputStream renameCopy = 
					new FileOutputStream(renameFile);
			
			byte[] readText = new byte[1024];
			int readResult = 0;
			
			while((readResult = originalRead.read(readText, 0, readText.length)) != -1){
				renameCopy.write(readText, 0, readResult);
				renameCopy.flush();
			}			
			originalRead.close();
			renameCopy.close();
			originalFile.delete();
		}
		}
		int page = Integer.parseInt(mrequest.getParameter("page"));
		String postName = mrequest.getParameter("postname");
		int pNo = Integer.parseInt(mrequest.getParameter("pno"));
		String postContents = mrequest.getParameter("contents");
		int boardNo = Integer.parseInt(mrequest.getParameter("boardNo"));
		Post p = new Post();
		p.setPostName(postName);
		p.setpNo(pNo);
		p.setPostContents(postContents);
		p.setBoardNo(boardNo);
		if(fname != null){
		p.setfName(fname);
		p.setRefName(renameFileName);
		}
		System.out.println(p);
		int result = new PostService().insertPost(p);
		if(result > 0){
			response.sendRedirect("/jsmi/listview?page="+page+"&boardNo=1"+p.getBoardNo());
		}
		
		else {
			RequestDispatcher view = request.getRequestDispatcher("views/main1/CSBoard/board/boardError.jsp");
			request.setAttribute("message", "게시판 오류");
			view.forward(request, response);
		}
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
