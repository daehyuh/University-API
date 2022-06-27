package entity;

public class Entity {
	
	// 멤버
	
	String UM_ID;
	String UM_PASSWORD;
	String UM_NAME;
	String UM_DATE;
	String UM_APIKEY;
	String UM_KEYDATE;
	
	// 대학
	
	int UNI_IDX;
	String UNI_NAME;
	String UNI_BRANCH;
	String UNI_REGION;
	String UNI_RECRUITMENT;
	String UNI_DEPARTMENT;
	String UNI_SELECTION;
	String UNI_SELECTION_TYPE;
	String UNI_SELECTION_NAME;
	int UNI_TYPE_NUMBER;
	int UNI_2022_COMPETITION_RATE;
	int UNI_2022_RATE;
	
	public Entity() {
		super();
	}
	
	// 대학 생성자
	
	public Entity(int uNI_IDX, String uNI_NAME, String uNI_BRANCH,
			String uNI_REGION, String uNI_RECRUITMENT,
			String uNI_DEPARTMENT, String uNI_SELECTION,
			String uNI_SELECTION_TYPE, String uNI_SELECTION_NAME,
			int uNI_TYPE_NUMBER, int uNI_2022_COMPETITION_RATE,
			int uNI_2022_RATE) {
		UNI_IDX = uNI_IDX;
		UNI_NAME = uNI_NAME;
		UNI_BRANCH = uNI_BRANCH;
		UNI_REGION = uNI_REGION;
		UNI_RECRUITMENT = uNI_RECRUITMENT;
		UNI_DEPARTMENT = uNI_DEPARTMENT;
		UNI_SELECTION = uNI_SELECTION;
		UNI_SELECTION_TYPE = uNI_SELECTION_TYPE;
		UNI_SELECTION_NAME = uNI_SELECTION_NAME;
		UNI_TYPE_NUMBER = uNI_TYPE_NUMBER;
		UNI_2022_COMPETITION_RATE = uNI_2022_COMPETITION_RATE;
		UNI_2022_RATE = uNI_2022_RATE;
	}
	
	// 멤버 생성자
	
	public Entity(String uM_ID, String uM_PASSWORD, String uM_NAME) {
		super();
		UM_ID = uM_ID;
		UM_PASSWORD = uM_PASSWORD;
		UM_NAME = uM_NAME;
	}
	public Entity(String uM_APIKEY) {
		super();
		UM_APIKEY = uM_APIKEY;
	}

	public Entity(String uM_ID, String uM_PASSWORD, String uM_NAME,
			String uM_DATE, String uM_APIKEY, String uM_KEYDATE) {
		super();
		UM_ID = uM_ID;
		UM_PASSWORD = uM_PASSWORD;
		UM_NAME = uM_NAME;
		UM_DATE = uM_DATE;
		UM_APIKEY = uM_APIKEY;
		UM_KEYDATE = uM_KEYDATE;
	}
	public Entity(String uM_ID, String uM_APIKEY) {
		super();
		UM_ID = uM_ID;
		UM_APIKEY = uM_APIKEY;
	}
	
	// 멤버
	
	/*
	 * 멤버 아이디
	 * */
	public String getUM_ID() {
		return UM_ID;
	}
	public void setUM_ID(String uM_ID) {
		UM_ID = uM_ID;
	}
	/*
	 * 멤버 비밀번호
	 * */
	public String getUM_PASSWORD() {
		return UM_PASSWORD;
	}
	public void setUM_PASSWORD(String uM_PASSWORD) {
		UM_PASSWORD = uM_PASSWORD;
	}
	/*
	 * 멤버 이름
	 * */
	public String getUM_NAME() {
		return UM_NAME;
	}
	public void setUM_NAME(String uM_NAME) {
		UM_NAME = uM_NAME;
	}
	/*
	 * 멤버 날짜
	 * */
	public String getUM_DATE() {
		return UM_DATE;
	}
	public void setUM_DATE(String uM_DATE) {
		UM_DATE = uM_DATE;
	}
	/*
	 * 멤버 APIKEY
	 * */
	public String getUM_APIKEY() {
		return UM_APIKEY;
	}
	public void setUM_APIKEY(String uM_APIKEY) {
		UM_APIKEY = uM_APIKEY;
	}
	/*
	 * 멤버 KEYDATE
	 * */
	public String getUM_KEYDATE() {
		return UM_KEYDATE;
	}
	public void setUM_KEYDATE(String uM_KEYDATE) {
		UM_KEYDATE = uM_KEYDATE;
	}
	
