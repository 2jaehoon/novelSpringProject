package kr.co.noveljoa.user.main;

public class MainVO {
	private int type,genre;
	public MainVO() {
	}
	public MainVO(int type, int genre) {
		super();
		this.type = type;
		this.genre = genre;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getGenre() {
		return genre;
	}
	public void setGenre(int genre) {
		this.genre = genre;
	}
}
