package travel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import travel.bean.Customers;
import travel.map.CustomersMapper;
import travel.service.CustService;

@Service
public class CustServiceImpl implements CustService{
	
	@Autowired
	CustomersMapper customerMapper;
	
	@Override
	public Customers getCustomerByUsernameAndPassword(String username, String password) {
		// TODO Auto-generated method stub
		return customerMapper.selectByUserNameAndPassWord(username, password);
	}

	@Override
	public int Regist(Customers customers) {
		// TODO Auto-generated method stub
		return customerMapper.insert(customers);
	}

}
