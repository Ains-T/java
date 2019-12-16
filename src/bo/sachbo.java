package bo;

import java.sql.Date;
import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
 sachdao sach= new sachdao();
 ArrayList<sachbean> ds;
 public ArrayList<sachbean> getsach() throws Exception{
	 ds= sach.getsach();
	 return ds;
 }
 public ArrayList<sachbean> getsachAdmin() throws Exception{
	 ds= sach.getsachAdmin();
	 return ds;
 }
 public ArrayList<sachbean> getsachtheoloai(String ml) throws Exception{
	 ds= sach.getsachtheoloai(ml);
	 
	 return ds;
 }
 public ArrayList<sachbean> getsachtimkiem(String ten) throws Exception{
	 ten=ten.toLowerCase();
	 ds= sach.getsachtimkiem(ten);
	 
	 return ds;
 }
 public int Them(String masach,String tensach, String tacgia, String anh,long gia, Date ngaynhap,String maloai,int sotap, int soluong) throws Exception{
	 return sach.Them(masach, tensach, tacgia, anh, gia, ngaynhap, maloai, sotap, soluong);
 }
}
