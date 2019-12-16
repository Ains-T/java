package bo;

import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;
import dao.loaidao;

public class loaibo {
	loaidao l= new loaidao();
	 ArrayList<loaibean> ds;
	 public ArrayList<loaibean> getloai() throws Exception{
		 ds= l.getloai();
		 return ds;
	 }
	 public int Them(String maloai,String tenloai) throws Exception{
		 return l.Them(maloai, tenloai);
	 }
	 public int Xoa(String maloai)  throws Exception{
		 return l.Xoa(maloai);
	 }
	 public int Sua(String maloai,String tenloaimoi)  throws Exception{
		 return l.Sua(maloai, tenloaimoi);
		 
	 }
	 public loaibean chon(String maloai) throws Exception{
		 for(loaibean k:l.getloai())
			 if(k.getMaloai().equals(maloai))
				 return k;
		 return null;
	 }

}
