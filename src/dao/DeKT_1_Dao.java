package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.DeKT_1_Bean;
import bean.loaibean;

public class DeKT_1_Dao {
	 DungChung dc= new DungChung();
	 public ArrayList<DeKT_1_Bean> gethang() throws Exception{
		 ArrayList<DeKT_1_Bean> ds= new ArrayList<DeKT_1_Bean>();
		 dc.KetNoi();
		 String sql="select * from MATHANG";
		 PreparedStatement cmd= dc.cn.prepareStatement(sql);
		 ResultSet rs= cmd.executeQuery();
		 while(rs.next()) {
			 String mahang=rs.getString("MaHang");
			 String tenhang=rs.getString("TenHang");
			 String tenncc=rs.getString("TenNCC");
			 long soluong=rs.getLong("SoLuong");
			 long gia=rs.getLong("Gia");
			 String anh=rs.getString("Anh");
			 DeKT_1_Bean s = new DeKT_1_Bean(mahang, tenhang, tenncc, soluong, gia, anh);
			 ds.add(s);
			 
		 }
		 rs.close();
		 dc.cn.close();
		 return ds;
	 }

}
