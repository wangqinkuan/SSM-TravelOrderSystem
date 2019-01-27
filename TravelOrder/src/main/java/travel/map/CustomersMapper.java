package travel.map;

import org.apache.ibatis.annotations.Param;

import travel.bean.Customers;

public interface CustomersMapper {
	
	Customers selectByUserNameAndPassWord(@Param("username") String username,@Param("password") String password);
	
    int deleteByPrimaryKey(Integer custId);

    int insert(Customers record);

    int insertSelective(Customers record);

    Customers selectByPrimaryKey(Integer custId);

    int updateByPrimaryKeySelective(Customers record);

    int updateByPrimaryKey(Customers record);
}