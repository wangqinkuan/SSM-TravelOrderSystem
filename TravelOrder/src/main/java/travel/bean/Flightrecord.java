package travel.bean;

import java.util.Date;



import com.alibaba.fastjson.annotation.JSONField;


public class Flightrecord {
	
	private Integer Id;
	
    private Flights flight;

    private String status;
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private Date updateDate;

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

	public Flights getFlight() {
		return flight;
	}

	public void setFlight(Flights flight) {
		this.flight = flight;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}
}