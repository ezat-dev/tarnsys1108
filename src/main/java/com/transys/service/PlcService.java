package com.transys.service;

import java.util.concurrent.ExecutionException;

import com.transys.domain.PlcWrite;

public interface PlcService {

	PlcWrite getPlcWriteWorkData();

	void setPlcWriteDataUpdate(PlcWrite plcWrite);

	void setPlcWriteProc(PlcWrite plcWrite);

	void setPlcWriteDataDelete(PlcWrite plcWrite);

	void plcWrite() throws InterruptedException, ExecutionException;
}
