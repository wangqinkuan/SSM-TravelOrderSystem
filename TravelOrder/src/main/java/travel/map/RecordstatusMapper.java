package travel.map;

import travel.bean.Recordstatus;

public interface RecordstatusMapper {
    int deleteByPrimaryKey(Integer statusId);

    int insert(Recordstatus record);

    int insertSelective(Recordstatus record);

    Recordstatus selectByPrimaryKey(Integer statusId);

    int updateByPrimaryKeySelective(Recordstatus record);

    int updateByPrimaryKey(Recordstatus record);
}