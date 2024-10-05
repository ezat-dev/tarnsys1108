package com.transys.service;

import java.util.concurrent.ExecutionException;

public interface PlcWriteService {

	void plcWrite() throws InterruptedException, ExecutionException;
}
