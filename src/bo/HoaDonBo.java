package bo;

import java.sql.Date;

import dao.HoaDonDao;

public class HoaDonBo {
	HoaDonDao hd= new HoaDonDao();
	 public int Them(String makh ,Date ngaymua, Boolean damua) throws Exception{
		 return hd.Them(makh, ngaymua, damua);
	 }

}
