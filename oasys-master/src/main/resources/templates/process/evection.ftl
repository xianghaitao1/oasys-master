<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/common/tanchuang.css"/>
<style>
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
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">出差申请</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
				disabled="disabled">出差申请</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">

		<div class="bgc-w box">
			<form action="evec" enctype="multipart/form-data" method="post" onsubmit="return check();">
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
								<div class="alert alert-danger alert-dismissable" style="display:none;" role="alert">
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
							<td colspan="6"><input type="text" class="form-control inpu" name="proId.processName"/></td>

							<td class="title"><span>项目备案文号</span></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
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
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<#--<td colspan="6"><input type="text" class="form-control inpu"
                                                   readonly="readonly" style="background-color:#fff;"
                                                   value="${username}"/></td>-->
							<td class="title"><label class="control-label">项目总投资</label></td>
							<td colspan="6">
								<input type="text" class="form-control inpu"/>
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
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">入库时间</label></td>
							<td colspan="6"><input type="text" class="form-control inpu" id="endTime"
												   name="proId.endTime"/></td>
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
												   name="proId.startTime"/>
							<td class="title"><label class="control-label">项目计划竣工日期</label></td>
							<td colspan="6"><input type="text" class="form-control inpu" id="starTimed"
												   name="proId.startTimed"/>


								<#--     <td colspan="6"><input name="nameuser" type="text" id="recive_list"
                                                             class="form-control " readonly="readonly"
                                                             style="background-color:#fff;"/>
                                          <div class="reciver">
                                          <span class="label label-success glyphicon glyphicon-plus"
                                                data-toggle="modal" data-target="#myModal">通讯录</span>
                                          </div>
                                      </td>
                                      -->
						</tr>

						<tr>

							<td class="title"><label class="control-label">项目资金来源</label></td>
							<td colspan="6">
								<select class="form-control inpu" name="proId.deeply">
									<option>自有资金</option>
									<option>贷款资金</option>
									<option>融资租赁</option>
									<option>其他</option>
									<#--  <#list harrylist as harry>
                                      </#list>-->
								</select>
							</td>

							<td class="title"><label class="control-label">其中：生产性设备投资额（万元）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<#-- <td colspan="6"><textarea class="form-control text" name="proId.processDescribe"></textarea>-->
						</tr>
						<tr>
							<td class="title"><label class="control-label">其中：智能化设备投入（万元）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">其中：信息化、网络化投入（万元）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>

						<tr>
							<td colspan="1" class="title"><b>企业经营情况</b></td>
							<td colspan="13" style="text-align: right;"><i class="glyphicon glyphicon-plus zeng"></i>&nbsp;&nbsp;&nbsp;<i
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
																   name="details[0].produceTime"/></td>
											<td colspan="2">
												<input type="text" class="form-control inpu" name="details[0].subject"
													   readonly="readonly" style="background-color:#fff;"/>
												<#-- <div class="sub">
                                                   <i class="glyphicon glyphicon-search"></i>
                                                </div>-->
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
						<tr>
							<td colspan="1" class="title"><b>自动化现状-智能设备/设备联网</b></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">企业智能化设备（台）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">总设备（台）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">企业自有生产设备情况（2年内新设备）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu" value="%"/></td>
							<td class="title"><label class="control-label">企业自有生产设备情况（使用5年设备）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">企业自有生产设备情况（已完成折旧设备）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">核心设备名称</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">核心设备类型</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">核心设备价值</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">核心设备购入时间</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">自动化设备投入意向</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td colspan="1" class="title"><b>信息化现状</b></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">企业资源计划（ERP）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu cheng"
												   readonly="readonly" style="background-color:#fff;" name="namemoney"/>
								<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
								</div>
							<td class="title"><label class="control-label">ERP系统品牌型号</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">ERP系统使用情况</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">ERP系统是否有改造需求</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>

						<tr>
							<td class="title"><label class="control-label">OA系统</label></td>
							<td colspan="6"><input type="text" class="form-control inpu cheng"
												   readonly="readonly" style="background-color:#fff;" name="namemoney"/>
								<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
								</div>
							<td class="title"><label class="control-label">OA系统品牌型号</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">OA系统使用情况</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">OA系统是否有改造需求</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>

						<tr>
							<td class="title"><label class="control-label">制造执行系统MES</label></td>
							<td colspan="6"><input type="text" class="form-control inpu cheng"
												   readonly="readonly" style="background-color:#fff;" name="namemoney"/>
								<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
								</div>
							<td class="title"><label class="control-label">MES系统品牌型号</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">MES系统使用情况</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">MES系统是否有改造需求</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>

						<tr>
							<td class="title"><label class="control-label">高级计划排程（APS）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu cheng"
												   readonly="readonly" style="background-color:#fff;" name="namemoney"/>
								<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
								</div>
							<td class="title"><label class="control-label">APS系统品牌型号</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">APS系统使用情况</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">APS系统是否有改造需求</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>

						<tr>
							<td class="title"><label class="control-label">仓库管理系统WMS</label></td>
							<td colspan="6"><input type="text" class="form-control inpu cheng"
												   readonly="readonly" style="background-color:#fff;" name="namemoney"/>
								<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
								</div>
							<td class="title"><label class="control-label">WMS品牌型号</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">WMS系统使用情况</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">WMS系统是否有改造需求</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>

						<tr>
							<td class="title"><label class="control-label">人员/物资定位系统</label></td>
							<td colspan="6"><input type="text" class="form-control inpu cheng"
												   readonly="readonly" style="background-color:#fff;" name="namemoney"/>
								<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
								</div>
							<td class="title"><label class="control-label">定位系统品牌型号</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">定位系统使用情况</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">定位系统是否有改造需求</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>

						<tr>
							<td class="title"><label class="control-label">供应链管理系统（SCM）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu cheng"
												   readonly="readonly" style="background-color:#fff;" name="namemoney"/>
								<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
								</div>
							<td class="title"><label class="control-label">SCM系统品牌型号</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">SCM系统使用情况</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">SCM系统是否有改造需求</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">设备管理系统（EMS）</label></td>
							<td colspan="6"><input type="text" class="form-control inpu cheng"
												   readonly="readonly" style="background-color:#fff;" name="namemoney"/>
								<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
								</div>
							<td class="title"><label class="control-label">EMS系统品牌型号</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">EMS系统使用情况</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
							<td class="title"><label class="control-label">EMS系统是否有改造需求</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>

						<tr>
							<td class="title"><label class="control-label">其它辅助系统</label></td>
							<td colspan="6"><input type="text" class="form-control inpu cheng"
												   readonly="readonly" style="background-color:#fff;" name="namemoney"/>
								<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
						>选择管理模块</span>
								</div>
							<td class="title"><label class="control-label">其他</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>
						<tr>
							<td class="title"><label class="control-label">品牌型号</label></td>
							<td colspan="6"><input type="text" class="form-control inpu"/></td>
						</tr>

						<tr>
							<td colspan="14" style="text-align: right;">
								<input type="text" class="days" name="proId.procseeDays" hidden="hidden"/>
								<input type="text" value="出差申请" name="val" hidden="hidden"/>
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
<script>

	$(function () {
		$(".text").focus(function () {
			var $star = new Date($("#starTime").val());
			var $end = new Date($("#endTime").val());
			tt = $end.getTime() - $star.getTime();
			$(".days").val(Math.ceil(tt / (24 * 60 * 60 * 1000)));
		});
		$('.reciver').on('click', function () {
			$('#myModal').modal("toggle");
			$(this).siblings("input").val("");
			$('.reciver').removeClass("qu");
			$(this).addClass("qu");
		});
		var i = 1;
		//增加一行
		$(".zeng").click(function () {
			var date = new Date();
			var nowDate = date.Format('yyyy-MM-dd hh:mm:ss');
			var star = addDate(nowDate, 0);
			<#--   var td1 = $('<td class="chebox" colspan="2"></td>').append($('<span class="labels"></span>').append($('<label></label>').append($('<input type="checkbox" name="items"  class="val" >')).append($('<i></i>').text('✓'))));-->
			var td2 = $('<td  colspan="2"></td>').append($('<input type="text" class="form-control inpu incar" name="details[' + i + '].produceTime"/>'));
			var td3 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="details[' + i + '].subject" readonly="readonly" style="background-color:#fff;"/>'))
					.append($('<div class="sub"></div>'));
			var td4 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="details[' + i + '].descript"/>'));
			var td5 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="details[' + i + '].invoices"/>'));
			var td6 = $('<td colspan="2" class="tdrig"></td>').append($('<input type="text" class="form-control inpu" name="details[' + i + '].detailmoney"/>'));
			<#--  var tr = $('<tr class="tr"></tr>').append(td1).append(td2).append(td3).append(td4).append(td5).append(td6);-->
			var tr = $('<tr class="tr"></tr>').append(td2).append(td3).append(td4).append(td5).append(td6);
			$('.tbody').append(tr);
			i = i + 1;
		});
	})

	//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
	function check() {
		console.log("开始进入了");
//提示框可能在提交之前是block状态，所以在这之前要设置成none
		$('.alert-danger').css('display', 'none');
		var isRight = 1;
		$('.form-control').each(function (index) {
// 如果在这些input框中，判断是否能够为空
			if ($(this).val() == "") {
				if ($(this).hasClass("cha")) {
					return true;
				}
// 排除哪些字段是可以为空的，在这里排除
				/* if (index == 5||index == 6) {
                return true;
                }  */

// 获取到input框的兄弟的文本信息，并对应提醒；
				console.log(index);
				var errorMess = "红色提示框不能为空!";
// 对齐设置错误信息提醒；红色边框
				$(this).parent().addClass("has-error has-feedback");
				$('.alert-danger').css('display', 'block');
// 提示框的错误信息显示
				$('.error-mess').text(errorMess);

				isRight = 0;
				return false;

			} else {
				return true;
			}
		});

		if (isRight == 0) {
//modalShow(0);
			return false;
		} else if (isRight == 1) {
//modalShow(1);
			return true;
		}
//	return false;
	}
</script>
<#include "/common/reciver.ftl">
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>