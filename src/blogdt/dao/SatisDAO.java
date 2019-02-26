package blogdt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
	
	//박진형: 통계 화면 카테고리 수치 반환
	public List<Integer> getMajor() throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<Integer> list=null;
		conn=getConnection();
		String sql="select count(if(major='소프트웨어학',major,null)) as soft, " + 
				"count(if(major='컴퓨터공학',major,null)) as engine, " + 
				"count(if(major='정보통신학',major,null)) as infor, " + 
				"count(if(major='경영학',major,null)) as busin " + 
				"from member";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			list=new ArrayList<>();
			list.add(rs.getInt("soft"));
			list.add(rs.getInt("engine"));
			list.add(rs.getInt("infor"));
			list.add(rs.getInt("busin"));
		}
		//결과가 없으면 null 반환=> 예외처리 필수
		
		return list;
	}
	
	//박진형: 통계 화면 나이 수치 반환
		public List<Integer> getAge() throws Exception{
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			List<Integer> list=null;
			conn=getConnection();
			String sql="select count(if(year(birth)='1995',birth,null)) as '25', " + 
					"count(if(year(birth)='1994',birth,null)) as '26', " + 
					"count(if(year(birth)='1993',birth,null)) as '27', " + 
					"count(if(year(birth)='1992',birth,null)) as '28', " + 
					"count(if(year(birth)='1991',birth,null)) as '29', " + 
					"count(if(year(birth)='1990',birth,null)) as '30', " + 
					"count(if(year(birth)='1989',birth,null)) as '31' " + 
					"from member";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				list=new ArrayList<>();
				list.add(rs.getInt("25"));
				list.add(rs.getInt("26"));
				list.add(rs.getInt("27"));
				list.add(rs.getInt("28"));
				list.add(rs.getInt("29"));
				list.add(rs.getInt("30"));
				list.add(rs.getInt("31"));
			}
			//결과가 없으면 null 반환=> 예외처리 필수
			return list;
		}
}
