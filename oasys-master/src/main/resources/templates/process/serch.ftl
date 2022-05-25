<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/common/tanchuang.css"/>
<style>
	a {
		color: black;
		cursor: pointer;
	}

	a:hover {
		text-decoration: none;
	}

	.bgc-w {
		background-color: #fff;
	}

	.block {
		display: inline-block;
		width: 20px;
	}

	.col-md-3 h4, .col-md-3 h5 {
		display: inline-block;
		margin-left: 10px;
	}

	.col-md-3 h4 {
		margin-top: 40px;
		margin-bottom: 1px;

	}

	.col-md-3 {
		-webkit-box-shadow: #666 0px 0px 10px;
		-moz-box-shadow: #666 0px 0px 10px;
		box-shadow: #666 0px 0px 10px;
		border-radius: 5px;
		margin-right: 48px;
		margin-left: 27px;
		padding-top: 20px;
		padding-bottom: 20px;
		padding-left: 20px;
	}

	.me .form-group {
		margin-bottom: 48px;
	}

	.me img {
		border-radius: 15px;
		cursor: pointer;
	}

	.modal-open {
		overflow: auto;
	}

	.box-header {
		text-align: center;
		border-bottom: 0px solid #f4f4f4;
	}

	.title {
		text-align: center;
	}

	.inpu {
		margin-top: -6px;

	}

	.control-label {
		display: inline-block;
		font-weight: 400;
	}

	.bo {
		margin: 0px auto;
		width: 80%;
	}


	.table th, .chebox, .table > tbody > tr > td {
		font-weight: 400;
		text-align: center;
	}

	.inside {
		width: 100%;
	}

	.inside thead {
		background-color: rgba(76, 175, 95, 0.06);
	}

	.inside > tbody > tr > td {
		border-top: 0px solid #ddd;
	}

	.inside > tbody > tr > td {
		border-bottom: 1px solid #ddd;
		border-left: 1px solid #ddd;
	}

	.tdrig {
		border-right: 1px solid #ddd;
	}

	.bo > tbody > tr > td, .inside > thead > tr > th {
		border-top: 0px solid #ddd;
		border-bottom: 0px solid #ddd;
		border-left: 0px solid #ddd;
	}

	.text {
		min-height: 100px;
	}

	.reciver {
		position: relative;
		float: right;
		margin-top: -28px;
		right: 5px;
		cursor: pointer;
	}


	.tab {
		display: flex;
		justify-content: left;
	}

	.tab li {
		list-style: none;
		width: 150px;
		height: 50px;
		line-height: 50px;
		text-align: center;
		border: 1px solid gray;
		color: #fff;
		background: skyblue;
	}

	.tab li:hover {
		cursor: pointer;
	}

	.content {
		width: 1400px;
		height: 800px;
		border: 1px solid #fff;
		text-align: center;
		margin: auto;
	}

	.hide {
		display: none;
	}

