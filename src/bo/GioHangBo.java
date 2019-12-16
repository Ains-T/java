package bo;

import java.util.ArrayList;

import bean.GioHangBean;

public class GioHangBo {
 public ArrayList<GioHangBean> ds= new ArrayList<GioHangBean>();
 public void Them(String masach, String tensach, String tacgia, long gia, long soluong,String anh)
 {   for(GioHangBean g:ds) {
	 if(g.getMasach().equals(masach)) {
		 g.setSoluong(g.getSoluong()+soluong);
		 g.setThanhtien(g.getSoluong()*g.getGia());
		 return;
	 }
	 
      }
	 GioHangBean gh= new GioHangBean(masach, tensach, tacgia, anh, gia, soluong);
	 ds.add(gh);
 }
 public long Tong() {
	 long s=0;
	 for(GioHangBean g:ds)
		 s+=g.getThanhtien();
	 return s;
 }
 public long TongSl() {
	 long s=0;
	 for(GioHangBean g:ds)
		 s+=g.getSoluong();
	 return s;
 }
 public void Suasl(String masach, String tensach, String tacgia, long gia, long soluong,String anh)
 {
	 for(GioHangBean g:ds) {
		 if(g.getMasach().equals(masach)) {
			 g.setSoluong(soluong);
			 g.setThanhtien(g.getSoluong()*g.getGia());
			 return;
		 }
		 
	      }
		 GioHangBean gh= new GioHangBean(masach, tensach, tacgia, anh, gia, soluong);
		 ds.add(gh);
 }
 public void Xoa(String masach) 
 {
	 for(GioHangBean g:ds) 
		 if(g.getMasach().equals(masach)) {
			ds.remove(g);
			return;
		 }
		 
	      
		
 }
 public void Xoatoanbo() 
 {
	ds.clear();
	return;
		 
		 
	      
		
 }
}
