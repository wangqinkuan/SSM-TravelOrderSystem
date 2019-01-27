package travel.bean;

import java.util.Date;



import com.alibaba.fastjson.annotation.JSONField;



public class Hotelrecord {
	private Integer Id;
	
    private Integer hotelId;    

    private String status;
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private Date updateDate;

    private Hotels hotel;

	public Integer getHotelId() {
		return hotelId;
	}

	public void setHotelId(Integer hotelId) {
		this.hotelId = hotelId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Hotels getHotels() {
		return hotel;
	}

	public void setHotels(Hotels hotel) {
		this.hotel = hotel;
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}
    
   
}