package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;

public class loaidao {
	 DungChung dc= new DungChung();
	 public boolean KtTrungMa(String maloai) throws Exception{
		 //Kiem tra xem co maloai nay trong bang loai hay k
		 String sql="select * from loai where maloai=?";
		 PreparedStatement cmd= dc.cn.prepareStatement(sql);
		 cmd.setString(1,maloai);
		 ResultSet rs= cmd.executeQuery();
		 boolean kq=rs.next();
		 rs.close();
		 return kq;
		 
	 }
	 public int Them(String maloai,String tenloai) throws Exception{
		 //Neu trung ma thi khong them
		 dc.KetNoi();
		 if(KtTrungMa(maloai)) return 0;
		 dc.cn.close();
		 //Nguoc lai them vao csdl
		 dc.KetNoi();
		 String sql="INSERT INTO loai(maloai,tenloai) VALUES (?,?)";
		 PreparedStatement cmd= dc.cn.prepareStatement(sql);
		 cmd.setString(1, maloai);
	 	 cmd.setString(2, tenloai);
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
	 public ArrayList<loaibean> getloai() throws Exception{
		 ArrayList<loaibean> ds= new ArrayList<loaibean>();
		 //b1 ket noi vao csdl
		 dc.KetNoi();
		 //b2 lay du lieu ve
		 String sql="select * from loai";
		 PreparedStatement cmd= dc.cn.prepareStatement(sql);
		 ResultSet rs= cmd.executeQuery();//lay du lieu ve
		 while(rs.next()) {//duyet qua cac dong tren bang sach
			 	 String maloai=rs.getString("maloai");
				 String tenloai=rs.getString("tenloai");
				 loaibean l= new loaibean(maloai, tenloai);
				 ds.add(l);
			 
		 }
		 //b3 dong ket noi
		 rs.close();
		 dc.cn.close();
		return ds;
		 
	 }

}
