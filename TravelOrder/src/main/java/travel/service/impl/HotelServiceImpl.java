package travel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import travel.bean.Hotels;
import travel.map.HotelrecordMapper;
import travel.map.HotelsMapper;
import travel.service.HotelService;

@Service
public class HotelServiceImpl implements HotelService{
	@Autowired
	HotelsMapper hotelsmapper;
	
	@Autowired
	HotelrecordMapper hotelrecordmapper;

	@Override
	public List<Hotels> getAllHotels() {
		// TODO Auto-generated method stub
		return hotelsmapper.selectAllHotels();
	}

	@Override
	public List<Hotels> getHotelsRecordByCustId(Integer custId) {
		// TODO Auto-generated method stub
		return hotelrecordmapper.selectHotelRecordByCustId(custId);
	}

	@Override
	public int orderHotel(Integer hotelId, Integer custId) {
		// TODO Auto-generated method stub
		return hotelsmapper.orderHotel(hotelId, custId);
	}

	@Override
	public int cancelHotel(Integer Id,Integer hotelId) {
		// TODO Auto-generated method stub
		return hotelrecordmapper.updateHotelStatusByRecordId(Id,hotelId);
	}

	@Override
	public List<Hotels> searchHotelsByLocation(String location) {
		// TODO Auto-generated method stub
		return hotelsmapper.selectHotelsByLocation(location);
	}

}
