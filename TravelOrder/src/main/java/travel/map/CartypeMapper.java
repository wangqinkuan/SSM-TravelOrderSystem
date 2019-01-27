package travel.map;

import travel.bean.Cartype;

public interface CartypeMapper {
    int deleteByPrimaryKey(Integer carTypeId);

    int insert(Cartype record);

    int insertSelective(Cartype record);

    Cartype selectByPrimaryKey(Integer carTypeId);

    int updateByPrimaryKeySelective(Cartype record);

    int updateByPrimaryKey(Cartype record);
}