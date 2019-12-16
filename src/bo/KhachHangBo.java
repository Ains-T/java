package bo;

import dao.KhanhHangDao;

public class KhachHangBo {
	KhanhHangDao kh= new KhanhHangDao();
	public void ThemKH(String hoten, String diachi, String sdt, String email, String tendn,
			String pass)
	{
		try {
			kh.ThemKH(hoten, diachi, sdt, email, tendn, pass);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	 public boolean KtTrungMa(String tendn, String pass) throws Exception{
		 return kh.KtTrungMa(tendn, pass);
	 }
	 public String GetMaKH(String tendn)throws Exception{
		 return kh.GetMaKH(tendn);
		 
	 }
}
