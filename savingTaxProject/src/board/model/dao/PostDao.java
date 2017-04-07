package board.model.dao;

import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static common.JDBCTemplate.*;
import board.model.vo.Post;

public class PostDao {
	private Properties prop = new Properties();

	public PostDao() {
		try {
			prop.load(new InputStreamReader(this.getClass().getResourceAsStream("post.properties")));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	public List<Post> selectList(Connection con, int limit, int boardNo, int currentPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Post> plist = null;
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		
		String query = "select rnum, post_no, post_name, post_date, post_contents, board_no, pno, read_count, fname, refname, id from " +
				"(select  rownum rnum, p.post_no post_no, post_name, " +
				 "post_date, post_contents, board_no, p.pno pno, " +
				 "post_ref_no, read_count, fname, refname, id from post p, attachment a, party m "+
				 "where p.post_no = a.post_no(+) and p.pno = m.pno(+) and  board_no = ? and post_ref_no = 0 order by p.post_no desc ) where rnum >= ? and rnum <= ?";
		try {
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, boardNo);
		System.out.println("b"+boardNo);
		pstmt.setInt(2, startRow);
		System.out.println("s"+startRow);
		pstmt.setInt(3, endRow);
		System.out.println("e"+endRow);
		rset = pstmt.executeQuery();
		if(rset != null){
			plist = new ArrayList<Post>();
			while(rset.next()){
			Post p = new Post();
			p.setPostOrder(rset.getInt("rnum"));
			p.setPostNo(rset.getInt("post_no"));
			p.setPostContents(rset.getString("post_contents"));
			p.setPostName(rset.getString("post_name"));
			p.setPostDate(rset.getDate("post_date"));
			p.setpNo(rset.getInt("pno"));
			p.setBoardNo(rset.getInt("board_no"));
			p.setfName(rset.getString("fname"));
			p.setRefName(rset.getString("refname"));
			p.setpId(rset.getString("id"));
			plist.add(p);
			}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return plist;
	}

	public int deletePost(Connection con, int post_no, int post_no2) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Post> selectPost(Connection con, int post_no, int post_no2) {
		// TODO Auto-generated method stub
		return null;
	}
	public int updatePost(Connection con, Post p) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "update post set post_name = ?, post_contents = ? where post_no = ?";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getPostName());
			pstmt.setString(2, p.getPostContents());
			pstmt.setInt(3, p.getPostNo());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		return result;
	}
	public int insertPost(Connection con, Post p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "insert into post values(seq_post.nextval, ?, sysdate, ?, ?, ?, 0, 0)";
		String uploadQuery = "insert into attachment values(seq_attachment.nextval, ?, ?, ?)";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getPostName());
			pstmt.setString(2, p.getPostContents());
			pstmt.setInt(3, p.getBoardNo());
			pstmt.setInt(4, p.getpNo());
			result = pstmt.executeUpdate();	
			if(p.getfName() != null){
			pstmt = con.prepareStatement(uploadQuery);
			pstmt.setString(1, p.getfName());
			pstmt.setString(2, p.getRefName());
			pstmt.setInt(3, p.getPostNo());
			result = pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result; 
	}

	public int getListCount(Connection con, int boardNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int listCount = 0;
		String query = prop.getProperty("getListCount");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, boardNo);
			rset = pstmt.executeQuery();
			if(rset.next())
				listCount = rset.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listCount;
	}
	public int insertComment(Connection con, Post p) {
		PreparedStatement pstmt = null;
		String query = "insert into post values (seq_post.nextval, null, sysdate, ?, ?, ?, ?, 0)";
		int result = 0;
		try {
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, p.getPostContents());
		pstmt.setInt(2, p.getBoardNo());
		pstmt.setInt(3, p.getpNo());
		pstmt.setInt(4, p.getPostRefNo());
		result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
	
	public List<Post> selectTitle(Connection con, int boardNo, String ptitle) {
		List<Post> plist = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from post where board_no = ? and post_name like ?";

		try {
			pstmt = con.prepareStatement(query);

			pstmt.setInt(1, boardNo);
			pstmt.setString(2, "%" + ptitle + "%");

			rset = pstmt.executeQuery();

			System.out.println("세금소식 dao : " + rset);

			if (rset != null) {
				plist = new ArrayList<Post>();
			}

			while (rset.next()) {
				Post p = new Post();

				p.setPostNo(rset.getInt("post_no"));
				p.setPostName(rset.getString("post_name"));
				p.setPostDate(rset.getDate("post_date"));
				p.setPostContents(rset.getString("post_contents"));
				p.setBoardNo(rset.getInt("board_no"));
				p.setpNo(rset.getInt("pno"));
				p.setPostRefNo(rset.getInt("post_ref_no"));
				p.setReadCount(rset.getInt("read_count"));

				plist.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return plist;
	}
	
	public Post selectPostNo(Connection con, int postNo) {
		Post p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select p.post_no, "
				+ "post_name, post_date, post_contents, "
				+ "board_no, p.pno, post_ref_no, read_count, fname, id, "
				+ "refname from post p, attachment a, party m  where p.post_no = a.post_no(+) and "
				+ " p.pno = m.pno(+) and p.post_no = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, postNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Post();
				
				p.setPostNo(rset.getInt("post_no"));
				p.setPostName(rset.getString("post_name"));
				p.setPostDate(rset.getDate("post_date"));
				p.setPostContents(rset.getString("post_contents"));
				p.setBoardNo(rset.getInt("board_no"));
				p.setpNo(rset.getInt("pno"));
				p.setPostRefNo(rset.getInt("post_ref_no"));
				p.setReadCount(rset.getInt("read_count"));
				p.setfName(rset.getString("fname"));
				p.setRefName(rset.getString("refname"));
				p.setpId(rset.getString("id"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return p;
	}


	public List<Post> selectCommentList(Connection con, int postNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Post> commentList = null;
		String query = "select rnum, post_contents, id, post_date from (select "
				+ " rownum rnum, post_contents, id, post_date "
				+ "	from (select post_contents, id, post_date from post p, Party m "
				+ "where p.pno = m.pno and post_ref_no = ?)) ";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, postNo);
			rset = pstmt.executeQuery();
			if(rset != null){
				commentList = new ArrayList<Post>();
				while(rset.next()){
				Post p = new Post();
				p.setpId(rset.getString("id"));
				p.setPostDate(rset.getDate("post_date"));
				p.setPostContents(rset.getString("post_contents"));
				commentList.add(p);
				}
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return commentList;
	}

}
