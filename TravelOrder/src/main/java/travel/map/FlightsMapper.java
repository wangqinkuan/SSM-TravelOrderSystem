package travel.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PatchMapping;

import travel.bean.Flights;

public interface FlightsMapper {
	
	List<Flights> selectFlightsByStartAndEnd(@Param("start") String start,@Param("end") String end);
	
	List<Flights> selectAllFlights();
	
	//预定航班，调用存储过程插入航班记录，更新航班数据
	int orderFlight(@Param("flight_id") Integer flightId,@Param("cust_id") Integer custId);
	
    int deleteByPrimaryKey(Integer flightId);

    int insert(Flights record);

    int insertSelective(Flights record);

    Flights selectByPrimaryKey(Integer flightId);

    int updateByPrimaryKeySelective(Flights record);

    int updateByPrimaryKey(Flights record);
    
    int updateByFlightNum(Flights flights);
}