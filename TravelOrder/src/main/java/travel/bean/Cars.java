package travel.bean;

public class Cars {
	
	private String carNum;
	
	private float price;
	
    private Integer carId;

    private Integer carTypeId;

    private String location;

    private Integer numCars;

    private Integer numAvail;
    //车辆类型，该字段来自cartype表，因此该数据结构代表一个view视图
    private String carType;

    public String getCarTpye() {
		return carType;
	}

	public void setCarTpye(String carType) {
		this.carType = carType;
	}

	public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public Integer getCarTypeId() {
        return carTypeId;
    }

    public void setCarTypeId(Integer carTypeId) {
        this.carTypeId = carTypeId;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Integer getNumCars() {
        return numCars;
    }

    public void setNumCars(Integer numCars) {
        this.numCars = numCars;
    }

    public Integer getNumAvail() {
        return numAvail;
    }

    public void setNumAvail(Integer numAvail) {
        this.numAvail = numAvail;
    }

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
}