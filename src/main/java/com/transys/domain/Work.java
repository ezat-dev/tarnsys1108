package com.transys.domain;

public class Work {

   //t_siljuk 테이블
   private String devicecode;
   private String lotno;
   private String pumbun;
   private String pumcode;
   private int loadcnt;
   private String regtime;
   private String starttime;
   private String endtime;
   private String startcarb;
   private String endcarb;
   private String endsalt;
   private String startwash;
   private String endwash;
   private String endplan;
   private String beginshot;
   private String beginshak;
   private int realcnt;
   private float set_tmp1;
   private float action_tmp1;
   private float set_tmp2;
   private float action_tmp2;
   private float set_tmp3;
   private float action_tmp3;
   private float set_tmp4;
   private float action_tmp4;
   private float set_cp1;
   private float action_cp1;
   private float set_cp2;
   private float action_cp2;
   private float set_cp3;
   private float action_cp3;
   private String cyc1_time;
   private String cyc1_s;
   private String cyc1_e;
   private String cyc2_time;
   private String cyc2_s;
   private String cyc2_e;
   private String cyc3_time;
   private String cyc3_s;
   private String cyc3_e;
   private String cyc4_time;
   private String cyc4_s;
   private String cyc4_e;
   private int cur_location;
    private String datagubun;
    private String meslot;
    private String remark;
    
    //작업일보 조회조건 중 날짜
    private String searchStartDate;
    private String searchEndDate;
    
    //t_product 테이블
//   private String pumcode;   //t_siljuk테이블과 중복으로 주석처리   
   private String pumname;
   private String gijong;
   private String dobun;
   private int cnt;
   private String writer;
   private String insertday;
   private String updateday;
   private String base_tmp1;
   private String base_tmp2;
   private String base_tmp3;
   private String base_tmp4;
   private String base_cp1;
   private String base_cp2;
   private String base_cp3;
   private String base_cyc1;
   private String base_cyc2;
   private String base_cyc3;
   private String base_cyc4;
   private int cycleno;
   private String material;
   private String danjung;
   private String deepL;
   private String deepH;
   private String surfhard;
   private String deephard;
   private String inshard;
   private String cycletime;
   private int agitate_rpm;
   private String common_device;
    
    //t_work_month 테이블
   private String keymonth;
/*   private String devicecode; //t_siljuk에 있어서 주석처리
   private String pumcode;
   private String pumname;
   private String gijong;
   private String dobun;*/
   private int totalout;
   private int realout;
   
   //t_work_year 테이블
   private String keyyear;
   /*   private String devicecode; //t_siljuk에 있어서 주석처리
   private String pumcode;
   private String pumname;
   private String gijong;
   private String dobun;*/   
   private int m01;
   private int m02;
   private int m03;
   private int m04;
   private int m05;
   private int m06;
   private int m07;
   private int m08;
   private int m09;
   private int m10;
   private int m11;
   private int m12;

   private int seq;
   
