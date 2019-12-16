package bo;

import java.util.ArrayList;

import bean.DeKT_1_Bean;
import bean.sachbean;
import dao.DeKT_1_Dao;

public class DeKT_1_Bo {
	DeKT_1_Dao hang = new DeKT_1_Dao();
	ArrayList<DeKT_1_Bean> ds;
	 public ArrayList<DeKT_1_Bean> gethang() throws Exception{
		 ds= hang.gethang();
		 return ds;
	 }
	 public ArrayList<DeKT_1_Bean> getchitiet(String ms) throws Exception{
		 ArrayList<DeKT_1_Bean> tam= new ArrayList<DeKT_1_Bean>();
		 for(DeKT_1_Bean s:ds)
			 if(s.getMahang().trim().equals(ms))
				 tam.add(s);
		 return tam;
	 }
	 public ArrayList<DeKT_1_Bean> gettimkiem(String m) throws Exception{
		 ArrayList<DeKT_1_Bean> tam= new ArrayList<DeKT_1_Bean>();
		 for(DeKT_1_Bean s:ds)
			 if(s.getTenhang().toLowerCase().trim().contains(m.toLowerCase().trim()))
				 tam.add(s);
		 return tam;
	 }

}
