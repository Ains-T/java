package NghiaDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import NghiaBean.KhoaBean;
import NghiaDao.DungChung;

public class KhoaDao {
	DungChung dc= new DungChung();
	 public ArrayList<KhoaBean> getkhoa() throws Exception{
		 ArrayList<KhoaBean> ds= new ArrayList<KhoaBean>();
		 dc.KetNoi();
		 String sql="select * from KHOA";
		 PreparedStatement cmd= dc.cn.prepareStatement(sql);
		 ResultSet rs= cmd.executeQuery();
		 while(rs.next()) {
			 String makhoa=rs.getString("MaKhoa");
			 String tenkhoa=rs.getString("TenKhoa");
			 KhoaBean s= new KhoaBean(makhoa,tenkhoa);
			 ds.add(s);
			 
		 }
		 rs.close();
		 dc.cn.close();
		 return ds;
	 }

}
