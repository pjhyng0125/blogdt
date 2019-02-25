package blogdt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import blogdt.dto.BContentDTO;
import blogdt.dto.BListDTO;

/* 
파일명: BListDAO.java (Board List Data Access Object)
마지막 수정 날짜: 19/02/23  
작성자: 박진형
기능: BListDTO 활용하여 게시물 목록 화면에 데이터 뿌려주는 클래스
*/
public class BListDAO {
	private static BListDAO instance=new BListDAO();
	
	public static BListDAO getInstance() {
		return instance;
	}
	
	private BListDAO() {}
	
	private Connection getConnection() throws Exception{
		Context initCtx=new InitialContext();
		Context envCtx=(Context) initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource)envCtx.lookup("jdbc/blogdt");
		return ds.getConnection();
	}
	
	//박진형: 게시물 목록 화면 데이터 전체 select
	public List<BListDTO> getBoardList() throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<BListDTO> list=null;	//select 결과가 저장되어 반환될 List
		
		conn=getConnection();
		String sql="select name,num,dept,btype,img from member as m, board as b where m.id=b.id";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		if(rs.next()) {//만약 결과값이 있다면
			list=new ArrayList<BListDTO>();
			do {
				BListDTO dto=new BListDTO();
				dto.setName(rs.getString("name"));
				dto.setDept(rs.getString("dept"));
				dto.setNum(rs.getInt("num"));
				dto.setBtype(rs.getString("btype"));
				dto.setImg(rs.getString("img"));
				list.add(dto);
			}while(rs.next());
		}
		System.out.println(list.size());
		//결과값 없으면 board 테이블이 비어있는 상태이기 때문에 null 반환할 것!=> 예외 처리 해줘야 함.
		return list;
	}
	
	//박진형: 게시물 상세 화면 데이터 전체 select
		public BContentDTO getBoardContent(int num) throws Exception{
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			BContentDTO dto=null;	//select 결과가 저장되어 반환될 BContentDTO
			
			conn=getConnection();
			String sql="select jyear,btype,title,dept,name,position,img,content from member as m,board as b where num=? and m.id=b.id";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {//만약 결과값이 있다면
					dto=new BContentDTO();
					dto.setJyear(rs.getString("jyear"));
					dto.setBtype(rs.getString("btype"));
					dto.setTitle(rs.getString("title"));
					dto.setDept(rs.getString("dept"));
					dto.setName(rs.getString("name"));
					dto.setPosition(rs.getString("position"));
					dto.setImg(rs.getString("img"));
					dto.setContent(rs.getString("content"));
			}
			System.out.println(dto);
			//결과값 없으면 board 테이블이 비어있는 상태이기 때문에 null 반환할 것!=> 예외 처리 해줘야 함.
			return dto;
		}
	
}









