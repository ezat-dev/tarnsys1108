package com.transys.service;

import java.util.concurrent.ExecutionException;

import com.transys.domain.Work;

public interface PlcService {

	Work getPlcWriteWorkData();

	void setPlcWriteDataUpdate(Work work);

	void setPlcWriteProc(Work work);

	void setPlcWriteDataDelete(Work work);

	void plcWrite() throws InterruptedException, ExecutionException;
}
