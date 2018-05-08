package ch12.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


/*
 	DAO(Data Access Object) Ŭ����
 	- ������ ���̽��� �����Ͽ� ���ڵ��� �߰�, ����, ���� �۾���
 	�̷������ Ŭ���� �Դϴ�.
 	
 	- � Action Ŭ������ ȣ��Ǵ��� �׿� �ش��ϴ� �����ͺ��̽�
 	���� ó���� DAO Ŭ�������� �̷������ �˴ϴ�.
 */

public class MemberDAO {
	DataSource ds;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	int result;
	
	// �����ڿ��� JNDI ���ҽ��� �����Ͽ� Connection ��ü�� ���ɴϴ�.
	public MemberDAO() {
		try {
			Context init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			
		}catch(Exception ex) {
			System.out.println("DB ���� ���� : " + ex);
			return;
		}
	}
	
	public int isId(String id, String pass) {
		try {
			con =ds.getConnection();
			System.out.println("getConnection");
			
			String sql = "select id, password from member where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(2).equals(pass)) {
					result = 1; // ���̵�� ��й�ȣ ��ġ�ϴ� ���
				}else {
					result = 0; // ��й�ȣ�� ��ġ���� �ʴ� ���
				}

			}else {
				result = -1; // ���̵� �������� �ʴ� ���
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}

	public List<Member> getList() {
		List<Member> list = new ArrayList<Member>();
		try {
			con=ds.getConnection();
			
			String sql = "select * from member ";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			/*
			 	create table member(
			 				id	varchar2(15),
			 				password varchar2(10),
			 */
			while(rs.next()) {
			Member member = new Member();
			member.setId(rs.getString(1));
			member.setPassword(rs.getString(2));
			member.setName(rs.getString(3));
			member.setAge(rs.getInt(4));
			member.setGender(rs.getString(5));
			member.setEmail(rs.getString(6));
			list.add(member);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		return list;
	}

	public Member member_info(String id) {
		Member m = null;
		try {
			con = ds.getConnection();
			String sql = "select * from member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				m = new Member();
				m.setId(rs.getString(1));
				m.setPassword(rs.getString(2));
				m.setName(rs.getString(3));
				m.setAge(rs.getInt(4));
				m.setGender(rs.getString(5));
				m.setEmail(rs.getString(6));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				}catch(SQLException se) {
					se.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return m;
	
	}

/*	public int member_delete(String id) {
		try {
			con = ds.getConnection();
			String sql = "delete from member where id=? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			if(!id.equals("admin")) {
			result = pstmt.executeUpdate();
			}else {
			result = -1;
			}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}*/
	
	 public void member_delete(String id) {

	      try {
	         con = ds.getConnection();
	         String sql = "delete from member where id = ? ";
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, id);
	         pstmt.executeUpdate();

	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         if (pstmt != null) {
	            try {
	               pstmt.close();
	            } catch (SQLException sq) {
	               sq.printStackTrace();
	            }
	         }
	         if (con != null) {
	            try {
	               con.close();
	            } catch (SQLException sq) {
	               sq.printStackTrace();
	            }
	         }
	      }
	 }

	public int member_update(Member m) {
		try {
			con = ds.getConnection();
			String sql = "UPDATE member SET NAME=?, AGE=?, GENDER=?, EMAIL=? WHERE ID = ?";
			pstmt = con.prepareStatement(sql);
			System.out.println(m.getId());


			pstmt.setString(1, m.getName());
			pstmt.setInt(2, m.getAge());
			pstmt.setString(3, m.getGender());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getId());
			
			result = pstmt.executeUpdate();
			
		 } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         if (pstmt != null) {
	            try {
	               pstmt.close();
	            } catch (SQLException sq) {
	               sq.printStackTrace();
	            }
	         }
	         if (con != null) {
	            try {
	               con.close();
	            } catch (SQLException sq) {
	               sq.printStackTrace();
	            }
	         }
	      }
		return result;
	 }
	
}
