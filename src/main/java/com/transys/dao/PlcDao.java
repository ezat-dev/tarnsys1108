package com.transys.dao;

import com.transys.domain.PlcWrite;

public interface PlcDao {

	PlcWrite getPlcWriteWorkData();

	void setPlcWriteDataUpdate(PlcWrite plcWrite);

	void setPlcWriteProc(PlcWrite plcWrite);

	void setPlcWriteDataDelete(PlcWrite plcWrite);

}
