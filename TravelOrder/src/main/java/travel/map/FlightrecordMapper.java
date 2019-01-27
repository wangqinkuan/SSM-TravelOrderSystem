package travel.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import travel.bean.Flightrecord;

public interface FlightrecordMapper {
	//通过用户id查询用户预约的航班
	List<Flightrecord> selectFlightRecordByCustId(Integer custId);
	
	//通过用户id查询用户已出行的航班
	List<Flightrecord> selectPathRecordByCustId(Integer custId);
	
	int updateFlightStatusByRecordId(@Param("id") Integer id,@Param("flight_id") Integer flightId);
	
    int insert(Flightrecord record);

    int insertSelective(Flightrecord record);
}