</style>
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">${(map.typename)!''}</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
				disabled="disabled">${(map.typename)!''}</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<div class="bgc-w box" style="height: 1100px">
			<!--盒子身体-->
			<div>
				<ul class="tab">
					<li>企业基本信息</li>
					<li>智改数转项目模板</li>
					<li>企业经营情况</li>
					<li>自动化现状-智能设备/设备联网</li>
					<li>信息化设备</li>
					<li>重要申报政策</li>
					<li>高新技术企业</li>
					<li>工程研究中心</li>
					<li>工业互联网标杆工厂</li>
				</ul>
				<form action="apply" enctype="multipart/form-data" method="post" onsubmit="return check();">
				<div class="content">


						<div class="box-header">
							<table class="bo table ">

								<tr>
									<td colspan="14" class="title"><h2>企业基本信息</h2></td>

								</tr>
								<tr style="opacity: 0;">
									<td colspan="14">11</td>
								</tr>
								<tr>
									<td colspan="14" style="text-align: left;">
										<!--錯誤信息提示  -->
										<div class="alert alert-danger alert-dismissable" style="display:none;" role="alert">
											错误信息:
											<button class="thisclose close" type="button">&times;</button>
											<span class="error-mess"></span>
										</div>
									</td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">企业名称</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${(pro.processName)!''}" readonly="readonly"/></td>

									<td class="title"><label class="control-label">所在地</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${(pro.entaddress)!''}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">同一信用代码</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${(pro.code)!''}" readonly="readonly"/></td>

									<td class="title"><label class="control-label">注册资金（万元）</label></td>
									<td colspan="6"><input type="text" class="form-control input" value="${pro.regmoney}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">法人代表</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.legal}" readonly="readonly"/></td>

									<td class="title"><label class="control-label">手机号码</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.phonenum1}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><span>企业性质</span></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.entnature}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">所属行业</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.enttype}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">联系人</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.contacts}" readonly="readonly"/></td>

									<td class="title"><label class="control-label">手机号码</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.phonenum2}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">企业总资产（万元）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.allmoney}" readonly="readonly"/></td>

									<td class="title"><label class="control-label">职工人数（人）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.employees}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">知识产权总数</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.knowledge}" readonly="readonly"/></td>

									<td class="title"><label class="control-label">发明专利总数</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.invention}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">软件著作权总数</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.software}" readonly="readonly"/></td>

									<td class="title"><label class="control-label">商标总数</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.trademark}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">占地面积（亩）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.coveredarea}" readonly="readonly"/></td>

									<td class="title"><label class="control-label">厂房面积</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.plantarea}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">主要产品</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.products}" readonly="readonly"/></td>
									<#--   <td colspan="6">
                                           <select class="form-control inpu" name="proId.deeply">
                                               <#list harrylist as harry>
                                                   <option value="${harry.typeId}">${harry.typeName}</option>
                                               </#list>
                                           </select>
                                       </td>-->
									<td class="title"><label class="control-label">已获得的荣誉资质</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng"
														   readonly="readonly" style="background-color:#fff;" value="${pro.honors}" readonly="readonly"/>
									</td>
								</tr>


								<tr class="hidden">
									<td colspan="14">
										<div class="food">
											<table class="table inside">
												<thead>
												<tr>
													<th colspan="2" style="width: 77px;">选择</th>
													<th colspan="2">费用日期</th>
													<th colspan="2">费用科目</th>
													<th colspan="2">费用说明</th>
													<th colspan="2">票据张数</th>
													<th colspan="2">报销金额</th>
												</tr>
												</thead>
												<tbody class="tbody">
												<tr class="tr">
													<td class="chebox" colspan="2"><span class="labels"><label><input
																		type="checkbox" name="items"
																		class="val"><i>✓</i></label></span></td>
													<td colspan="2"><input type="text" class="form-control inpu shijian"
																		   name="details[0].produceTime"/></td>
													<td colspan="2">
														<input type="text" class="form-control inpu" name="details[0].subject"
															   readonly="readonly" style="background-color:#fff;"/>
														<div class="sub">
															<i class="glyphicon glyphicon-search"></i>
														</div>
													</td>
													<td colspan="2"><input type="text" class="form-control inpu"
																		   name="details[0].descript"/></td>
													<td colspan="2"><input type="text" class="form-control inpu"
																		   name="details[0].invoices"/></td>
													<td colspan="2" class="tdrig"><input type="text" class="form-control inpu"
																						 name="details[0].detailmoney"/></td>

												</tr>

												</tbody>
											</table>
										</div>
									</td>
								</tr>



								<tr class="fo">

									<td colspan="14" style="text-align: right;">
										<div class="pull-right foot">
											<a class="btn btn-default fault fa-back" href="javascript:"
											   onclick="history.back(); ">
												<span class="glyphicon glyphicon-chevron-left"></span> 返回</a>

										</div>
									<td colspan="14" style="text-align: right;">
										<input type="text" value="问卷调查" name="val" hidden="hidden"/>
										<#--                            <input class="btn btn-primary" id="save" type="submit" value="修改"/>-->
										<#--                            <input class="btn btn-default" id="cancel" type="button" value="取消"-->
										<#--                                   onclick="history.back();"/>-->
									</td>
								</tr>
							</table>
						</div>
