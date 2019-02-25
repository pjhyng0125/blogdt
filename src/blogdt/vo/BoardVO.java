package blogdt.vo;

public class BoardVO {
	private int num;
	private String id;
	private String title;
	private String btype;
	private String img;
	private String content;
	
	/**
	 * @param num : 삽입 시 아무거나. 0 넣으면 됨.
	 * @param id : 필수
	 * @param title : null 가능.
	 * @param btype : 필수
	 * @param img : null 가능.
	 * @param content : 필수
	 */
	public BoardVO(int num, String id, String title, String btype, String img, String content) {
		super();
		this.num = num;
		this.id = id;
		this.title = title;
		this.btype = btype;
		this.img = img;
		this.content = content;
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
}
