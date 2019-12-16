package NghiaDao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import NghiaBean.KhoaBean;
import NghiaBean.SinhVienBean;

public class SinhVienDao {
	DungChung dc= new DungChung();
	 public ArrayList<SinhVienBean> getSV() throws Exception{
		 ArrayList<SinhVienBean> ds= new ArrayList<SinhVienBean>();
		 dc.KetNoi();
		 String sql="select * from SinhVien";
		 PreparedStatement cmd= dc.cn.prepareStatement(sql);
		 ResultSet rs= cmd.executeQuery();
		 while(rs.next()) {
			 String masv=rs.getString("MaSV");
			 String hoten=rs.getString("HoTen");
			 Date ngaysinh=rs.getDate("NgaySinh");
			 String diachi=rs.getString("DiaChi");
			 String makhoa=rs.getString("MaKhoa");
			 SinhVienBean s= new SinhVienBean(masv, hoten, ngaysinh, diachi, makhoa);
			 ds.add(s);
			 
		 }
		 rs.close();
		 dc.cn.close();
		 return ds;
	 }

}
