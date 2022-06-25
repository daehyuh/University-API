package dao;

import java.util.ArrayList;
import java.util.List;

import entity.Entity;

public class DAO {
	
	/*
	 * 멤버  회원가입 DAO Servlet Join.java
	 * */
	
	public static void MemberInsert(String id, String pw, String name) {
		DBConn dbcon = new DBConn();
		Entity entity = new Entity(id, pw, name);
		String sql = "INSERT INTO UNI_MEMBER (UM_ID, UM_PASSWORD, UM_NAME, UM_DATE) VALUES('"+entity.getUM_ID()+"', '"+entity.getUM_PASSWORD()+"', '"+entity.getUM_NAME()+"', SYSDATE)";
		
		try {
			dbcon.stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 멤버 아이디로 전체 조회 DAO Servlet Login.java
	 * */
	
	public static Entity MemberSelectById(String id) {
		DBConn dbcon = new DBConn();
		
		Entity entity = new Entity();
		
		String sql = "SELECT * FROM UNI_MEMBER WHERE  UM_ID = '"+id+"'";
		
		try {
			dbcon.rs = dbcon.stmt.executeQuery(sql);
			
			if(dbcon.rs.next()){
				entity = new Entity (dbcon.rs.getString(1), dbcon.rs.getString(2), dbcon.rs.getString(3), dbcon.rs.getString(4), dbcon.rs.getString(5), dbcon.rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
			}

		return entity;
	}
	
	/*
	 * 멤버 업데이트 DAO Servlet Update.java
	 * */
	
	public static void MemberUpdate(String id, String pwd, String name){
		DBConn dbcon = new DBConn();
		Entity entity = new Entity(id, pwd, name);
		
		String sql = "UPDATE UNI_MEMBER SET UM_PASSWORD = '"+entity.getUM_PASSWORD()+"', UM_NAME = '"+entity.getUM_NAME()+"' WHERE UM_ID = '"+entity.getUM_ID()+"'";
		System.out.println(sql);
		try{
			dbcon.stmt.executeUpdate(sql);
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
	/*
	 * APIKEY 생성 DAO Servlet ApiKeyMake.java
	 * */
	
	public static void UUIDUpdate(String id, String uuid) {
		DBConn dbcon = new DBConn();
		
		Entity entity = new Entity(id, uuid);
	
		String sql = "UPDATE UNI_MEMBER SET UM_APIKEY = '"+entity.getUM_APIKEY()+"', UM_KEYDATE = SYSDATE WHERE UM_ID = '"+entity.getUM_ID()+"'";
		
		try{ 
			dbcon.stmt.executeUpdate(sql);
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
	/*
	 * APIKEY 발급 DAO Servlet ApiKeySelect.java
	 * */
	
	public static List<Entity> UUIDSelect(String id) {
		DBConn dbcon = new DBConn();

		Entity entity = new Entity();

		List<Entity> list = new ArrayList<Entity>();

		String sql = "SELECT UM_APIKEY, UM_KEYDATE FROM UNI_MEMBER WHERE UM_ID = '"+id+"'";

		try {

			dbcon.rs = dbcon.stmt.executeQuery(sql);

			if (dbcon.rs.next()) {
				entity = new Entity(dbcon.rs.getString(1));
				list.add(entity);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;

	}
	
	// 대학
	
	/*
	 * 대학 전체 조회 DAO Servlet UniversityList.java
	 * */
	
	public static List<Entity> SelectAllUniversity() {
		DBConn dbcon = new DBConn();

		Entity entity = new Entity();

		List<Entity> list = new ArrayList<Entity>();

		String sql = "SELECT * FROM UNI_TYPE";

		try {

			dbcon.rs = dbcon.stmt.executeQuery(sql);

			while (dbcon.rs.next()) {
				entity = new Entity(dbcon.rs.getInt(1),
						dbcon.rs.getString(2), dbcon.rs.getString(3),
						dbcon.rs.getString(4), dbcon.rs.getString(5),
						dbcon.rs.getString(6), dbcon.rs.getString(7), dbcon.rs.getString(8), dbcon.rs.getString(9), dbcon.rs.getInt(10), dbcon.rs.getInt(11), dbcon.rs.getInt(12));
				list.add(entity);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
