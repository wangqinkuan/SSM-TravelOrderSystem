package travel.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import travel.bean.Hotelrecord;
import travel.bean.Hotels;

public interface HotelrecordMapper {
	//通过用户id查询用户预约的旅店的记录
	List<Hotels> selectHotelRecordByCustId(Integer custId);
	
	int updateHotelStatusByRecordId(@Param("id") Integer id,@Param("hotel_id") Integer hotelId);
	
    int insert(Hotelrecord record);

    int insertSelective(Hotelrecord record);
}