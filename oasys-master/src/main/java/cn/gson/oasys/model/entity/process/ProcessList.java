package cn.gson.oasys.model.entity.process;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.ManyToOne;
import javax.persistence.Table;

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_ProcessList")
//主表
public class ProcessList{
	
	@Id
	@Column(name="process_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long processId;
	
	@Column(name="type_name")
	private String typeNmae;			//流程申请类型 
	
	@Column(name="status_id")
	private Long statusId;			//流程审核状态 id
	
	@Column(name="deeply_id")
	private Long deeply;    //紧急程度
	
	@Column(name="process_name")
	private String processName;		//标题
	
	@Column(name="process_des",columnDefinition="text")
	private String processDescribe;	//流程申请原因内容
	
	@ManyToOne
	@JoinColumn(name="process_user_id")
	private User userId;			//流程申请人
	
	@Column(name="apply_time")
	private Date applyTime;			//流程申请时间
	
	@Column(name="is_checked")
	private Boolean  rejected=false;		//流程是否被驳回
	
	@Column(name="start_time")
	private Date startTime;			//流程开始时间
	
	@Column(name="end_time")
	private Date endTime;			//流程结束时间
	
	@Column(name="procsee_days")
	private Double procseeDays;		//流程总天数
	
	@ManyToOne
	@JoinColumn(name="pro_file_id")
	private Attachment proFileid;   //流程附件id

	private String shenuser;

	@Column(name = "record_name")
	private String recordname;//项目备案单位

	@Column(name = "doc_number")
	private String docnumber;//项目备案文号

	@Column(name = "year")
	private String year;//项目建设年限

	@Column(name = "totalmoney")
	private String totalmoney;//项目总投资

	@Column(name = "isstore")
	private String isstore;//是否纳入统计库

	@Column(name = "intime")
	private Date intime;//入库时间

	@Column(name = "realtime")
	private Date realtime;//项目实际开工日期

	@Column(name = "finishtime")
	private Date finishtime;//项目计划竣工日期

	@Column(name = "moneysource")
	private String moneysource;//项目资金来源

	@Column(name = "products_money")
	private String products_money;//其中：生产性设备投资额（万元）

	@Column(name = "intel_money")
	private String intel_money;//其中：智能化设备投入（万元）

	@Column(name = "net_money")
	private String net_money;//其中：智能化设备投入（万元）

	@Column(name = "ent_year")
	private String ent_year;//年份

	@Column(name = "main_income")
	private String main_income;//主营业务收入（万元）

	@Column(name = "m_rise")
	private String m_rise;//同比增长（%）

	@Column(name = "net_profit")
	private String net_profit;//净利润（万元）

	@Column(name = "n_rise")
	private String n_rise;//同比增长（%）

	@Column(name = "machines")
	private String machines;//企业智能化设备（台）

	@Column(name = "totalmachine")
	private String totalmachine;//总设备（台）

	@Column(name = "machine_2")
	private String machine_2;//企业自有生产设备情况（2年内新设备）

	@Column(name = "machine_5")
	private String machine_5;//企业自有生产设备情况（使用5年设备）

	@Column(name = "machine_old")
	private String machine_old;//企业自有生产设备情况（已完成折旧设备）

	@Column(name = "core_machine")
	private String core_machine;//核心设备名称

	@Column(name = "machine_type")
	private String machine_type;//核心设备类型

	@Column(name = "machine_value")
	private String machine_value;//核心设备价值

	@Column(name = "machine_intime")
	private Date machine_intime;//核心设备购入时间

	@Column(name = "intention")
	private String intention;//自动化设备投入意向

	@Column(name = "erp")
	private String erp;//年份

	@Column(name = "erp_type")
	private String erp_type;//年份

	@Column(name = "erp_use")
	private String erp_use;//年份

	@Column(name = "erp_change")
	private String erp_change;//年份

	@Column(name = "oa")
	private String oa;//年份

	@Column(name = "oa_type")
	private String oa_type;//年份

	@Column(name = "oa_use")
	private String oa_use;//年份

	@Column(name = "oa_change")
	private String oa_change;//年份

	@Column(name = "mes")
	private String mes;//年份

	@Column(name = "mes_type")
	private String mes_type;//年份

	@Column(name = "mes_use")
	private String mes_use;//年份

	@Column(name = "mes_change")
	private String mes_change;//年份

	@Column(name = "aps")
	private String aps;//年份

	@Column(name = "aps_type")
	private String aps_type;//年份

	@Column(name = "aps_use")
	private String aps_use;//年份

	@Column(name = "aps_change")
	private String aps_change;//年份

	@Column(name = "wms")
	private String wms;//年份

	@Column(name = "wms_type")
	private String wms_type;//年份

	@Column(name = "wms_use")
	private String wms_use;//年份

	@Column(name = "wms_change")
	private String wms_change;//年份

	@Column(name = "mps")
	private String mps;//年份

	@Column(name = "mps_type")
	private String mps_type;//年份

	@Column(name = "mps_use")
	private String mps_use;//年份

	@Column(name = "mps_change")
	private String mps_change;//年份

	@Column(name = "scm")
	private String scm;//年份

	@Column(name = "scm_type")
	private String scm_type;//年份

	@Column(name = "scm_use")
	private String scm_use;//年份

	@Column(name = "scm_change")
	private String scm_change;//年份

	@Column(name = "ems")
	private String ems;//年份

	@Column(name = "ems_type")
	private String ems_type;//年份

	@Column(name = "ems_use")
	private String ems_use;//年份

	@Column(name = "ems_change")
	private String ems_change;//年份

	@Column(name = "other_sys")
	private String other_sys;//年份

	@Column(name = "remark1")
	private String remark1;//年份

	@Column(name = "sys_type")
	private String sys_type;//年份

	@Column(name = "train")
	private String train;//年份

	@Column(name = "remark2")
	private String remark2;//年份

	@Column(name = "workshop1")
	private String workshop1;//年份

	@Column(name = "regaddress1")
	private String regaddress1;//年份

	@Column(name = "workshop2")
	private String workshop2;//年份

	@Column(name = "regaddress2")
	private String regaddress2;//年份

	@Column(name = "regtime")
	private Date regtime;//年份

	@Column(name = "workshop3")
	private String workshop3;//年份

	@Column(name = "basic")
	private String basic;//年份

	@Column(name = "technology")
	private String technology;//年份

	@Column(name = "optimization")
	private String optimization;//年份

	@Column(name = "optimization_all")
	private String optimization_all;//年份

	@Column(name = "entaddress")
	private String entaddress;//年份

	@Column(name = "code")
	private String code;//年份

	@Column(name = "regmoney")
	private String regmoney;//年份

	@Column(name = "legal")
	private String legal;//年份

	@Column(name = "phonenum1")
	private String phonenum1;//年份

	@Column(name = "entnature")
	private String entnature;//年份

	@Column(name = "enttype")
	private String enttype;//年份

	@Column(name = "contacts")
	private String contacts;//年份

	@Column(name = "phonenum2")
	private String phonenum2;//年份

	@Column(name = "allmoney")
	private String allmoney;//年份

	@Column(name = "employees")
	private String employees;//年份

	@Column(name = "knowledge")
	private String knowledge;//年份

	@Column(name = "invention")
	private String invention;//年份

	@Column(name = "software")
	private String software;//年份

	@Column(name = "trademark")
	private String trademark;//年份

	@Column(name = "coveredarea")
	private String coveredarea;//年份

	@Column(name = "plantarea")
	private String plantarea;//年份

	@Column(name = "products")
	private String products;//年份

	@Override
	public String toString() {
		return "ProcessList{" +
				"processId=" + processId +
				", typeNmae='" + typeNmae + '\'' +
				", statusId=" + statusId +
				", deeply=" + deeply +
				", processName='" + processName + '\'' +
				", processDescribe='" + processDescribe + '\'' +
				", userId=" + userId +
				", applyTime=" + applyTime +
				", rejected=" + rejected +
				", startTime=" + startTime +
				", endTime=" + endTime +
				", procseeDays=" + procseeDays +
				", proFileid=" + proFileid +
				", shenuser='" + shenuser + '\'' +
				", recordname='" + recordname + '\'' +
				", docnumber='" + docnumber + '\'' +
				", year='" + year + '\'' +
				", totalmoney='" + totalmoney + '\'' +
				", isstore='" + isstore + '\'' +
				", intime=" + intime +
				", realtime=" + realtime +
				", finishtime=" + finishtime +
				", moneysource='" + moneysource + '\'' +
				", products_money='" + products_money + '\'' +
				", intel_money='" + intel_money + '\'' +
				", net_money='" + net_money + '\'' +
				", ent_year='" + ent_year + '\'' +
				", main_income='" + main_income + '\'' +
				", m_rise='" + m_rise + '\'' +
				", net_profit='" + net_profit + '\'' +
				", n_rise='" + n_rise + '\'' +
				", machines='" + machines + '\'' +
				", totalmachine='" + totalmachine + '\'' +
				", machine_2='" + machine_2 + '\'' +
				", machine_5='" + machine_5 + '\'' +
				", machine_old='" + machine_old + '\'' +
				", core_machine='" + core_machine + '\'' +
				", machine_type='" + machine_type + '\'' +
				", machine_value='" + machine_value + '\'' +
				", machine_intime=" + machine_intime +
				", intention='" + intention + '\'' +
				", erp='" + erp + '\'' +
				", erp_type='" + erp_type + '\'' +
				", erp_use='" + erp_use + '\'' +
				", erp_change='" + erp_change + '\'' +
				", oa='" + oa + '\'' +
				", oa_type='" + oa_type + '\'' +
				", oa_use='" + oa_use + '\'' +
				", oa_change='" + oa_change + '\'' +
				", mes='" + mes + '\'' +
				", mes_type='" + mes_type + '\'' +
				", mes_use='" + mes_use + '\'' +
				", mes_change='" + mes_change + '\'' +
				", aps='" + aps + '\'' +
				", aps_type='" + aps_type + '\'' +
				", aps_use='" + aps_use + '\'' +
				", aps_change='" + aps_change + '\'' +
				", wms='" + wms + '\'' +
				", wms_type='" + wms_type + '\'' +
				", wms_use='" + wms_use + '\'' +
				", wms_change='" + wms_change + '\'' +
				", mps='" + mps + '\'' +
				", mps_type='" + mps_type + '\'' +
				", mps_use='" + mps_use + '\'' +
				", mps_change='" + mps_change + '\'' +
				", scm='" + scm + '\'' +
				", scm_type='" + scm_type + '\'' +
				", scm_use='" + scm_use + '\'' +
				", scm_change='" + scm_change + '\'' +
				", ems='" + ems + '\'' +
				", ems_type='" + ems_type + '\'' +
				", ems_use='" + ems_use + '\'' +
				", ems_change='" + ems_change + '\'' +
				", other_sys='" + other_sys + '\'' +
				", remark1='" + remark1 + '\'' +
				", sys_type='" + sys_type + '\'' +
				", train='" + train + '\'' +
				", remark2='" + remark2 + '\'' +
				", workshop1='" + workshop1 + '\'' +
				", regaddress1='" + regaddress1 + '\'' +
				", workshop2='" + workshop2 + '\'' +
				", regaddress2='" + regaddress2 + '\'' +
				", regtime=" + regtime +
				", workshop3='" + workshop3 + '\'' +
				", basic='" + basic + '\'' +
				", technology='" + technology + '\'' +
				", optimization='" + optimization + '\'' +
				", optimization_all='" + optimization_all + '\'' +
				", entaddress='" + entaddress + '\'' +
				", code='" + code + '\'' +
				", regmoney='" + regmoney + '\'' +
				", legal='" + legal + '\'' +
				", phonenum1='" + phonenum1 + '\'' +
				", entnature='" + entnature + '\'' +
				", enttype='" + enttype + '\'' +
				", contacts='" + contacts + '\'' +
				", phonenum2='" + phonenum2 + '\'' +
				", allmoney='" + allmoney + '\'' +
				", employees='" + employees + '\'' +
				", knowledge='" + knowledge + '\'' +
				", invention='" + invention + '\'' +
				", software='" + software + '\'' +
				", trademark='" + trademark + '\'' +
				", coveredarea='" + coveredarea + '\'' +
				", plantarea='" + plantarea + '\'' +
				", products='" + products + '\'' +
				", honors='" + honors + '\'' +
				'}';
	}

	public String getRecordname() {
		return recordname;
	}

	public void setRecordname(String recordname) {
		this.recordname = recordname;
	}

	public String getHonors() {
		return honors;
	}

	public void setHonors(String honors) {
		this.honors = honors;
	}

	@Column(name = "honors")
	private String honors;//年份


	public String getEntaddress() {
		return entaddress;
	}

	public void setEntaddress(String entaddress) {
		this.entaddress = entaddress;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getRegmoney() {
		return regmoney;
	}

	public void setRegmoney(String regmoney) {
		this.regmoney = regmoney;
	}

	public String getLegal() {
		return legal;
	}

	public void setLegal(String legal) {
		this.legal = legal;
	}

	public String getPhonenum1() {
		return phonenum1;
	}

	public void setPhonenum1(String phonenum1) {
		this.phonenum1 = phonenum1;
	}

	public String getEntnature() {
		return entnature;
	}

	public void setEntnature(String entnature) {
		this.entnature = entnature;
	}

	public String getEnttype() {
		return enttype;
	}

	public void setEnttype(String enttype) {
		this.enttype = enttype;
	}

	public String getContacts() {
		return contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}

	public String getPhonenum2() {
		return phonenum2;
	}

	public void setPhonenum2(String phonenum2) {
		this.phonenum2 = phonenum2;
	}

	public String getAllmoney() {
		return allmoney;
	}

	public void setAllmoney(String allmoney) {
		this.allmoney = allmoney;
	}

	public String getEmployees() {
		return employees;
	}

	public void setEmployees(String employees) {
		this.employees = employees;
	}

	public String getKnowledge() {
		return knowledge;
	}

	public void setKnowledge(String knowledge) {
		this.knowledge = knowledge;
	}

	public String getInvention() {
		return invention;
	}

	public void setInvention(String invention) {
		this.invention = invention;
	}

	public String getSoftware() {
		return software;
	}

	public void setSoftware(String software) {
		this.software = software;
	}

	public String getTrademark() {
		return trademark;
	}

	public void setTrademark(String trademark) {
		this.trademark = trademark;
	}

	public String getCoveredarea() {
		return coveredarea;
	}

	public void setCoveredarea(String coveredarea) {
		this.coveredarea = coveredarea;
	}

	public String getPlantarea() {
		return plantarea;
	}

	public void setPlantarea(String plantarea) {
		this.plantarea = plantarea;
	}

	public String getProducts() {
		return products;
	}

	public void setProducts(String products) {
		this.products = products;
	}

	public String getRegaddress1() {
		return regaddress1;
	}

	public void setRegaddress1(String regaddress1) {
		this.regaddress1 = regaddress1;
	}

	public String getWorkshop2() {
		return workshop2;
	}

	public void setWorkshop2(String workshop2) {
		this.workshop2 = workshop2;
	}

	public String getRegaddress2() {
		return regaddress2;
	}

	public void setRegaddress2(String regaddress2) {
		this.regaddress2 = regaddress2;
	}

	public String getWorkshop3() {
		return workshop3;
	}

	public void setWorkshop3(String workshop3) {
		this.workshop3 = workshop3;
	}

	public String getBasic() {
		return basic;
	}

	public void setBasic(String basic) {
		this.basic = basic;
	}

	public String getTechnology() {
		return technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology;
	}

	public String getOptimization() {
		return optimization;
	}

	public void setOptimization(String optimization) {
		this.optimization = optimization;
	}

	public String getOptimization_all() {
		return optimization_all;
	}

	public void setOptimization_all(String optimization_all) {
		this.optimization_all = optimization_all;
	}

	public String getWorkshop1() {
		return workshop1;
	}

	public void setWorkshop1(String workshop1) {
		this.workshop1 = workshop1;
	}

	public String getWms_use() {
		return wms_use;
	}

	public void setWms_use(String wms_use) {
		this.wms_use = wms_use;
	}

	public String getErp() {
		return erp;
	}

	public void setErp(String erp) {
		this.erp = erp;
	}

	public String getErp_type() {
		return erp_type;
	}

	public void setErp_type(String erp_type) {
		this.erp_type = erp_type;
	}

	public String getErp_use() {
		return erp_use;
	}

	public void setErp_use(String erp_use) {
		this.erp_use = erp_use;
	}

	public String getErp_change() {
		return erp_change;
	}

	public void setErp_change(String erp_change) {
		this.erp_change = erp_change;
	}

	public String getOa() {
		return oa;
	}

	public void setOa(String oa) {
		this.oa = oa;
	}

	public String getOa_type() {
		return oa_type;
	}

	public void setOa_type(String oa_type) {
		this.oa_type = oa_type;
	}

	public String getOa_use() {
		return oa_use;
	}

	public void setOa_use(String oa_use) {
		this.oa_use = oa_use;
	}

	public String getOa_change() {
		return oa_change;
	}

	public void setOa_change(String oa_change) {
		this.oa_change = oa_change;
	}

	public String getMes() {
		return mes;
	}

	public void setMes(String mes) {
		this.mes = mes;
	}

	public String getMes_type() {
		return mes_type;
	}

	public void setMes_type(String mes_type) {
		this.mes_type = mes_type;
	}

	public String getMes_use() {
		return mes_use;
	}

	public void setMes_use(String mes_use) {
		this.mes_use = mes_use;
	}

	public String getMes_change() {
		return mes_change;
	}

	public void setMes_change(String mes_change) {
		this.mes_change = mes_change;
	}

	public String getAps() {
		return aps;
	}

	public void setAps(String aps) {
		this.aps = aps;
	}

	public String getAps_type() {
		return aps_type;
	}

	public void setAps_type(String aps_type) {
		this.aps_type = aps_type;
	}

	public String getAps_use() {
		return aps_use;
	}

	public void setAps_use(String aps_use) {
		this.aps_use = aps_use;
	}

	public String getAps_change() {
		return aps_change;
	}

	public void setAps_change(String aps_change) {
		this.aps_change = aps_change;
	}

	public String getWms() {
		return wms;
	}

	public void setWms(String wms) {
		this.wms = wms;
	}

	public String getWms_type() {
		return wms_type;
	}

	public void setWms_type(String wms_type) {
		this.wms_type = wms_type;
	}

	public String getWms_change() {
		return wms_change;
	}

	public void setWms_change(String wms_change) {
		this.wms_change = wms_change;
	}

	public String getMps() {
		return mps;
	}

	public void setMps(String mps) {
		this.mps = mps;
	}

	public String getMps_type() {
		return mps_type;
	}

	public void setMps_type(String mps_type) {
		this.mps_type = mps_type;
	}

	public String getMps_use() {
		return mps_use;
	}

	public void setMps_use(String mps_use) {
		this.mps_use = mps_use;
	}

	public String getMps_change() {
		return mps_change;
	}

	public void setMps_change(String mps_change) {
		this.mps_change = mps_change;
	}

	public String getScm() {
		return scm;
	}

	public void setScm(String scm) {
		this.scm = scm;
	}

	public String getScm_type() {
		return scm_type;
	}

	public void setScm_type(String scm_type) {
		this.scm_type = scm_type;
	}

	public String getScm_use() {
		return scm_use;
	}

	public void setScm_use(String scm_use) {
		this.scm_use = scm_use;
	}

	public String getScm_change() {
		return scm_change;
	}

	public void setScm_change(String scm_change) {
		this.scm_change = scm_change;
	}

	public String getEms() {
		return ems;
	}

	public void setEms(String ems) {
		this.ems = ems;
	}

	public String getEms_type() {
		return ems_type;
	}

	public void setEms_type(String ems_type) {
		this.ems_type = ems_type;
	}

	public String getEms_use() {
		return ems_use;
	}

	public void setEms_use(String ems_use) {
		this.ems_use = ems_use;
	}

	public String getEms_change() {
		return ems_change;
	}

	public void setEms_change(String ems_change) {
		this.ems_change = ems_change;
	}

	public String getOther_sys() {
		return other_sys;
	}

	public void setOther_sys(String other_sys) {
		this.other_sys = other_sys;
	}

	public String getRemark1() {
		return remark1;
	}

	public void setRemark1(String remark1) {
		this.remark1 = remark1;
	}

	public String getSys_type() {
		return sys_type;
	}

	public void setSys_type(String sys_type) {
		this.sys_type = sys_type;
	}

	public String getTrain() {
		return train;
	}

	public void setTrain(String train) {
		this.train = train;
	}

	public String getRemark2() {
		return remark2;
	}

	public void setRemark2(String remark2) {
		this.remark2 = remark2;
	}

	public String getMachines() {
		return machines;
	}

	public void setMachines(String machines) {
		this.machines = machines;
	}

	public String getTotalmachine() {
		return totalmachine;
	}

	public void setTotalmachine(String totalmachine) {
		this.totalmachine = totalmachine;
	}

	public String getMachine_2() {
		return machine_2;
	}

	public void setMachine_2(String machine_2) {
		this.machine_2 = machine_2;
	}

	public String getMachine_5() {
		return machine_5;
	}

	public void setMachine_5(String machine_5) {
		this.machine_5 = machine_5;
	}

	public String getMachine_old() {
		return machine_old;
	}

	public void setMachine_old(String machine_old) {
		this.machine_old = machine_old;
	}

	public String getCore_machine() {
		return core_machine;
	}

	public void setCore_machine(String core_machine) {
		this.core_machine = core_machine;
	}

	public String getMachine_type() {
		return machine_type;
	}

	public void setMachine_type(String machine_type) {
		this.machine_type = machine_type;
	}

	public String getMachine_value() {
		return machine_value;
	}

	public void setMachine_value(String machine_value) {
		this.machine_value = machine_value;
	}

	public Date getMachine_intime() {
		return machine_intime;
	}

	public void setMachine_intime(Date machine_intime) {
		this.machine_intime = machine_intime;
	}

	public Date getRegtime() {
		return regtime;
	}

	public void setRegtime(Date regtime) {
		this.regtime = regtime;
	}

	public String getIntention() {
		return intention;
	}

	public void setIntention(String intention) {
		this.intention = intention;
	}

	public String getMain_income() {
		return main_income;
	}

	public void setMain_income(String main_income) {
		this.main_income = main_income;
	}

	public String getM_rise() {
		return m_rise;
	}

	public void setM_rise(String m_rise) {
		this.m_rise = m_rise;
	}

	public String getNet_profit() {
		return net_profit;
	}

	public void setNet_profit(String net_profit) {
		this.net_profit = net_profit;
	}

	public String getN_rise() {
		return n_rise;
	}

	public void setN_rise(String n_rise) {
		this.n_rise = n_rise;
	}

	public Long getProcessId() {
		return processId;
	}

	public void setProcessId(Long processId) {
		this.processId = processId;
	}

	public String getTypeNmae() {
		return typeNmae;
	}

	public void setTypeNmae(String typeNmae) {
		this.typeNmae = typeNmae;
	}

	public Long getStatusId() {
		return statusId;
	}

	public void setStatusId(Long statusId) {
		this.statusId = statusId;
	}

	public Long getDeeply() {
		return deeply;
	}

	public void setDeeply(Long deeply) {
		this.deeply = deeply;
	}

	public String getProcessName() {
		return processName;
	}

	public void setProcessName(String processName) {
		this.processName = processName;
	}

	public String getProcessDescribe() {
		return processDescribe;
	}

	public void setProcessDescribe(String processDescribe) {
		this.processDescribe = processDescribe;
	}

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	public Date getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}

	public Boolean getRejected() {
		return rejected;
	}

	public void setRejected(Boolean rejected) {
		this.rejected = rejected;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Double getProcseeDays() {
		return procseeDays;
	}

	public void setProcseeDays(Double procseeDays) {
		this.procseeDays = procseeDays;
	}

	public Attachment getProFileid() {
		return proFileid;
	}

	public void setProFileid(Attachment proFileid) {
		this.proFileid = proFileid;
	}

	public String getShenuser() {
		return shenuser;
	}

	public void setShenuser(String shenuser) {
		this.shenuser = shenuser;
	}

	public String getDocnumber() {
		return docnumber;
	}

	public void setDocnumber(String docnumber) {
		this.docnumber = docnumber;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getTotalmoney() {
		return totalmoney;
	}

	public void setTotalmoney(String totalmoney) {
		this.totalmoney = totalmoney;
	}

	public String getIsstore() {
		return isstore;
	}

	public void setIsstore(String isstore) {
		this.isstore = isstore;
	}

	public Date getIntime() {
		return intime;
	}

	public void setIntime(Date intime) {
		this.intime = intime;
	}

	public Date getRealtime() {
		return realtime;
	}

	public void setRealtime(Date realtime) {
		this.realtime = realtime;
	}

	public Date getFinishtime() {
		return finishtime;
	}

	public void setFinishtime(Date finishtime) {
		this.finishtime = finishtime;
	}

	public String getMoneysource() {
		return moneysource;
	}

	public void setMoneysource(String moneysource) {
		this.moneysource = moneysource;
	}

	public String getProducts_money() {
		return products_money;
	}

	public void setProducts_money(String products_money) {
		this.products_money = products_money;
	}

	public String getIntel_money() {
		return intel_money;
	}

	public void setIntel_money(String intel_money) {
		this.intel_money = intel_money;
	}

	public String getNet_money() {
		return net_money;
	}

	public void setNet_money(String net_money) {
		this.net_money = net_money;
	}

	public String getEnt_year() {
		return ent_year;
	}

	public void setEnt_year(String ent_year) {
		this.ent_year = ent_year;
	}

}