	// 대학교
	
	/*
	 * 대학 카운트
	 * */
	public int getUNI_IDX() {
		return UNI_IDX;
	}
	public void setUNI_IDX(int uNI_IDX) {
		UNI_IDX = uNI_IDX;
	}
	/*
	 * 대학 이름
	 * */
	public String getUNI_NAME() {
		return UNI_NAME;
	}
	public void setUNI_NAME(String uNI_NAME) {
		UNI_NAME = uNI_NAME;
	}
	/*
	 * 대학 본분교
	 * */
	public String getUNI_BRANCH() {
		return UNI_BRANCH;
	}
	public void setUNI_BRANCH(String uNI_BRANCH) {
		UNI_BRANCH = uNI_BRANCH;
	}
	/*
	 * 대학 지역
	 * */
	public String getUNI_REGION() {
		return UNI_REGION;
	}
	public void setUNI_REGION(String uNI_REGION) {
		UNI_REGION = uNI_REGION;
	}
	/*
	 * 대학 모집시기
	 * */
	public String getUNI_RECRUITMENT() {
		return UNI_RECRUITMENT;
	}
	public void setUNI_RECRUITMENT(String uNI_RECRUITMENT) {
		UNI_RECRUITMENT = uNI_RECRUITMENT;
	}
	/*
	 * 대학 학과
	 * */
	public String getUNI_DEPARTMENT() {
		return UNI_DEPARTMENT;
	}
	public void setUNI_DEPARTMENT(String uNI_DEPARTMENT) {
		UNI_DEPARTMENT = uNI_DEPARTMENT;
	}
	/*
	 * 대학 전형
	 * */
	public String getUNI_SELECTION() {
		return UNI_SELECTION;
	}
	public void setUNI_SELECTION(String uNI_SELECTION) {
		UNI_SELECTION = uNI_SELECTION;
	}
	/*
	 * 대학 종합교과
	 * */
	public String getUNI_SELECTION_TYPE() {
		return UNI_SELECTION_TYPE;
	}
	public void setUNI_SELECTION_TYPE(String uNI_SELECTION_TYPE) {
		UNI_SELECTION_TYPE = uNI_SELECTION_TYPE;
	}
	/*
	 * 대학 전형명
	 * */
	public String getUNI_SELECTION_NAME() {
		return UNI_SELECTION_NAME;
	}
	public void setUNI_SELECTION_NAME(String uNI_SELECTION_NAME) {
		UNI_SELECTION_NAME = uNI_SELECTION_NAME;
	}
	/*
	 * 대학 모집인원
	 * */
	public int getUNI_TYPE_NUMBER() {
		return UNI_TYPE_NUMBER;
	}
	public void setUNI_TYPE_NUMBER(int uNI_TYPE_NUMBER) {
		UNI_TYPE_NUMBER = uNI_TYPE_NUMBER;
	}
	/*
	 * 대학 2022학년도 경쟁률
	 * */
	public int getUNI_2022_COMPETITION_RATE() {
		return UNI_2022_COMPETITION_RATE;
	}
	public void setUNI_2022_COMPETITION_RATE(int uNI_2022_COMPETITION_RATE) {
		UNI_2022_COMPETITION_RATE = uNI_2022_COMPETITION_RATE;
	}
	/*
	 * 대학 2022학년도 평균등급
	 * */
	public int getUNI_2022_RATE() {
		return UNI_2022_RATE;
	}
	public void setUNI_2022_RATE(int uNI_2022_RATE) {
		UNI_2022_RATE = uNI_2022_RATE;
	}
	
	
}
