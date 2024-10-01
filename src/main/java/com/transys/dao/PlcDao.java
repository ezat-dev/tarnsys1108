package com.transys.dao;

import com.transys.domain.Work;

public interface PlcDao {

	Work getPlcWriteWorkData();

	void setPlcWriteDataUpdate(Work work);

	void setPlcWriteProc(Work work);

	void setPlcWriteDataDelete(Work work);

}