<#--					</form>-->

				</div>

				<div class="content hide">

<#--					<form action="apply" enctype="multipart/form-data" method="post" onsubmit="return check();">-->
						<div class="box-header">
							<table class="bo table ">

								<tr>
									<td colspan="14" class="title"><h2>企业建设基础情况</h2></td>
								</tr>
								<tr style="opacity: 0;">
									<td colspan="14">11</td>
								</tr>
								<tr>
									<td colspan="14" style="text-align: left;">
										<!--錯誤信息提示  -->
										<div class="alert alert-danger alert-dismissable" style="display:none;"
											 role="alert">
											错误信息:
											<button class="thisclose close" type="button">&times;</button>
											<span class="error-mess"></span>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="1" class="title"><b>智改数转项目摸排</b></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">项目备案单位</label></td>
									<td colspan="6"><input type="text" class="form-control inpu"
														   value="${pro.recordname}" readonly="readonly"/></td>

									<td class="title"><span>项目备案文号</span></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.docnumber}" readonly="readonly"/>
									</td>
									<#--  <td colspan="6">
                                          <select class="form-control inpu" name="proId.deeply">
                                              <#list harrylist as harry>
                                                  <option value="${harry.typeId}">${harry.typeName}</option>
                                              </#list>
                                          </select>
                                      </td>-->

								</tr>
								<tr>
									<td class="title"><label class="control-label">项目建设年限</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.year}" readonly="readonly"/></td>
									<#--<td colspan="6"><input type="text" class="form-control inpu"
                                                           readonly="readonly" style="background-color:#fff;"
                                                           value="${username}"/></td>-->
									<td class="title"><label class="control-label">项目总投资</label></td>
									<td colspan="6">
										<input type="text" class="form-control inpu" value="${pro.totalmoney}" readonly="readonly"/>
										<#-- <select class="form-control inpu" name="typeId">
                                             <#list outtype as out>
                                                 <option value="${out.typeId}">${out.typeName}</option>
                                             </#list>
                                         </select>-->
									</td>
								</tr>

								<tr>
									<#--<td class="title"><label class="control-label">开始日期</label></td>
                                    <td colspan="6"><input type="text" class="form-control inpu" id="starTime"
                                                           name="proId.startTime"/></td>-->
									<td class="title"><label class="control-label">是否纳入统计库</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.isstore}" readonly="readonly"/>
									</td>
									<td class="title"><label class="control-label">入库时间</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" id="endTime"
														   value="${pro.intime}" readonly="readonly"/></td>
								</tr>
								<tr>

									<td class="title"><label class="control-label">项目实际开工日期</label></td>
									<#-- <td colspan="6">
                                         <div class="btn btn-default" style="position: relative; overflow: hidden;width: 100%;
                                         margin-top: -6px;">
                                             <i class="glyphicon glyphicon-open"></i> 上传资料
                                             <input type="file" name="filePath" style="opacity: 0; position: absolute;
                                              top: 12px; right: 0; " class='inpu'>
                                         </div>
                                     </td>-->
									<td colspan="6"><input type="text" class="form-control inpu" id="starTime"
														   value="${pro.realtime}" readonly="readonly"/>
									<td class="title"><label class="control-label">项目计划竣工日期</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" id="starTimed"
														   value="${pro.finishtime}" readonly="readonly"/>

								</tr>

								<tr>

									<td class="title"><label class="control-label">项目资金来源</label></td>
									<td colspan="6">
										<select class="form-control inpu" value="${pro.moneysource}" readonly="readonly">
											<option>自有资金</option>
											<option>贷款资金</option>
											<option>融资租赁</option>
											<option>其他</option>
											<#--  <#list harrylist as harry>
                                              </#list>-->
										</select>
									</td>

									<td class="title"><label class="control-label">其中：生产性设备投资额（万元）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu"
														   value="${pro.products_money}" readonly="readonly"/></td>
									<#-- <td colspan="6"><textarea class="form-control text" name="proId.processDescribe"></textarea>-->
								</tr>
								<tr>
									<td class="title"><label class="control-label">其中：智能化设备投入（万元）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu"
														   value="${pro.intel_money}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">其中：信息化、网络化投入（万元）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.net_money}" readonly="readonly"/>
									</td>
								</tr>


								<tr>
									<td colspan="14" style="text-align: right;">
										<input type="text" class="days" name="proId.procseeDays" hidden="hidden"/>
										<input type="text" value="问卷调查" name="val" hidden="hidden"/>
										<input class="btn btn-primary" id="save" type="submit" value="保存"/>
										<input class="btn btn-default" id="cancel" type="button" value="取消"
											   onclick="window.history.back();"/>
									</td>
								</tr>
							</table>
						</div>
