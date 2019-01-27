package travel.bean;

import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class Flights {
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Date startDate;
	
    private Integer flightId;

    private String flightNum;

    private Float price;

    private Integer seatNum;

    private Integer availNum;

    private String fromCity;

    private String arivCity;

    public Integer getFlightId() {
        return flightId;
    }

    public void setFlightId(Integer flightId) {
        this.flightId = flightId;
    }

    public String getFlightNum() {
        return flightNum;
    }

    public void setFlightNum(String flightNum) {
        this.flightNum = flightNum;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getSeatNum() {
        return seatNum;
    }

    public void setSeatNum(Integer seatNum) {
        this.seatNum = seatNum;
    }

    public Integer getAvailNum() {
        return availNum;
    }

    public void setAvailNum(Integer availNum) {
        this.availNum = availNum;
    }

    public String getFromCity() {
        return fromCity;
    }

    public void setFromCity(String fromCity) {
        this.fromCity = fromCity;
    }

    public String getArivCity() {
        return arivCity;
    }

    public void setArivCity(String arivCity) {
        this.arivCity = arivCity;
    }

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
}