package travel.bean;

import java.util.Date;



import com.alibaba.fastjson.annotation.JSONField;



public class Carrecord {
	private Integer Id;
	
    private Integer carId;
    
    private String status;
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private Date updateDate;
    
    private Cars car;

	public Integer getCarId() {
		return carId;
	}

	public void setCarId(Integer carId) {
		this.carId = carId;
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

	public Cars getCar() {
		return car;
	}

	public void setCar(Cars car) {
		this.car = car;
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

    
}