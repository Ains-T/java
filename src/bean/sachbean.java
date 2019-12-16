package bean;

import java.sql.Date;


public class sachbean {
	private String masach;
	private String tensach;
	private String tacgia;
	private String anh;
	private long gia;
	private Date ngaynhap;
	private String maloai;
	private int sotap;
	private int soluong;
	public sachbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public Date getNgaynhap() {
		return ngaynhap;
	}
	public void setNgaynhap(Date ngaynhap) {
		this.ngaynhap = ngaynhap;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	
	public int getSotap() {
		return sotap;
	}
	public void setSotap(int sotap) {
		this.sotap = sotap;
	}
	
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public sachbean(String masach, String tensach, String tacgia, String anh, long gia, Date ngaynhap, String maloai) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.anh = anh;
		this.gia = gia;
		this.ngaynhap = ngaynhap;
		this.maloai = maloai;
	}
	public sachbean(String masach, String tensach, String tacgia, String anh, long gia, Date ngaynhap, String maloai,
			int sotap, int soluong) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.anh = anh;
		this.gia = gia;
		this.ngaynhap = ngaynhap;
		this.maloai = maloai;
		this.sotap = sotap;
		this.soluong = soluong;
	}
	
	
	
	

}
