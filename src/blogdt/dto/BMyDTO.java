package blogdt.dto;

public class BMyDTO {
	private int num;
	private String id;
	private String title;
	private String btype;

	public BMyDTO() {
		super();
	}

	public BMyDTO(int num, String id, String title, String btype) {
		super();
		this.num = num;
		this.id = id;
		this.title = title;
		this.btype = btype;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBtype() {
		return btype;
	}

	public void setBtype(String btype) {
		this.btype = btype;
	}

	@Override
	public String toString() {
		return "BMyDTO [num=" + num + ", id=" + id + ", title=" + title + ", btype=" + btype + "]";
	}
}
