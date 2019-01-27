package travel.service;

import java.util.List;

import travel.bean.Hotels;



public interface HotelService {	
	
	int cancelHotel(Integer Id,Integer hotelId);
	
	int orderHotel(Integer hotelId,Integer custId);
	
	List<Hotels> getAllHotels();
	
	List<Hotels> searchHotelsByLocation(String location);
	
	List<Hotels> getHotelsRecordByCustId(Integer custId);
}
