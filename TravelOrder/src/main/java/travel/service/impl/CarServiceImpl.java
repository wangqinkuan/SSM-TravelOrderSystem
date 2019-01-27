package travel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import travel.bean.Cars;
import travel.map.CarrecordMapper;
import travel.map.CarsMapper;
import travel.service.CarService;

@Service
public class CarServiceImpl implements CarService {

	@Autowired
	CarsMapper carsmapper;
	
	@Autowired
	CarrecordMapper carrecordmapper;
	
	@Override
	public List<Cars> getAllCars() {
		// TODO Auto-generated method stub
		return carsmapper.selectAllCars();
	}

	@Override
	public List<Cars> getCarRecordByCustId(Integer custId) {
		// TODO Auto-generated method stub
		return carrecordmapper.selectCarRecordByCustId(custId);
	}

	@Override
	public int orderCar(Integer carId, Integer custId) {
		// TODO Auto-generated method stub
		return carsmapper.orderCar(carId, custId);
	}

	@Override
	public int cancelCar(Integer Id,Integer carId) {
		// TODO Auto-generated method stub
		return carrecordmapper.updateCarStatusByRecordId(Id,carId);
	}

	@Override
	public List<Cars> searchCarByLocation(String location) {
		// TODO Auto-generated method stub
		return carsmapper.selectCarsByLocation(location);
	}

}
