package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	  DungChung dc= new DungChung();
		 public ArrayList<sachbean> getsach() throws Exception{
			 ArrayList<sachbean> ds= new ArrayList<sachbean>();
			 //b1 ket noi vao csdl
			 dc.KetNoi();
			 //b2 lay du lieu ve
			 String sql="select * from sach";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 ResultSet rs= cmd.executeQuery();//lay du lieu ve
			 while(rs.next()) {//duyet qua cac dong tren bang sach
				 	 String masach=rs.getString("masach");
					 String tensach=rs.getString("tensach");
					 String tacgia=rs.getString("tacgia");
					 String anh=rs.getString("anh");
					 long gia=rs.getLong("gia");
					 Date ngaynhap=rs.getDate("ngaynhap");
					 String maloai=rs.getString("maloai");
					 sachbean s= new sachbean(masach, tensach, tacgia, anh, gia, ngaynhap, maloai);
					 ds.add(s);
				 
			 }
			 //b3 dong ket noi
			 rs.close();
			 dc.cn.close();
					 return ds;
			 
		 }
		 public ArrayList<sachbean> getsachAdmin() throws Exception{
			 ArrayList<sachbean> ds= new ArrayList<sachbean>();
			 //b1 ket noi vao csdl
			 dc.KetNoi();
			 //b2 lay du lieu ve
			 String sql="select * from sach";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 ResultSet rs= cmd.executeQuery();//lay du lieu ve
			 while(rs.next()) {//duyet qua cac dong tren bang sach
				 	 String masach=rs.getString("masach");
					 String tensach=rs.getString("tensach");
					 String tacgia=rs.getString("tacgia");
					 String anh=rs.getString("anh");
					 long gia=rs.getLong("gia");
					 Date ngaynhap=rs.getDate("ngaynhap");
					 String maloai=rs.getString("maloai");
					 int sotap=rs.getInt("sotap");
					 int soluong=rs.getInt("soluong");
					 sachbean s= new sachbean(masach, tensach, tacgia, anh, gia, ngaynhap, maloai, sotap, soluong);
					 ds.add(s);
				 
			 }
			 //b3 dong ket noi
			 rs.close();
			 dc.cn.close();
					 return ds;
			 
		 }
		 public ArrayList<sachbean> getsachtheoloai(String ml) throws Exception{
			 ArrayList<sachbean> ds= new ArrayList<sachbean>();
			 //b1 ket noi vao csdl
			 dc.KetNoi();
			 //b2 lay du lieu ve
			 String sql="select * from sach";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 ResultSet rs= cmd.executeQuery();//lay du lieu ve
			 while(rs.next()) {//duyet qua cac dong tren bang sach
				 	 String maloai=rs.getString("maloai");
				 	 if(maloai.equals(ml)) {
				 	 String masach=rs.getString("masach");
					 String tensach=rs.getString("tensach");
					 String tacgia=rs.getString("tacgia");
					 String anh=rs.getString("anh");
					 long gia=rs.getLong("gia");
					 Date ngaynhap=rs.getDate("ngaynhap");
					 
					 sachbean s= new sachbean(masach, tensach, tacgia, anh, gia, ngaynhap, maloai);
					 ds.add(s);
				 	 }
				 
			 }
			 //b3 dong ket noi
			 rs.close();
			 dc.cn.close();
					 return ds;
			 
		 }
		 public ArrayList<sachbean> getsachtimkiem(String ten) throws Exception{
			 ArrayList<sachbean> ds= new ArrayList<sachbean>();
			 //b1 ket noi vao csdl
			 dc.KetNoi();
			 //b2 lay du lieu ve
			 String sql="select * from sach";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 ResultSet rs= cmd.executeQuery();//lay du lieu ve
			 while(rs.next()) {//duyet qua cac dong tren bang sach
				 	 
				 	 
				 	 String masach=rs.getString("masach");
					 String tensach=rs.getString("tensach");
					 String t=tensach;
					 String m=masach;
					 if(t.toLowerCase().equals(ten)||m.toLowerCase().equals(ten)) {
					 String maloai=rs.getString("maloai");
					 String tacgia=rs.getString("tacgia");
					 String anh=rs.getString("anh");
					 long gia=rs.getLong("gia");
					 Date ngaynhap=rs.getDate("ngaynhap");
					 
					 sachbean s= new sachbean(masach, tensach, tacgia, anh, gia, ngaynhap, maloai);
					 ds.add(s);
				 	 }
				 
			 }
			 //b3 dong ket noi
			 rs.close();
			 dc.cn.close();
					 return ds;
			 
		 }
		 public boolean KtTrungMa(String masach) throws Exception{
			 //Kiem tra xem co maloai nay trong bang loai hay k
			 String sql="select * from sach where masach=?";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 cmd.setString(1,masach);
			 ResultSet rs= cmd.executeQuery();
			 boolean kq=rs.next();
			 rs.close();
			 return kq;
			 
		 }
		 public int Them(String masach,String tensach, String tacgia, String anh,long gia, Date ngaynhap,String maloai,int sotap, int soluong) throws Exception{
			 //Neu trung ma thi khong them
			 dc.KetNoi();
			 if(KtTrungMa(masach)) return 0;
			 dc.cn.close();
			 //Nguoc lai them vao csdl
			 dc.KetNoi();
			 String sql="INSERT INTO sach(masach,tensach,tacgia,anh,gia,NgayNhap,maloai,sotap,soluong) "
			 		+ "VALUES(?,?,?,?,?,?,?,?,?)";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 cmd.setString(1, masach);
		 	 cmd.setString(2, tensach);
		 	 cmd.setString(3, tacgia);
		 	 cmd.setString(4, anh);
		 	 cmd.setLong(5, gia);
		 	 cmd.setDate(6, ngaynhap);
		 	 cmd.setString(7, maloai);
		 	 cmd.setInt(8, sotap);
		 	 cmd.setInt(9, soluong);
			 int rs= cmd.executeUpdate();
			 dc.cn.close();
			 return rs;
		  }
		 public boolean KtLoaisach(String maloai)  throws Exception{
			 //Kiem tra xem maloai nay co sach hay k
			 String sql="select * from sach where maloai=?";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 cmd.setString(1,maloai);
			 ResultSet rs= cmd.executeQuery();
			 boolean kq=rs.next();
			 rs.close();
			 return kq;
			 
		 }
		 public int Xoa(String maloai)  throws Exception{
			 //xoa loai k co sach
			 dc.KetNoi();
			 if(KtLoaisach(maloai)) return 0;
			 dc.cn.close();
			 dc.KetNoi();
			 String sql="DELETE from loai where maloai=?";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 cmd.setString(1, maloai);
			 int rs= cmd.executeUpdate();
			 dc.cn.close();
			 return rs;
			 
		 }
		 public int Sua(String maloai,String tenloaimoi)  throws Exception{
			 //Sua ten loai
			 dc.KetNoi();
			 String sql="UPDATE loai set tenloai=? where maloai=?";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 cmd.setString(1, tenloaimoi);
			 cmd.setString(2, maloai);
			 int rs= cmd.executeUpdate();
			 dc.cn.close();
			 return rs;
			 
		 }
}
//ds.add(new sachbean("Sach1","Bong da","Reus","anh1.jpg",15000));
//ds.add(new sachbean("Sach2","Sky Blood","Red","anh2.jpg",25000));
//ds.add(new sachbean("Sach3","Anime girl","Chan","anh3.jpg",56000));
//ds.add(new sachbean("Sach4","Venom","SonyFlim","anh4.jpg",80000));
//ds.add(new sachbean("Sach5","Tom Handy","Venom","anh5.jpg",93000));