package dao;

import java.sql.Date;
import java.sql.PreparedStatement;

public class HoaDonDao {
	 DungChung dc= new DungChung();
	 public int Them(String makh ,Date ngaymua, Boolean damua) throws Exception{
		 //Nguoc lai them vao csdl
		 dc.KetNoi();
		 String sql="INSERT INTO hoadon(makh,NgayMua,damua) VALUES (?,?,?)";
		 PreparedStatement cmd= dc.cn.prepareStatement(sql);
		 cmd.setString(1, makh);
	 	 cmd.setDate(2, ngaymua);
	 	 cmd.setBoolean(3, damua);
		 int rs= cmd.executeUpdate();
		 dc.cn.close();
		 return rs;
	  }

}