<#--					</form>-->

				</div>
				<div class="content hide">
<#--					<form action="apply" enctype="multipart/form-data" method="post" onsubmit="return check();">-->
						<div class="box-header">
							<tr>
								<td colspan="1" class="title"><b>企业经营情况</b></td>
								<td colspan="13" style="text-align: right;"><i
											class="glyphicon glyphicon-plus zeng"></i>&nbsp;&nbsp;&nbsp;<i
											class="glyphicon glyphicon-minus jian"></i></td>
							</tr>

							<tr>
								<td colspan="10">
									<div class="food">
										<table class="table inside">
											<thead>
											<tr>
												<#-- <th colspan="2" style="width: 77px;">选择</th>-->
												<th colspan="2">年份</th>
												<th colspan="2">主营业务收入（万元）</th>
												<th colspan="2">同比增长（%）</th>
												<th colspan="2">净利润（万元）</th>
												<th colspan="2">同比增长（%）</th>
											</tr>
											</thead>
											<tbody class="tbody">
											<tr class="tr">
												<#-- <td class="chebox" colspan="2"><span class="labels"><label><input
                                                                     type="checkbox" name="items"
                                                                     class="val"><i>✓</i></label></span></td>-->
												<td colspan="2"><input type="text" class="form-control inpu"
																	   value="${pro.ent_year}" readonly="readonly"/></td>
												<td colspan="2">
													<input type="text" class="form-control inpu"
														   value="${pro.main_income}" readonly="readonly" style="background-color:#fff;"/>
													<#-- <div class="sub">
                                                       <i class="glyphicon glyphicon-search"></i>
                                                    </div>-->
												</td>
												<td colspan="2"><input type="text" class="form-control inpu"
																	   value="${pro.m_rise}" readonly="readonly"/></td>
												<td colspan="2"><input type="text" class="form-control inpu"
																	   value="${pro.net_profit}" readonly="readonly"/></td>
												<td colspan="2" class="tdrig"><input type="text" class="form-control inpu"
																					 value="${pro.n_rise}" readonly="readonly"/>
												</td>

											</tr>

											</tbody>
											<tr>
												<td colspan="14" style="text-align: right;">
													<input type="text" class="days" name="proId.procseeDays"
														   hidden="hidden"/>
													<input type="text" value="问卷调查" name="val" hidden="hidden"/>
													<input class="btn btn-primary" id="save" type="submit" value="保存"/>
													<input class="btn btn-default" id="cancel" type="button" value="取消"
														   onclick="window.history.back();"/>
												</td>
											</tr>
										</table>

									</div>
								</td>
							</tr>
						</div>
<#--					</form>-->
				</div>

				<!-- 默认除了第一个页面(div)，其它的页面(div)有hide样式, 也就是display:none -->
				<div class="content hide">
