package blogdt.dto;

public class BContentDTO {
	// for title
	private String jyear;
	private String btype;
	private String title;

	// for person
	private String dept;
	private String name;
	private String position;

	// for image & content
	private String img;
	private String content;

	// for id check
	private String id;

	public BContentDTO() {
		super();
	}

	public BContentDTO(String jyear, String btype, String title, String dept, String name, String position, String img,
			String content, String id) {
		super();
		this.jyear = jyear;
		this.btype = btype;
		this.title = title;
		this.dept = dept;
		this.name = name;
		this.position = position;
		this.img = img;
		this.content = content;
		this.id = id;
	}

	public String getJyear() {
		return jyear;
	}

	public void setJyear(String jyear) {
		this.jyear = jyear;
	}

	public String getBtype() {
		return btype;
	}

	public void setBtype(String btype) {
		this.btype = btype;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "BContentDTO [jyear=" + jyear + ", btype=" + btype + ", title=" + title + ", dept=" + dept + ", name="
				+ name + ", position=" + position + ", img=" + img + ", content=" + content + ", id=" + id + "]";
	}

}
