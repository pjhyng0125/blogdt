package blogdt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class SatisDAO {
private static SatisDAO instance=new SatisDAO();
	
	public static SatisDAO getInstance() {
		return instance;
	}
	
	private SatisDAO() {}
	
	private Connection getConnection() throws Exception{
		Context initCtx=new InitialContext();
		Context envCtx=(Context) initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource)envCtx.lookup("jdbc/blogdt");
		return ds.getConnection();
	}
	
	//박진형: 통계 화면 카테고리 목록 리스트 반환
	public List<String> getMajorCategory(){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<String> list=null;
		
		return list;
	}
	
	//박진형: 통계 화면 카테고리 수치 반환
	public List<Integer> getMajorFigure(){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<Integer> list=null;
		
		return list;
	}
}