<#--					<form action="apply" enctype="multipart/form-data" method="post" onsubmit="return check();">-->
						<div class="box-header">
							<table class="bo table ">

								<tr>
									<td colspan="1" class="title"><b>自动化现状-智能设备/设备联网</b></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">企业智能化设备（台）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.machines}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">总设备（台）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.totalmachine}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">企业自有生产设备情况（2年内新设备）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.machine_2}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">企业自有生产设备情况（使用5年设备）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.machine_5}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">企业自有生产设备情况（已完成折旧设备）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.machine_old}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">核心设备名称</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.core_machine}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">核心设备类型</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.machine_type}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">核心设备价值</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.machine_type}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">核心设备购入时间</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.machine_intime}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">自动化设备投入意向</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.intention}" readonly="readonly"/></td>
								</tr>
								<tr>
								<tr>
									<td colspan="14" style="text-align: right;">
										<input type="text" class="days" name="proId.procseeDays"
											   hidden="hidden"/>
										<input type="text" value="问卷调查" name="val" hidden="hidden"/>
										<input class="btn btn-primary" id="save" type="submit" value="保存"/>
										<input class="btn btn-default" id="cancel" type="button" value="取消"
											   onclick="window.history.back();"/>
									</td>
								</tr>
							</table>
						</div>
<#--					</form>-->

				</div>
				<div class="content hide">
<#--					<form action="evec" enctype="multipart/form-data" method="post" onsubmit="return check();">-->
						<div class="box-header">
							<table class="bo table ">

								<tr>
									<td colspan="1" class="title"><b>信息化现状</b></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">企业资源计划（ERP）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.erp}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">ERP系统品牌型号</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.erp_type}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">ERP系统使用情况</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.erp_use}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">ERP系统是否有改造需求</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.erp_change}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">OA系统</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.oa}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">OA系统品牌型号</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.oa_type}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">OA系统使用情况</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.oa_use}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">OA系统是否有改造需求</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.oa_change}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">制造执行系统MES</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.mes}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">MES系统品牌型号</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.mes_type}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">MES系统使用情况</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.mes_use}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">MES系统是否有改造需求</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.mes_change}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">高级计划排程（APS）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.aps}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">APS系统品牌型号</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.aps_type}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">APS系统使用情况</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.aps_use}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">APS系统是否有改造需求</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.aps_change}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">仓库管理系统WMS</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.wms}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">WMS品牌型号</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.wms_type}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">WMS系统使用情况</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.wms_use}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">WMS系统是否有改造需求</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.wms_change}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">人员/物资定位系统</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.mps}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">定位系统品牌型号</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.mps_type}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">定位系统使用情况</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.mps_use}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">定位系统是否有改造需求</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.mps_change}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">供应链管理系统（SCM）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.scm}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">SCM系统品牌型号</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.scm_type}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">SCM系统使用情况</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.scm_use}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">SCM系统是否有改造需求</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.scm_change}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">设备管理系统（EMS）</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.ems}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">EMS系统品牌型号</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.ems_type}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">EMS系统使用情况</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.ems_use}" readonly="readonly"/></td>
									<td class="title"><label class="control-label">EMS系统是否有改造需求</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.ems_change}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">其它辅助系统</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.other_sys}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">其他</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.remark1}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">品牌型号</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.sys_type}" readonly="readonly"/></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">接受精益生产咨询&培训</label></td>
									<td colspan="6"><input type="text" class="form-control inpu cheng" style="background-color:#fff;" value="${pro.train}" readonly="readonly"/>
										<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
										</div>
									<td class="title"><label class="control-label">其他</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.remark2}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td colspan="14" style="text-align: right;">
										<input type="text" class="days" name="proId.procseeDays"
											   hidden="hidden"/>
										<input type="text" value="问卷调查" name="val" hidden="hidden"/>
										<input class="btn btn-primary" id="save" type="submit" value="保存"/>
										<input class="btn btn-default" id="cancel" type="button" value="取消"
											   onclick="window.history.back();"/>
									</td>
								</tr>

							</table>
						</div>
