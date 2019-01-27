package travel.service;

import java.util.List;

import travel.bean.Flightrecord;
import travel.bean.Flights;

public interface FlightService {
	int deleteFlightByFlightId(Integer flightId);
	
	int updateFlightByFlightNum(Flights flights);
	
	int createFlight(Flights flights);
	
	int cancelFlight(Integer Id,Integer flightId);
	
	List<Flights> getAllFlights();
	
	List<Flights> searchFlightsByStartAndEnd(String start,String end);
	
	int orderFlight(Integer flightId,Integer custId);
	
	List<Flightrecord> getFlightRecordByCustId(Integer custId);
	
	List<Flightrecord> getPathRecordByCustId(Integer custId);
}
