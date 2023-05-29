package kr.or.kosa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.or.kosa.dto.KoreaMember;
import kr.or.kosa.utils.ConnectionHelper;

public class KoreaMemberDao {

	//전체조회
		public List<KoreaMember> getMemoList(){
			
			List<KoreaMember> memberlist = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = ConnectionHelper.getConnection("oracle");
				String sql="select id,pwd,name,age,gender,email from koreaMember";
				pstmt = conn.prepareStatement(sql);
				
				ResultSet rs = pstmt.executeQuery();
				
				memberlist = new ArrayList<KoreaMember>(); //POINT
				
				while(rs.next()) {
					KoreaMember m = KoreaMember.builder()
									.id(rs.getString("id"))
									.pwd(rs.getString("pwd"))
									.name(rs.getString("name"))
									.age(rs.getInt("age"))
									.gender(rs.getString("gender"))
									.email(rs.getString("email"))
									.build();

					memberlist.add(m);
									
				}
				
				ConnectionHelper.close(rs);
				ConnectionHelper.close(pstmt);
				
				//Pool에게 반환
				ConnectionHelper.close(conn);
					
			}catch (Exception e) {
				System.out.println(e.getMessage());
				e.getStackTrace();
				
			}finally {
				ConnectionHelper.close(pstmt);
				ConnectionHelper.close(conn);//반환
			}
			
			return memberlist;
		}
		
		
		//삽입
		public int insertMember(KoreaMember m) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			int resultrow = 0;

			try {
				conn = ConnectionHelper.getConnection("oracle");
				String sql="insert into koreaMember(id,pwd,name,age,gender,email,ip) values(?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1,m.getId());
				pstmt.setString(2,m.getPwd());
				pstmt.setInt(3,m.getAge());
				pstmt.setString(4,m.getGender());
				pstmt.setString(5,m.getEmail());
				pstmt.setString(6,m.getIp());
				
				resultrow = pstmt.executeUpdate();
			
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				ConnectionHelper.close(pstmt);
				ConnectionHelper.close(conn);//반환
			}
					
			return resultrow;
		}
		
		
		//수정
		public int updateMember(KoreaMember m) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			int resultrow = 0;

			try {
				conn = ConnectionHelper.getConnection("oracle");
				String sql="update f koreaMember(id,pwd,name,age,gender,email,ip) values(?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1,m.getId());
				pstmt.setString(2,m.getPwd());
				pstmt.setInt(3,m.getAge());
				pstmt.setString(4,m.getGender());
				pstmt.setString(5,m.getEmail());
				pstmt.setString(6,m.getIp());
				
				resultrow = pstmt.executeUpdate();
			
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				ConnectionHelper.close(pstmt);
				ConnectionHelper.close(conn);//반환
			}
					
			return resultrow;
			
		}
		
		//삭제
		public int deleteMemo(String id) {
			return 0;
		}
		
		//검색
		public KoreaMember searchByName(String name) {
			return null;
		}
		
}
