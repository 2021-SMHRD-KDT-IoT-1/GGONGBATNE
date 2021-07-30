package GGong.Model;

public class Complaints_DTO {
	
	private int com_num;
	private String gigi_name;
	private String com_title;
	private String com_content;
	private String com_date;
	
	public Complaints_DTO(int com_num, String gigi_name, String com_title, String com_content, String com_date) {
		super();
		this.com_num = com_num;
		this.gigi_name = gigi_name;
		this.com_title = com_title;
		this.com_content = com_content;
		this.com_date = com_date;
	}
	
	
	
	public Complaints_DTO(String com_title, String com_content) {
		
		super();
		this.com_title = com_title;
		this.com_content = com_content;
	}


	public int getCom_num() {
		return com_num;
	}

	public void setCom_num(int com_num) {
		this.com_num = com_num;
	}

	public String getGigi_name() {
		return gigi_name;
	}

	public void setGigi_name(String gigi_name) {
		this.gigi_name = gigi_name;
	}

	public String getCom_title() {
		return com_title;
	}

	public void setCom_title(String com_title) {
		this.com_title = com_title;
	}

	public String getCom_content() {
		return com_content;
	}

	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}

	public String getCom_date() {
		return com_date;
	}

	public void setCom_date(String com_date) {
		this.com_date = com_date;
	}
	
	
	
}
