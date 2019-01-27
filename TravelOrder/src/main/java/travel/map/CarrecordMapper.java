package travel.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import travel.bean.Carrecord;
import travel.bean.Cars;

public interface CarrecordMapper {
	//通过用户id查询用户预约的车的记录
	List<Cars> selectCarRecordByCustId(Integer custId);
	//取消预约车
	int updateCarStatusByRecordId(@Param("id") Integer id,@Param("car_id") Integer carId);
	
    int insert(Carrecord record);

    int insertSelective(Carrecord record);
}