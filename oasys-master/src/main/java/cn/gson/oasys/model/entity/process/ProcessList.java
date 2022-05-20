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

	@Column(name = "ent_address")
	private String entaddress;//企业地址

	@Column(name = "code")
	private String code;//统一信用代码

	@Column(name = "regmoney")
	private String regmoney;//注册资金(万元)

	@Column(name = "legal")
	private String legal;//法人代表

	@Column(name = "phonenum1")
	private String phonenum1;//手机号码1

	@Column(name = "entnature")
	private String entnature;//企业性质

	@Column(name = "enttype")
	private String enttype;//所属行业

	@Column(name = "contacts")
	private String contacts;//联系人

	@Column(name = "phonenum2")
	private String phonenum2;//手机号码2

	@Column(name = "totalmoney")
	private String totalmoney;//企业总资产(万元)

	@Column(name = "employees")
	private String employees;//职工人数(人)

	@Column(name = "knowledge")
	private String knowledge;//知识产权总数

	@Column(name = "invention")
	private String invention;//发明专利总数

	@Column(name = "software")
	private String software;//软件著作权总数

	@Column(name = "trademark")
	private String trademark;//商标总数

	@Column(name = "coveredarea")
	private String coveredarea;//占地面积(亩)

	@Column(name = "plantarea")
	private String plantarea;//厂房面积

	@Column(name = "products")
	private String products;//主要产品

	@Column(name = "honors")
	private String honors;//已获得的荣誉资质


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
				", entaddress='" + entaddress + '\'' +
				", code='" + code + '\'' +
				", regmoney='" + regmoney + '\'' +
				", legal='" + legal + '\'' +
				", phonenum1='" + phonenum1 + '\'' +
				", entnature='" + entnature + '\'' +
				", enttype='" + enttype + '\'' +
				", contacts='" + contacts + '\'' +
				", phonenum2='" + phonenum2 + '\'' +
				", totalmoney='" + totalmoney + '\'' +
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

	public String getTotalmoney() {
		return totalmoney;
	}

	public void setTotalmoney(String totalmoney) {
		this.totalmoney = totalmoney;
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

	public String getHonors() {
		return honors;
	}

	public void setHonors(String honors) {
		this.honors = honors;
	}

	public String getEntaddress() {
		return entaddress;
	}

	public void setEntaddress(String entaddress) {
		this.entaddress = entaddress;
	}

	public String getShenuser() {
		return shenuser;
	}

	public void setShenuser(String shenuser) {
		this.shenuser = shenuser;
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

}
