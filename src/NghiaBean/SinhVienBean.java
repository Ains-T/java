package NghiaBean;

import java.sql.Date;

public class SinhVienBean {
	private String masv;
	private String hoten;
	private Date ngaysinh;
	private String diachi;
	private String makhoa;
	public SinhVienBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SinhVienBean(String masv, String hoten, Date ngaysinh, String diachi, String makhoa) {
		super();
		this.masv = masv;
		this.hoten = hoten;
		this.ngaysinh = ngaysinh;
		this.diachi = diachi;
		this.makhoa = makhoa;
	}
	public String getMasv() {
		return masv;
	}
	public void setMasv(String masv) {
		this.masv = masv;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public Date getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getMakhoa() {
		return makhoa;
	}
	public void setMakhoa(String makhoa) {
		this.makhoa = makhoa;
	}
	

}
