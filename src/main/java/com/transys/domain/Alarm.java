package com.transys.domain;

public class Alarm {
	
		//t_alarm_happen 테이블
	    private String deviceCode;
	    private String deviceType;
	    private String deviceName;
	    private String plcAddr;
	    private String warnDesc;
	    private String repairDesc;
	    private String startTime;
	    private String endTime;
	    private String alarmTime;
	    private String kubun;
	    private int baseYear;
	    

	    //t_devicemaster 
	    private int deviceSeq;

	    
	    //t_alarm_sum
	    private int alarmYear;   
	    private Integer m01;      
	    private Integer m02;       
	    private Integer m03;        
	    private Integer m04;         
	    private Integer m05;        
	    private Integer m06;        
	    private Integer m07;       
	    private Integer m08;        
	    private Integer m09;        
	    private Integer m10;        
	    private Integer m11;       
	    private Integer m12;        

	    //t_AlarmMaster 
	  
	    private String plcAddrSub;    // plcaddr_sub
	    private String remark;        // remark
	    private String gubun;         // gubun
	    
    
		public String getPlcAddrSub() {
			return plcAddrSub;
		}
		public void setPlcAddrSub(String plcAddrSub) {
			this.plcAddrSub = plcAddrSub;
		}
		public String getRemark() {
			return remark;
		}
		public void setRemark(String remark) {
			this.remark = remark;
		}
		public String getGubun() {
			return gubun;
		}
		public void setGubun(String gubun) {
			this.gubun = gubun;
		}
		public int getAlarmYear() {
			return alarmYear;
		}
		public void setAlarmYear(int alarmYear) {
			this.alarmYear = alarmYear;
		}
		public Integer getM01() {
			return m01;
		}
		public void setM01(Integer m01) {
			this.m01 = m01;
		}
		public Integer getM02() {
			return m02;
		}
		public void setM02(Integer m02) {
			this.m02 = m02;
		}
		public Integer getM03() {
			return m03;
		}
		public void setM03(Integer m03) {
			this.m03 = m03;
		}
		public Integer getM04() {
			return m04;
		}
		public void setM04(Integer m04) {
			this.m04 = m04;
		}
		public Integer getM05() {
			return m05;
		}
		public void setM05(Integer m05) {
			this.m05 = m05;
		}
		public Integer getM06() {
			return m06;
		}
		public void setM06(Integer m06) {
			this.m06 = m06;
		}
		public Integer getM07() {
			return m07;
		}
		public void setM07(Integer m07) {
			this.m07 = m07;
		}
		public Integer getM08() {
			return m08;
		}
		public void setM08(Integer m08) {
			this.m08 = m08;
		}
		public Integer getM09() {
			return m09;
		}
		public void setM09(Integer m09) {
			this.m09 = m09;
		}
		public Integer getM10() {
			return m10;
		}
		public void setM10(Integer m10) {
			this.m10 = m10;
		}
		public Integer getM11() {
			return m11;
		}
		public void setM11(Integer m11) {
			this.m11 = m11;
		}
		public Integer getM12() {
			return m12;
		}
		public void setM12(Integer m12) {
			this.m12 = m12;
		}
		public int getDeviceSeq() {
			return deviceSeq;
		}
		public void setDeviceSeq(int deviceSeq) {
			this.deviceSeq = deviceSeq;
		}
		public String getDeviceCode() {
			return deviceCode;
		}
		public void setDeviceCode(String deviceCode) {
			this.deviceCode = deviceCode;
		}
		public String getDeviceType() {
			return deviceType;
		}
		public void setDeviceType(String deviceType) {
			this.deviceType = deviceType;
		}
		public String getDeviceName() {
			return deviceName;
		}
		public void setDeviceName(String deviceName) {
			this.deviceName = deviceName;
		}
		public String getPlcAddr() {
			return plcAddr;
		}
		public void setPlcAddr(String plcAddr) {
			this.plcAddr = plcAddr;
		}
		public String getWarnDesc() {
			return warnDesc;
		}
		public void setWarnDesc(String warnDesc) {
			this.warnDesc = warnDesc;
		}
		public String getRepairDesc() {
			return repairDesc;
		}
		public void setRepairDesc(String repairDesc) {
			this.repairDesc = repairDesc;
		}
		public String getStartTime() {
			return startTime;
		}
		public void setStartTime(String startTime) {
			this.startTime = startTime;
		}
		public String getEndTime() {
			return endTime;
		}
		public void setEndTime(String endTime) {
			this.endTime = endTime;
		}
		public String getAlarmTime() {
			return alarmTime;
		}
		public void setAlarmTime(String alarmTime) {
			this.alarmTime = alarmTime;
		}
		public String getKubun() {
			return kubun;
		}
		public void setKubun(String kubun) {
			this.kubun = kubun;
		}
		public int getBaseYear() {
			return baseYear;
		}
		public void setBaseYear(int baseYear) {
			this.baseYear = baseYear;
		}
	    
	    
}
