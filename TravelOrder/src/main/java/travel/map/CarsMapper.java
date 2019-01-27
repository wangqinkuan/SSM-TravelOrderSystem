package travel.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import travel.bean.Cars;

public interface CarsMapper {
	//¶©³µ´æ´¢¹ý³Ì
	int orderCar(@Param("car_id") Integer carId,@Param("cust_id") Integer custId);
	
	List<Cars> selectAllCars();
	
	List<Cars> selectCarsByLocation(String location);
	
    int deleteByPrimaryKey(Integer carId);

    int insert(Cars record);

    int insertSelective(Cars record);

    Cars selectByPrimaryKey(Integer carId);

    int updateByPrimaryKeySelective(Cars record);

    int updateByPrimaryKey(Cars record);
}