<#--					</form>-->
				</div>
				<div class="content hide">

<#--					<form action="apply" enctype="multipart/form-data" method="post" onsubmit="return check();">-->
						<div class="box-header">
							<table class="bo table ">

								<tr>
									<td colspan="1" class="title"><b>智能车间（市级/省级）</b></td>
								</tr>

								<tr>
									<td class="title"><label class="control-label">智能车间（市级/省级）</label></td>
									<td colspan="14"><textarea rows="5" cols="20"
															   class="form-control"
															   style="margin: 0px -0.5px 0px 0px; height: 300px; width: 800px;">${(pro.workshop1)!''}</textarea>
										<div class="reciver">
                            <span class="label label-success glyphicon glyphicon-plus"
							>选择管理模块</span>

											<#-- <textarea rows="5" cols="20" name="describtion" class="form-control"
                                                       style="margin: 0px -0.5px 0px 0px; height: 114px; width: 507px;">${(position.describtion)!''}</textarea>-->
										</div>
								</tr>
								<tr>
									<td colspan="14" style="text-align: right;">
										<input type="text" class="days" name="proId.procseeDays" hidden="hidden"/>
										<input type="text" value="问卷调查" name="val" hidden="hidden"/>
										<input class="btn btn-primary" id="save" type="submit" value="保存"/>
										<input class="btn btn-default" id="cancel" type="button" value="取消"
											   onclick="window.history.back();"/>
									</td>
								</tr>
							</table>
						</div>
<#--					</form>-->

				</div>
				<div class="content hide">

<#--					<form action="apply" enctype="multipart/form-data" method="post" onsubmit="return check();">-->
						<div class="box-header">
							<table class="bo table ">

								<tr>
									<td colspan="1" class="title"><b>高新技术企业</b></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">注册地</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.regaddress1}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">智能车间（市级/省级）</label></td>
									<td colspan="14"><textarea rows="5" cols="20"
															   class="form-control"
															   style="margin: 0px -0.5px 0px 0px; height: 300px; width: 800px;">${(pro.workshop2)!''}</textarea>
										<div class="reciver">
                            <span class="label label-success glyphicon glyphicon-plus"
							>选择管理模块</span>

										</div>
								</tr>
								</tr>
								<tr>
									<td colspan="14" style="text-align: right;">
										<input type="text" class="days" name="proId.procseeDays" hidden="hidden"/>
										<input type="text" value="问卷调查" name="val" hidden="hidden"/>
										<input class="btn btn-primary" id="save" type="submit" value="保存"/>
										<input class="btn btn-default" id="cancel" type="button" value="取消"
											   onclick="window.history.back();"/>
									</td>
								</tr>
							</table>
						</div>
<#--					</form>-->

				</div>
				<div class="content hide">

<#--					<form action="apply" enctype="multipart/form-data" method="post" onsubmit="return check();">-->
						<div class="box-header">
							<table class="bo table ">

								<tr>
									<td colspan="1" class="title"><b>工程技术中心（区级/市级/省级）</b></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">注册地</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.regaddress2}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">注册时间</label></td>
									<td colspan="6"><input type="text" class="form-control inpu" value="${pro.regtime}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">工程技术中心（区级/市级/省级）</label></td>
									<td colspan="14"><textarea rows="5" cols="20"
															   class="form-control"
															   style="margin: 0px -0.5px 0px 0px; height: 300px; width: 730px;">${(pro.workshop3)!''}</textarea>
										<div class="reciver">
                            <span class="label label-success glyphicon glyphicon-plus"
							>选择管理模块</span>

										</div>
								</tr>
								</tr>
								<tr>
									<td colspan="14" style="text-align: right;">
										<input type="text" class="days" name="proId.procseeDays" hidden="hidden"/>
										<input type="text" value="问卷调查" name="val" hidden="hidden"/>
										<input class="btn btn-primary" id="save" type="submit" value="保存"/>
										<input class="btn btn-default" id="cancel" type="button" value="取消"
											   onclick="window.history.back();"/>
									</td>
								</tr>
							</table>
						</div>
