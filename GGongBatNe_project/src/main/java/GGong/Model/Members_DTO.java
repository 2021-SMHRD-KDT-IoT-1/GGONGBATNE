package GGong.Model;

public class Members_DTO {
	
	private String mem_num;
	private String mem_pw;
	private String mem_name;
	private String mem_phone;
	private String mem_area;
	
	public Members_DTO(String mem_num, String mem_pw, String mem_name, String mem_phone, String mem_area) {
		super();
		this.mem_num = mem_num;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
		this.mem_area = mem_area;
	}

	public String getMem_num() {
		return mem_num;
	}

	public void setMem_num(String mem_num) {
		this.mem_num = mem_num;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_area() {
		return mem_area;
	}

	public void setMem_area(String mem_area) {
		this.mem_area = mem_area;
	}
	
	
}