   public String getDevicecode() {
      return devicecode;
   }
   public void setDevicecode(String devicecode) {
      this.devicecode = devicecode;
   }
   public String getLotno() {
      return lotno;
   }
   public void setLotno(String lotno) {
      this.lotno = lotno;
   }
   public String getPumbun() {
      return pumbun;
   }
   public void setPumbun(String pumbun) {
      this.pumbun = pumbun;
   }
   public String getPumcode() {
      return pumcode;
   }
   public void setPumcode(String pumcode) {
      this.pumcode = pumcode;
   }
   public int getLoadcnt() {
      return loadcnt;
   }
   public void setLoadcnt(int loadcnt) {
      this.loadcnt = loadcnt;
   }
   public String getRegtime() {
      return regtime;
   }
   public void setRegtime(String regtime) {
      this.regtime = regtime;
   }
   public String getStarttime() {
      return starttime;
   }
   public void setStarttime(String starttime) {
      this.starttime = starttime;
   }
   public String getEndtime() {
      return endtime;
   }
   public void setEndtime(String endtime) {
      this.endtime = endtime;
   }
   public String getStartcarb() {
      return startcarb;
   }
   public void setStartcarb(String startcarb) {
      this.startcarb = startcarb;
   }
   public String getEndcarb() {
      return endcarb;
   }
   public void setEndcarb(String endcarb) {
      this.endcarb = endcarb;
   }
   public String getEndsalt() {
      return endsalt;
   }
   public void setEndsalt(String endsalt) {
      this.endsalt = endsalt;
   }
   public String getStartwash() {
      return startwash;
   }
   public void setStartwash(String startwash) {
      this.startwash = startwash;
   }
   public String getEndwash() {
      return endwash;
   }
   public void setEndwash(String endwash) {
      this.endwash = endwash;
   }
   public String getEndplan() {
      return endplan;
   }
   public void setEndplan(String endplan) {
      this.endplan = endplan;
   }
   public String getBeginshot() {
      return beginshot;
   }
   public void setBeginshot(String beginshot) {
      this.beginshot = beginshot;
   }
   public String getBeginshak() {
      return beginshak;
   }
   public void setBeginshak(String beginshak) {
      this.beginshak = beginshak;
   }
   public int getRealcnt() {
      return realcnt;
   }
   public void setRealcnt(int realcnt) {
      this.realcnt = realcnt;
   }
   public float getSet_tmp1() {
      return set_tmp1;
   }
   public void setSet_tmp1(float set_tmp1) {
      this.set_tmp1 = set_tmp1;
   }
   public float getAction_tmp1() {
      return action_tmp1;
   }
   public void setAction_tmp1(float action_tmp1) {
      this.action_tmp1 = action_tmp1;
   }
   public float getSet_tmp2() {
      return set_tmp2;
   }
   public void setSet_tmp2(float set_tmp2) {
      this.set_tmp2 = set_tmp2;
   }
   public float getAction_tmp2() {
      return action_tmp2;
   }
   public void setAction_tmp2(float action_tmp2) {
      this.action_tmp2 = action_tmp2;
   }
   public float getSet_tmp3() {
      return set_tmp3;
   }
   public void setSet_tmp3(float set_tmp3) {
      this.set_tmp3 = set_tmp3;
   }
   public float getAction_tmp3() {
      return action_tmp3;
   }
   public void setAction_tmp3(float action_tmp3) {
      this.action_tmp3 = action_tmp3;
   }
   public float getSet_tmp4() {
      return set_tmp4;
   }
   public void setSet_tmp4(float set_tmp4) {
      this.set_tmp4 = set_tmp4;
   }
   public float getAction_tmp4() {
      return action_tmp4;
   }
   public void setAction_tmp4(float action_tmp4) {
      this.action_tmp4 = action_tmp4;
   }
   public float getSet_cp1() {
      return set_cp1;
   }
   public void setSet_cp1(float set_cp1) {
      this.set_cp1 = set_cp1;
   }
   public float getAction_cp1() {
      return action_cp1;
   }
   public void setAction_cp1(float action_cp1) {
      this.action_cp1 = action_cp1;
   }
   public float getSet_cp2() {
      return set_cp2;
   }
   public void setSet_cp2(float set_cp2) {
      this.set_cp2 = set_cp2;
   }
   public float getAction_cp2() {
      return action_cp2;
   }
   public void setAction_cp2(float action_cp2) {
      this.action_cp2 = action_cp2;
   }
   public float getSet_cp3() {
      return set_cp3;
   }
   public void setSet_cp3(float set_cp3) {
      this.set_cp3 = set_cp3;
   }
   public float getAction_cp3() {
      return action_cp3;
   }
   public void setAction_cp3(float action_cp3) {
      this.action_cp3 = action_cp3;
   }
   public String getCyc1_time() {
      return cyc1_time;
   }
   public void setCyc1_time(String cyc1_time) {
      this.cyc1_time = cyc1_time;
   }
   public String getCyc1_s() {
      return cyc1_s;
   }
   public void setCyc1_s(String cyc1_s) {
      this.cyc1_s = cyc1_s;
   }
   public String getCyc1_e() {
      return cyc1_e;
   }
   public void setCyc1_e(String cyc1_e) {
      this.cyc1_e = cyc1_e;
   }
   public String getCyc2_time() {
      return cyc2_time;
   }
   public void setCyc2_time(String cyc2_time) {
      this.cyc2_time = cyc2_time;
   }
   public String getCyc2_s() {
      return cyc2_s;
   }
   public void setCyc2_s(String cyc2_s) {
      this.cyc2_s = cyc2_s;
   }
   public String getCyc2_e() {
      return cyc2_e;
   }
   public void setCyc2_e(String cyc2_e) {
      this.cyc2_e = cyc2_e;
   }
   public String getCyc3_time() {
      return cyc3_time;
   }
   public void setCyc3_time(String cyc3_time) {
      this.cyc3_time = cyc3_time;
   }
   public String getCyc3_s() {
      return cyc3_s;
   }
   public void setCyc3_s(String cyc3_s) {
      this.cyc3_s = cyc3_s;
   }
   public String getCyc3_e() {
      return cyc3_e;
   }
   public void setCyc3_e(String cyc3_e) {
      this.cyc3_e = cyc3_e;
   }
   public String getCyc4_time() {
      return cyc4_time;
   }
   public void setCyc4_time(String cyc4_time) {
      this.cyc4_time = cyc4_time;
   }
   public String getCyc4_s() {
      return cyc4_s;
   }
   public void setCyc4_s(String cyc4_s) {
      this.cyc4_s = cyc4_s;
   }
   public String getCyc4_e() {
      return cyc4_e;
   }
   public void setCyc4_e(String cyc4_e) {
      this.cyc4_e = cyc4_e;
   }
   public int getCur_location() {
      return cur_location;
   }
   public void setCur_location(int cur_location) {
      this.cur_location = cur_location;
   }
   public String getDatagubun() {
      return datagubun;
   }
   public void setDatagubun(String datagubun) {
      this.datagubun = datagubun;
   }
   public String getMeslot() {
      return meslot;
   }
   public void setMeslot(String meslot) {
      this.meslot = meslot;
   }
   public String getRemark() {
      return remark;
   }
   public void setRemark(String remark) {
      this.remark = remark;
   }
   public String getPumname() {
      return pumname;
   }
   public void setPumname(String pumname) {
      this.pumname = pumname;
   }
   public String getGijong() {
      return gijong;
   }
   public void setGijong(String gijong) {
      this.gijong = gijong;
   }
   public String getDobun() {
      return dobun;
   }
   public void setDobun(String dobun) {
      this.dobun = dobun;
   }
   public int getCnt() {
      return cnt;
   }
   public void setCnt(int cnt) {
      this.cnt = cnt;
   }
   public String getWriter() {
      return writer;
   }
   public void setWriter(String writer) {
      this.writer = writer;
   }
   public String getInsertday() {
      return insertday;
   }
   public void setInsertday(String insertday) {
      this.insertday = insertday;
   }
   public String getUpdateday() {
      return updateday;
   }
   public void setUpdateday(String updateday) {
      this.updateday = updateday;
   }
   public String getBase_tmp1() {
      return base_tmp1;
   }
   public void setBase_tmp1(String base_tmp1) {
      this.base_tmp1 = base_tmp1;
   }
   public String getBase_tmp2() {
      return base_tmp2;
   }
   public void setBase_tmp2(String base_tmp2) {
      this.base_tmp2 = base_tmp2;
   }
   public String getBase_tmp3() {
      return base_tmp3;
   }
   public void setBase_tmp3(String base_tmp3) {
      this.base_tmp3 = base_tmp3;
   }
   public String getBase_tmp4() {
      return base_tmp4;
   }
   public void setBase_tmp4(String base_tmp4) {
      this.base_tmp4 = base_tmp4;
   }
   public String getBase_cp1() {
      return base_cp1;
   }
   public void setBase_cp1(String base_cp1) {
      this.base_cp1 = base_cp1;
   }
   public String getBase_cp2() {
      return base_cp2;
   }
   public void setBase_cp2(String base_cp2) {
      this.base_cp2 = base_cp2;
   }
   public String getBase_cp3() {
      return base_cp3;
   }
   public void setBase_cp3(String base_cp3) {
      this.base_cp3 = base_cp3;
   }
   public String getBase_cyc1() {
      return base_cyc1;
   }
   public void setBase_cyc1(String base_cyc1) {
      this.base_cyc1 = base_cyc1;
   }
   public String getBase_cyc2() {
      return base_cyc2;
   }
   public void setBase_cyc2(String base_cyc2) {
      this.base_cyc2 = base_cyc2;
   }
   public String getBase_cyc3() {
      return base_cyc3;
   }
   public void setBase_cyc3(String base_cyc3) {
      this.base_cyc3 = base_cyc3;
   }
   public String getBase_cyc4() {
      return base_cyc4;
   }
   public void setBase_cyc4(String base_cyc4) {
      this.base_cyc4 = base_cyc4;
   }
   public int getCycleno() {
      return cycleno;
   }
   public void setCycleno(int cycleno) {
      this.cycleno = cycleno;
   }
   public String getMaterial() {
      return material;
   }
   public void setMaterial(String material) {
      this.material = material;
   }
   public String getDanjung() {
      return danjung;
   }
   public void setDanjung(String danjung) {
      this.danjung = danjung;
   }
   public String getDeepL() {
      return deepL;
   }
   public void setDeepL(String deepL) {
      this.deepL = deepL;
   }
   public String getDeepH() {
      return deepH;
   }
   public void setDeepH(String deepH) {
      this.deepH = deepH;
   }
   public String getSurfhard() {
      return surfhard;
   }
   public void setSurfhard(String surfhard) {
      this.surfhard = surfhard;
   }
   public String getDeephard() {
      return deephard;
   }
   public void setDeephard(String deephard) {
      this.deephard = deephard;
   }
   public String getInshard() {
      return inshard;
   }
   public void setInshard(String inshard) {
      this.inshard = inshard;
   }
   public String getCycletime() {
      return cycletime;
   }
   public void setCycletime(String cycletime) {
      this.cycletime = cycletime;
   }
   public int getAgitate_rpm() {
      return agitate_rpm;
   }
   public void setAgitate_rpm(int agitate_rpm) {
      this.agitate_rpm = agitate_rpm;
   }
   public String getCommon_device() {
      return common_device;
   }
   public void setCommon_device(String common_device) {
      this.common_device = common_device;
   }
   public String getKeymonth() {
      return keymonth;
   }
   public void setKeymonth(String keymonth) {
      this.keymonth = keymonth;
   }
   public int getTotalout() {
      return totalout;
   }
   public void setTotalout(int totalout) {
      this.totalout = totalout;
   }
   public int getRealout() {
      return realout;
   }
   public void setRealout(int realout) {
      this.realout = realout;
   }
   public String getKeyyear() {
      return keyyear;
   }
   public void setKeyyear(String keyyear) {
      this.keyyear = keyyear;
   }
   public int getM01() {
      return m01;
   }
   public void setM01(int m01) {
      this.m01 = m01;
   }
   public int getM02() {
      return m02;
   }
   public void setM02(int m02) {
      this.m02 = m02;
   }
   public int getM03() {
      return m03;
   }
   public void setM03(int m03) {
      this.m03 = m03;
   }
   public int getM04() {
      return m04;
   }
   public void setM04(int m04) {
      this.m04 = m04;
   }
   public int getM05() {
      return m05;
   }
   public void setM05(int m05) {
      this.m05 = m05;
   }
   public int getM06() {
      return m06;
   }
   public void setM06(int m06) {
      this.m06 = m06;
   }
   public int getM07() {
      return m07;
   }
   public void setM07(int m07) {
      this.m07 = m07;
   }
   public int getM08() {
      return m08;
   }
   public void setM08(int m08) {
      this.m08 = m08;
   }
   public int getM09() {
      return m09;
   }
   public void setM09(int m09) {
      this.m09 = m09;
   }
   public int getM10() {
      return m10;
   }
   public void setM10(int m10) {
      this.m10 = m10;
   }
   public int getM11() {
      return m11;
   }
   public void setM11(int m11) {
      this.m11 = m11;
   }
   public int getM12() {
      return m12;
   }
   public void setM12(int m12) {
      this.m12 = m12;
   }
   public String getSearchStartDate() {
      return searchStartDate;
   }
   public void setSearchStartDate(String searchStartDate) {
      this.searchStartDate = searchStartDate;
   }
   public String getSearchEndDate() {
      return searchEndDate;
   }
   public void setSearchEndDate(String searchEndDate) {
      this.searchEndDate = searchEndDate;
   }
   public int getSeq() {
      return seq;
   }
   public void setSeq(int seq) {
      this.seq = seq;
   }
   
   
}
