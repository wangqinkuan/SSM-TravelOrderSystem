package travel.service;

import travel.bean.Customers;

public interface CustService {
	public Customers getCustomerByUsernameAndPassword(String username,String password); 

	public int Regist(Customers customers);
}
