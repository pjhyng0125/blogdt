package blogdt.dto;

public class BListDTO {
	// member
	private String name;
	private String dept;
	// board
	private int num;
	private String btype;
	private String img;

	public BListDTO() {
		super();
	}

	public BListDTO(String name, String dept, String btype, String img) {
		super();
		this.name = name;
		this.dept = dept;
		this.btype = btype;
		this.img = img;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getBtype() {
		return btype;
	}

	public void setBtype(String btyoe) {
		this.btype = btyoe;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "BListDTO [name=" + name + ", dept=" + dept + ", btype=" + btype + ", img=" + img + "]";
	}
}
