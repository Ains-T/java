package bean;

import java.sql.Date;

public class HoaDonBean {
	private int mahd;
	private String makh;
	private Date ngaymua;
	private boolean damua;
	public HoaDonBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HoaDonBean(int mahd, String makh, Date ngaymua, boolean damua) {
		super();
		this.mahd = mahd;
		this.makh = makh;
		this.ngaymua = ngaymua;
		this.damua = damua;
	}
	public int getMahd() {
		return mahd;
	}
	public void setMahd(int mahd) {
		this.mahd = mahd;
	}
	public String getMakh() {
		return makh;
	}
	public void setMakh(String makh) {
		this.makh = makh;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	

}
