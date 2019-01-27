package travel.service;

import java.util.List;

import travel.bean.Cars;

public interface CarService {
	int cancelCar(Integer Id,Integer carId);
	
	int orderCar(Integer carId,Integer custId);
	
	List<Cars> getAllCars();
	
	List<Cars> searchCarByLocation(String location);
	
	List<Cars> getCarRecordByCustId(Integer custId);
}
