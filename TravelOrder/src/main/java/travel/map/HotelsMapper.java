package travel.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import travel.bean.Hotels;

public interface HotelsMapper {
	//¶©ÂÃµê´æ´¢¹ý³Ì
	int orderHotel(@Param("hotel_id") Integer hotelId,@Param("cust_id") Integer custId);
	
	List<Hotels> selectAllHotels();
	
	List<Hotels> selectHotelsByLocation(String location);
	
    int deleteByPrimaryKey(Integer hotelId);

    int insert(Hotels record);

    int insertSelective(Hotels record);

    Hotels selectByPrimaryKey(Integer hotelId);

    int updateByPrimaryKeySelective(Hotels record);

    int updateByPrimaryKey(Hotels record);
}