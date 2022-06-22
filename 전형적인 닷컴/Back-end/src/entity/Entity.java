package entity;

public class Entity {
	String UM_ID;
	String UM_PASSWORD;
	String UM_NAME;
	String UM_DATE;
	String UM_APIKEY;
	public Entity() {
		super();
	}
	public Entity(String uM_ID, String uM_PASSWORD, String uM_NAME) {
		super();
		UM_ID = uM_ID;
		UM_PASSWORD = uM_PASSWORD;
		UM_NAME = uM_NAME;
	}
	public Entity(String uM_ID, String uM_PASSWORD, String uM_NAME,
			String uM_DATE, String uM_APIKEY) {
		super();
		UM_ID = uM_ID;
		UM_PASSWORD = uM_PASSWORD;
		UM_NAME = uM_NAME;
		UM_DATE = uM_DATE;
		UM_APIKEY = uM_APIKEY;
	}
	public String getUM_ID() {
		return UM_ID;
	}
	public void setUM_ID(String uM_ID) {
		UM_ID = uM_ID;
	}
	public String getUM_PASSWORD() {
		return UM_PASSWORD;
	}
	public void setUM_PASSWORD(String uM_PASSWORD) {
		UM_PASSWORD = uM_PASSWORD;
	}
	public String getUM_NAME() {
		return UM_NAME;
	}
	public void setUM_NAME(String uM_NAME) {
		UM_NAME = uM_NAME;
	}
	public String getUM_DATE() {
		return UM_DATE;
	}
	public void setUM_DATE(String uM_DATE) {
		UM_DATE = uM_DATE;
	}
	public String getUM_APIKEY() {
		return UM_APIKEY;
	}
	public void setUM_APIKEY(String uM_APIKEY) {
		UM_APIKEY = uM_APIKEY;
	}
	
	
}