<#--					</form>-->

				</div>
				<div class="content hide">

<#--					<form action="apply" enctype="multipart/form-data" method="post" onsubmit="return check();">-->
						<div class="box-header">
							<table class="bo table ">

								<tr>
									<td colspan="1" class="title"><b>工业互联网标杆工厂</b></td>
								</tr>
								<tr>
									<td class="title"><label class="control-label">基础能力</label></td>
									<td colspan="14"><textarea rows="5" cols="20"
															   class="form-control"
															   style="margin: 0px -0.5px 0px 0px; height: 200px; width: 800px;">${(pro.basic)!''}</textarea>
										<div class="reciver">
                            <span class="label label-success glyphicon glyphicon-plus"
							>选择管理模块</span>
										</div>
								</tr>

								<tr>
									<td class="title"><label class="control-label">技术能力</label></td>
									<td colspan="14"><textarea rows="5" cols="20"
															   class="form-control"
															   style="margin: 0px -0.5px 0px 0px; height: 200px; width: 800px;">${(pro.technology)!''}</textarea>
										<div class="reciver">
                            <span class="label label-success glyphicon glyphicon-plus"
							>选择管理模块</span>
										</div>
								</tr>

								<tr>
									<td class="title"><label class="control-label">制作系统优化能力</label></td>
									<td colspan="14"><textarea rows="5" cols="20"
															   class="form-control"
															   style="margin: 0px -0.5px 0px 0px; height: 200px; width: 800px;">${(pro.optimization)!''}</textarea>
										<div class="reciver">
                            <span class="label label-success glyphicon glyphicon-plus"
							>选择管理模块</span>
										</div>
								</tr>
								<tr>
									<td class="title"><label class="control-label">全流程优化能力</label></td>
									<td colspan="14"><textarea rows="5" cols="20" name="describtion"
															   class="form-control"
															   style="margin: 0px -0.5px 0px 0px; height: 200px; width: 800px;">${(pro.optimization_all)!''}</textarea>
										<div class="reciver">
                            <span class="label label-success glyphicon glyphicon-plus"
							>选择管理模块</span>
										</div>
								</tr>
								</tr>
								<tr>
									<td colspan="14" style="text-align: right;">
										<input type="text" class="days" name="proId.procseeDays" hidden="hidden"/>
										<input type="text" value="问卷调查" name="val" hidden="hidden"/>
										<input class="btn btn-primary" id="save" type="submit" value="保存"/>
										<input class="btn btn-default" id="cancel" type="button" value="取消"
											   onclick="window.history.back();"/>
									</td>
								</tr>
							</table>
						</div>
					</form>

				</div>
			</div>


		</div>
	</div>




</div>
<script>
	$(function () {
		$(".tab").on("click", "li", function () {
			$(this).addClass("active").siblings().removeClass("active");
			//点击li时，当前的li增加一个样式类，该样式类设置了背景颜色为blue，因此改变了当前li的背景颜色
			var liIndex = $(this).index();//点击li时，保存当前li的下标index，
			$(".content").eq(liIndex).removeClass("hide").siblings(".content").addClass("hide");
			//内容区class为content且下标等于当前点击的li的下标，移除样式类hide。
			//也就是content的下标等于当前点击的li的下标，就让它显示出来
		});

		$('.reciver').on('click', function () {
			$('#myModal').modal("toggle");
			$(this).siblings("input").val("");
			$('.reciver').removeClass("qu");
			$(this).addClass("qu");
		});
		$('.yulan').popover({
			html: true,
			placement: 'auto right',
			trigger: 'hover click',
			template: '<div class="popover" role="tooltip"><div class="arrow"></div>'
					+ '<h3 class="popover-title"></h3><div><img src="show/${(map.filepath)!''}"style="max-width: 200px;"/></div><div class="popover-content"></div></div>'
		})
	});
</script>