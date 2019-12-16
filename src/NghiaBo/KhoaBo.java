package NghiaBo;

import java.util.ArrayList;

import NghiaBean.KhoaBean;
import NghiaDao.KhoaDao;


public class KhoaBo {
	KhoaDao khoa= new KhoaDao();
	ArrayList<KhoaBean> ds;
	public ArrayList<KhoaBean> getkhoa() throws Exception{
		ds=khoa.getkhoa();
		return ds;
	}

}
