package blogdt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import blogdt.vo.BoardVO;

public class BoardDAO {
	private static BoardDAO instance = new BoardDAO();

	public static BoardDAO getInstance() {
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/blogdt");
		return ds.getConnection();
	}

	/** 게시글 추가
	 * @param board : 게시글 1개 
	 * @throws Exception
	 */
	public void insertBoard(BoardVO board) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into board (id,title,btype,img,content) value(?,?,?,?,?)");
			pstmt.setString(1, board.getId());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getBtype());
			pstmt.setString(4, board.getImg());
			pstmt.setString(5, board.getContent());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch (SQLException ex) { }
			if (conn != null) try { conn.close(); } catch (SQLException ex) { }
		}
	}
	
	
	/** 한개의 게시글만 가져오는 메소드
	 * @param num : auto-increment된 게시물 번호.
	 * @return : 게시글 1개
	 * @throws Exception
	 */
	public BoardVO selectBoard(int num) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO board = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from board where num=?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				board = new BoardVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6)
						);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!= null) try { rs.close(); }catch(SQLException ex) { }
			if (pstmt != null) try { pstmt.close(); }catch (SQLException ex) { }
			if (conn != null) try { conn.close(); } catch (SQLException ex) { }
		}
		return board;
	}
	
	
	/** 전체 게시글 가져오는 메소드
	 * @return : 게시글 리스트
	 * @throws Exception
	 */
	public List<BoardVO> selectBoardArr() throws Exception {
		
		List<BoardVO> boards = new ArrayList<BoardVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from board");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				boards.add(new BoardVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6))
						);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!= null) try { rs.close(); }catch(SQLException ex) { System.err.println(ex.getMessage());}
			if (pstmt != null) try { pstmt.close(); }catch (SQLException ex) { System.err.println(ex.getMessage()); }
			if (conn != null) try { conn.close(); } catch (SQLException ex) { System.err.println(ex.getMessage()); }
		}
		return boards;
	}
	
	/** 게시글 수정
	 * @param board : 수정이 필요한 보드 객체.
	 * @throws Exception
	 */
	public void updateBoard(BoardVO board) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("update board set title=?, btype=?, img=?, content=? where num=?;");
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getBtype());
			pstmt.setString(3, board.getImg());
			pstmt.setString(4, board.getContent());
			pstmt.setInt(5, board.getNum());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch (SQLException ex) { }
			if (conn != null) try { conn.close(); } catch (SQLException ex) { }
		}
	}
	
	/** 게시글 삭제
	 * @param num : auto-increment된 게시글 번호.
	 * @throws Exception
	 */
	public void deleteBoard(int num) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("delete from board where num=?;");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch (SQLException ex) { }
			if (conn != null) try { conn.close(); } catch (SQLException ex) { }
		}
	}
}
