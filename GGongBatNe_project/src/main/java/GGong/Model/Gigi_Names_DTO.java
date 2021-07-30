package GGong.Model;

public class Gigi_Names_DTO {
	
	private String gigi_name;
	private String gigi_location;
	private int gigi_count;
	private String gigi_first_check;
	private String gigi_area;
	
	public Gigi_Names_DTO(String gigi_name, String gigi_location, int gigi_count, String gigi_first_check,
			String gigi_area) {
		super();
		this.gigi_name = gigi_name;
		this.gigi_location = gigi_location;
		this.gigi_count = gigi_count;
		this.gigi_first_check = gigi_first_check;
		this.gigi_area = gigi_area;
	}

	public String getGigi_name() {
		return gigi_name;
	}

	public void setGigi_name(String gigi_name) {
		this.gigi_name = gigi_name;
	}

	public String getGigi_location() {
		return gigi_location;
	}

	public void setGigi_location(String gigi_location) {
		this.gigi_location = gigi_location;
	}

	public int getGigi_count() {
		return gigi_count;
	}

	public void setGigi_count(int gigi_count) {
		this.gigi_count = gigi_count;
	}

	public String getGigi_first_check() {
		return gigi_first_check;
	}

	public void setGigi_first_check(String gigi_first_check) {
		this.gigi_first_check = gigi_first_check;
	}

	public String getGigi_area() {
		return gigi_area;
	}

	public void setGigi_area(String gigi_area) {
		this.gigi_area = gigi_area;
	}
	
	
	
}
