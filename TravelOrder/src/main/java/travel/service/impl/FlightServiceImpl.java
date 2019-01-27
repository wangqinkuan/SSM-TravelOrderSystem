package travel.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import travel.bean.Flightrecord;
import travel.bean.Flights;
import travel.map.FlightrecordMapper;
import travel.map.FlightsMapper;
import travel.service.FlightService;

@Service
public class FlightServiceImpl implements FlightService{

	@Autowired
	FlightsMapper flightsMapper;
	
	@Autowired
	FlightrecordMapper flightrecordMapper;
	
	@Override
	public List<Flights> getAllFlights() {
		// TODO Auto-generated method stub
		return flightsMapper.selectAllFlights();
	}

	@Override
	public int orderFlight(Integer flightId,Integer custId) {
		// TODO Auto-generated method stub
		return flightsMapper.orderFlight(flightId, custId);
	}

	@Override
	public List<Flightrecord> getFlightRecordByCustId(Integer custId) {
		// TODO Auto-generated method stub
		return flightrecordMapper.selectFlightRecordByCustId(custId);
	}

	@Override
	public int cancelFlight(Integer Id,Integer flightId) {
		// TODO Auto-generated method stub
		return flightrecordMapper.updateFlightStatusByRecordId(Id,flightId);
	}

	@Override
	public List<Flightrecord> getPathRecordByCustId(Integer custId) {
		// TODO Auto-generated method stub
		return flightrecordMapper.selectPathRecordByCustId(custId);
	}

	@Override
	public List<Flights> searchFlightsByStartAndEnd(String start,String end) {
		// TODO Auto-generated method stub
		return flightsMapper.selectFlightsByStartAndEnd(start, end);
	}

	@Override
	public int createFlight(Flights flights) {
		// TODO Auto-generated method stub
		return flightsMapper.insert(flights);
	}

	@Override
	public int updateFlightByFlightNum(Flights flights) {
		// TODO Auto-generated method stub
		return flightsMapper.updateByFlightNum(flights);
	}

	@Override
	public int deleteFlightByFlightId(Integer flightId) {
		// TODO Auto-generated method stub
		return flightsMapper.deleteByPrimaryKey(flightId);
	}

}
