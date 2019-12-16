package NghiaBo;

import java.util.ArrayList;

import NghiaBean.SinhVienBean;
import NghiaDao.SinhVienDao;
import bean.DeKT_1_Bean;

public class SinhVienBo {
	SinhVienDao sv= new SinhVienDao();
	ArrayList<SinhVienBean> ds;
	 public ArrayList<SinhVienBean> getSV() throws Exception{
		 ds= sv.getSV();
		 return ds;
	 }
	 public ArrayList<SinhVienBean> getSVtheokhoa(String khoa) throws Exception{
		 ArrayList<SinhVienBean> tam = new ArrayList<SinhVienBean>();
		 for(SinhVienBean s:ds)
			 if(s.getMakhoa().trim().equals(khoa))
				 tam.add(s);
		 return tam;
	 }
	 public ArrayList<SinhVienBean> gettimkiem(String ma) throws Exception{
		 ArrayList<SinhVienBean> tam = new ArrayList<SinhVienBean>();
		 for(SinhVienBean s:ds)
			 if(s.getHoten().toLowerCase().contains(ma.toLowerCase())||
					s.getDiachi().toLowerCase().contains(ma.toLowerCase()))
				 tam.add(s);
		 return tam;
	 }

}
