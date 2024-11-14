package com.transys.dao;

import java.util.List;

import com.transys.domain.Alarm;

public interface AlarmDao {
	  List<Alarm> getAlarmSummary(Alarm params);
	  List<Alarm> getAlarmList(Alarm params);
	  
}
