package dao;

import entity.Entity;

public class DAO {
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
	
	public static Entity MemberSelectById(String id) {
		DBConn dbcon = new DBConn();
		
		Entity entity = new Entity();
		
		String sql = "SELECT * FROM UNI_MEMBER WHERE  UM_ID = '"+entity.getUM_ID()+"'";
		
		try {
			dbcon.rs = dbcon.stmt.executeQuery(sql);
			
			if(dbcon.rs.next()){
				entity = new Entity (dbcon.rs.getString(1), dbcon.rs.getString(2), dbcon.rs.getString(3), dbcon.rs.getString(4), dbcon.rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return entity;
	}
}
