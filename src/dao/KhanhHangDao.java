package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.KhachHangBean;
import bean.loaibean;

public class KhanhHangDao {
	 DungChung dc= new DungChung();
	 	public void ThemKH(String hoten, String diachi, String sdt, String email, String tendn,
				String pass)throws Exception
	 	{  
	 		dc.KetNoi();
	 		String sql="INSERT INTO KhachHang(hoten,diachi,sodt,email,tendn,pass) VALUES (?,?,?,?,?,?)";
	 		PreparedStatement cmd= dc.cn.prepareStatement(sql);
	 		cmd.setString(1, hoten);
	 		cmd.setString(2, diachi);
	 		cmd.setString(3, sdt);
	 		cmd.setString(4, email);
	 		cmd.setString(5, tendn);
	 		cmd.setString(6, pass);
	 		int rs= cmd.executeUpdate(); 
	 		
			 dc.cn.close();
	 	}
	 	 public boolean KtTrungMa(String tendn, String pass) throws Exception{
	 		dc.KetNoi();
			 //Kiem tra xem co maloai nay trong bang loai hay k
			 String sql="select * from KhachHang where tendn=? and pass=?";
			 PreparedStatement cmd= dc.cn.prepareStatement(sql);
			 cmd.setString(1,tendn);
			 cmd.setString(2, pass);
			 ResultSet rs= cmd.executeQuery();
			 boolean kq=rs.next();
			 rs.close();
			 return kq;
			 
		 }
	 	 public String GetMaKH(String tendn)throws Exception
	 	 {dc.KetNoi();
	 	 String makh = null;
	 	 String sql="select makh from KhachHang where tendn=?";
	 	 PreparedStatement cmd= dc.cn.prepareStatement(sql);
		 cmd.setString(1,tendn);
		 ResultSet rs= cmd.executeQuery();
		 while(rs.next()) {
			  makh=rs.getString("makh");
		 }
		 rs.close();
		 dc.cn.close();
		 return makh;
	 	 }

}
