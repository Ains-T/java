package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.sachbean;

public class sachdao1 {
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
			 
		 }
		 //b3 dong ket noi
		 dc.cn.close();
				 return ds;
		 
	 }

}
