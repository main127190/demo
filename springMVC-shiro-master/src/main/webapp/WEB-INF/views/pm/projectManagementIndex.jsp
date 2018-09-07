<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var roleDataGrid;
    $(function() {
        $('#projectDataGrid').datagrid({
                onClickRow:function(rowIndex,rowData){
                    if(rowIndex==0){
                        $('#test').datagrid({
                            data: [
                                {test0:'审计过程标题', test2:'审计过程信息',test3:'admin',test4:'于2018年8月30日10:47:42在北京开始面谈'},
                                {test0:'现场勘查标题2', test2:'现场勘查',test3:'admin',test4:'于2018年8月30日10:47:42在北京开始面谈'},
                                {test0:'监督盘点标题3', test2:'监督盘点',test3:'admin',test4:'于2018年8月30日10:47:42在北京开始面谈'}
                            ]
                        });  $('#test1').datagrid({
                            data: [
                                {test0:'中介考核标题', test1:'中介考核信息',test2:'日常考核',test3:'admin',test4:'考核的不错'}
                            ]
                        });  $('#test2').datagrid({
                            data: [
                                {test0:'审计费核算标题', test1:'审计费核算信息',test2:'自动计算项目审计费',test3:'admin',test4:'自动计算项目审计费'}
                            ]
                        });  $('#test3').datagrid({
                            data: [
                                {test0:'审计成果信息标题', test1:'审计成果信息',test2:'挂接中介机构审核报告',test3:'admin',test4:'挂接中介机构审核报告'}
                            ]
                        });
                    }else{
                        $('#test').datagrid({
                            data: [
                                {test0:'测试标题', test1:'审计过程信息',test2:'审计面谈',test3:'admin',test4:'于2018在山东开始面谈'}
                            ]
                        }); $('#test1').datagrid({
                            data: [
                                {test0:'测试数据', test1:'中介考核信息',test2:'日常考核',test3:'admin',test4:'不行！不行！不行！'}
                            ]
                        }); $('#test2').datagrid({
                            data: [
                                {test0:'新测试数据', test1:'审计费核算信息',test2:'自动计算项目审计费',test3:'admin',test4:'全靠系统自动'}
                            ]
                        }); $('#test3').datagrid({
                            data: [
                                {test0:'第四条测试数据', test1:'审计成果信息',test2:'挂接中介机构审核报告',test3:'admin',test4:'挂接中介机构审核报告'}
                            ]
                        });
                    }

         }
        });
        organizationTree = $('#organizationTree2').tree({
            url : '${path }/organization/tree',
            parentField : 'pid',
            lines : true,
            onClick : function(node) {
//                userDataGrid.datagrid('load', {
//                    organizationId: node.id
//                });
            }
        });
        $('#index_tabs2').tabs({
            fit : true,
            border : false
        });
        <%--roleDataGrid = $('#roleDataGrid').datagrid({--%>
            <%--url : '${path }/role/dataGrid',--%>
            <%--striped : true,--%>
            <%--rownumbers : true,--%>
            <%--pagination : true,--%>
            <%--singleSelect : true,--%>
            <%--idField : 'id',--%>
            <%--sortName : 'id',--%>
            <%--sortOrder : 'asc',--%>
            <%--pageSize : 20,--%>
            <%--pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],--%>
            <%--frozenColumns : [ [ {--%>
                <%--width : '100',--%>
                <%--title : 'id',--%>
                <%--field : 'id',--%>
                <%--sortable : true--%>
            <%--}, {--%>
                <%--width : '80',--%>
                <%--title : '项目单位名称',--%>
                <%--field : 'name',--%>
                <%--sortable : true--%>
            <%--} , {--%>
                <%--width : '80',--%>
                <%--title : '送审金额',--%>
                <%--field : 'seq',--%>
                <%--sortable : true--%>
            <%--}, {--%>
                <%--width : '200',--%>
                <%--title : '审减金额',--%>
                <%--field : 'description'--%>
            <%--} , {--%>
                <%--width : '60',--%>
                <%--title : '状态',--%>
                <%--field : 'status',--%>
                <%--sortable : true,--%>
                <%--formatter : function(value, row, index) {--%>
                    <%--switch (value) {--%>
                    <%--case 0:--%>
                        <%--return '正常';--%>
                    <%--case 1:--%>
                        <%--return '停用';--%>
                    <%--}--%>
                <%--}--%>
            <%--}, {--%>
                <%--field : 'action',--%>
                <%--title : '操作',--%>
                <%--width : 200,--%>
                <%--formatter : function(value, row, index) {--%>
                    <%--var str = '';--%>
                        <%--<shiro:hasPermission name="/role/grant">--%>
                            <%--str += $.formatString('<a href="javascript:void(0)" class="role-easyui-linkbutton-ok" data-options="plain:true,iconCls:\'fi-check icon-green\'" onclick="grantRoleFun(\'{0}\');" >授权</a>', row.id);--%>
                        <%--</shiro:hasPermission>--%>
                        <%--<shiro:hasPermission name="/role/edit">--%>
                            <%--str += '&nbsp;&nbsp;|&nbsp;&nbsp;';--%>
                            <%--str += $.formatString('<a href="javascript:void(0)" class="role-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'fi-pencil icon-blue\'" onclick="editRoleFun(\'{0}\');" >编辑</a>', row.id);--%>
                        <%--</shiro:hasPermission>--%>
                        <%--<shiro:hasPermission name="/role/delete">--%>
                            <%--str += '&nbsp;&nbsp;|&nbsp;&nbsp;';--%>
                            <%--str += $.formatString('<a href="javascript:void(0)" class="role-easyui-linkbutton-del" data-options="plain:true,iconCls:\'fi-x icon-red\'" onclick="deleteRoleFun(\'{0}\');" >删除</a>', row.id);--%>
                        <%--</shiro:hasPermission>--%>
                    <%--return str;--%>
                <%--}--%>
            <%--} ] ],--%>
            <%--onLoadSuccess:function(data){--%>
                <%--$('.role-easyui-linkbutton-ok').linkbutton({text:'授权'});--%>
                <%--$('.role-easyui-linkbutton-edit').linkbutton({text:'编辑'});--%>
                <%--$('.role-easyui-linkbutton-del').linkbutton({text:'删除'});--%>
            <%--},--%>
            <%--toolbar : '#roleToolbar'--%>
        <%--});--%>
    });

    <%--function addRoleFun() {--%>
        <%--parent.$.modalDialog({--%>
            <%--title : '添加',--%>
            <%--width : 500,--%>
            <%--height : 300,--%>
            <%--href : '${path }/role/addPage',--%>
            <%--buttons : [ {--%>
                <%--text : '确定',--%>
                <%--handler : function() {--%>
                    <%--parent.$.modalDialog.openner_dataGrid = roleDataGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好--%>
                    <%--var f = parent.$.modalDialog.handler.find('#roleAddForm');--%>
                    <%--f.submit();--%>
                <%--}--%>
            <%--} ]--%>
        <%--});--%>
    <%--}--%>

    <%--function editRoleFun(id) {--%>
        <%--if (id == undefined) {--%>
            <%--var rows = roleDataGrid.datagrid('getSelections');--%>
            <%--id = rows[0].id;--%>
        <%--} else {--%>
            <%--roleDataGrid.datagrid('unselectAll').datagrid('uncheckAll');--%>
        <%--}--%>
        <%--parent.$.modalDialog({--%>
            <%--title : '编辑',--%>
            <%--width : 500,--%>
            <%--height : 300,--%>
            <%--href : '${path }/role/editPage?id=' + id,--%>
            <%--buttons : [ {--%>
                <%--text : '确定',--%>
                <%--handler : function() {--%>
                    <%--parent.$.modalDialog.openner_dataGrid = roleDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好--%>
                    <%--var f = parent.$.modalDialog.handler.find('#roleEditForm');--%>
                    <%--f.submit();--%>
                <%--}--%>
            <%--} ]--%>
        <%--});--%>
    <%--}--%>

    <%--function deleteRoleFun(id) {--%>
        <%--if (id == undefined) {//点击右键菜单才会触发这个--%>
            <%--var rows = roleDataGrid.datagrid('getSelections');--%>
            <%--id = rows[0].id;--%>
        <%--} else {//点击操作里面的删除图标会触发这个--%>
            <%--roleDataGrid.datagrid('unselectAll').datagrid('uncheckAll');--%>
        <%--}--%>
        <%--parent.$.messager.confirm('询问', '您是否要删除当前角色？', function(b) {--%>
            <%--if (b) {--%>
                <%--progressLoad();--%>
                <%--$.post('${path }/role/delete', {--%>
                    <%--id : id--%>
                <%--}, function(result) {--%>
                    <%--if (result.success) {--%>
                        <%--parent.$.messager.alert('提示', result.msg, 'info');--%>
                        <%--roleDataGrid.datagrid('reload');--%>
                    <%--}--%>
                    <%--progressClose();--%>
                <%--}, 'JSON');--%>
            <%--}--%>
        <%--});--%>
    <%--}--%>

    <%--function grantRoleFun(id) {--%>
        <%--if (id == undefined) {--%>
            <%--var rows = roleDataGrid.datagrid('getSelections');--%>
            <%--id = rows[0].id;--%>
        <%--} else {--%>
            <%--roleDataGrid.datagrid('unselectAll').datagrid('uncheckAll');--%>
        <%--}--%>
        <%----%>
        <%--parent.$.modalDialog({--%>
            <%--title : '授权',--%>
            <%--width : 500,--%>
            <%--height : 500,--%>
            <%--href : '${path }/role/grantPage?id=' + id,--%>
            <%--buttons : [ {--%>
                <%--text : '确定',--%>
                <%--handler : function() {--%>
                    <%--parent.$.modalDialog.openner_dataGrid = roleDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好--%>
                    <%--var f = parent.$.modalDialog.handler.find('#roleGrantForm');--%>
                    <%--f.submit();--%>
                <%--}--%>
            <%--} ]--%>
        <%--});--%>
    <%--}--%>
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'north',border:false" style="height: 30px; overflow: hidden;background-color: #fff">
        <form id="searchUserForm">
            <table>
                <tr>
                    <th>项目名称:</th>
                    <td><input name="name" placeholder="请输入项目名称"/></td>
                    <th>创建时间:</th>
                    <td>
                        <input name="createdateStart" placeholder="点击选择时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" />至
                        <input  name="createdateEnd" placeholder="点击选择时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" />
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'fi-magnifying-glass',plain:true" onclick="searchUserFun();">查询</a>
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'fi-x-circle',plain:true" onclick="cleanUserFun();">清空</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div data-options="region:'center',border:true,title:'项目列表'" >
        <div class="easyui-layout" style="width:100%;height:100%;">
            <div data-options="region:'center'"  style="overflow: hidden;height: 60%">
                <table id="projectDataGrid" class="easyui-datagrid" width="100%"
                       data-options="fit:true,border:false,fitColumns:true,toolbar:'#projectToolbar'">
                    <thead>
                    <tr>
                        <th data-options="field:'code',width:100">项目单位名称</th>
                        <th data-options="field:'name',width:100">送审金额</th>
                        <th data-options="field:'test',width:100">审减金额</th>
                        <th data-options="field:'test1',width:100">采购方式</th>
                        <th data-options="field:'test2',width:100">联系人</th>
                        <th data-options="field:'test3',width:100">联系电话</th>
                        <th data-options="field:'test4',width:100">项目类型</th>
                        <th data-options="field:'test5',width:100">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>测试数据1</td>
                        <td align="left">100,000</td>
                        <td align="left">10,000</td>
                        <td>单次采购</td>
                        <td>admin</td>
                        <td>155********</td>
                        <td>招标文件</td>
                        <td>
                            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-pencil icon-blue'" onclick="editRoleFun();" >编辑</a>
                            &nbsp;&nbsp;|&nbsp;&nbsp;
                            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-x icon-red'" onclick="deleteRoleFun();" >删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>测试数据2</td>
                        <td align="left">100,000</td>
                        <td align="left">10,000</td>
                        <td>合同采购</td>
                        <td>admin</td>
                        <td>155********</td>
                        <td>结算</td>
                        <td>
                            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-pencil icon-blue'" onclick="editRoleFun();" >编辑</a>
                            &nbsp;&nbsp;|&nbsp;&nbsp;
                            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-x icon-red'" onclick="deleteRoleFun();" >删除</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div data-options="region:'south',border:false,title:'项目过程信息'" style="height: 40%;overflow: hidden" >
                <div id="index_tabs2" style="overflow: hidden;">
                    <div title="审计过程信息" data-options="iconCls:'fi-home',border:false" style="overflow: hidden;">
                        <table id="test"  class="easyui-datagrid" width="100%"
                               data-options="fit:true,border:false,fitColumns:true">
                            <thead>
                            <tr>
                                <th data-options="field:'test0',width:100">标题</th>
                                <th data-options="field:'test2',width:100">类型</th>
                                <th data-options="field:'test3',width:100">创建人</th>
                                <th data-options="field:'test4',width:100">信息内容</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>审计过程标题</td>
                                <td>审计面谈</td>
                                <td>admin</td>
                                <td>于2018年8月30日10:47:42在北京开始面谈</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div title="中介考核信息" data-options="iconCls:'fi-home',border:false" style="overflow: hidden;">
                        <table id="test1"  class="easyui-datagrid" width="100%"
                               data-options="fit:true,border:false,fitColumns:true">
                            <thead>
                            <tr>
                                <th data-options="field:'test0',width:100">标题</th>
                                <th data-options="field:'test2',width:100">类型</th>
                                <th data-options="field:'test3',width:100">创建人</th>
                                <th data-options="field:'test4',width:100">信息内容</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>中介考核标题</td>
                                <td>日常考核</td>
                                <td>admin</td>
                                <td>考核的不错</td>
                            </tr>
                            </tbody>
                        </table>

                    </div>  <div title="审计费核算信息" data-options="iconCls:'fi-home',border:false" style="overflow: hidden;">
                        <table id="test2"  class="easyui-datagrid" width="100%"
                               data-options="fit:true,border:false,fitColumns:true">
                            <thead>
                            <tr>
                                <th data-options="field:'test0',width:100">标题</th>
                                <th data-options="field:'test2',width:100">类型</th>
                                <th data-options="field:'test3',width:100">创建人</th>
                                <th data-options="field:'test4',width:100">信息内容</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>审计费核算标题</td>
                                <td>自动计算项目审计费</td>
                                <td>admin</td>
                                <td>自动计算项目审计费</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div title="审计成果信息" data-options="iconCls:'fi-home',border:false" style="overflow: hidden;">
                        <table id="test3"  class="easyui-datagrid" width="100%"
                               data-options="fit:true,border:false,fitColumns:true">
                            <thead>
                            <tr>
                                <th data-options="field:'test0',width:100">标题</th>
                                <th data-options="field:'test2',width:100">类型</th>
                                <th data-options="field:'test3',width:100">创建人</th>
                                <th data-options="field:'test4',width:100">信息内容</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>审计成果信息标题</td>
                                <td>挂接中介机构审核报告</td>
                                <td>admin</td>
                                <td>挂接中介机构审核报告</td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>

    </div>
    <div data-options="region:'west',border:true,split:false,title:'组织机构'"  style="width:150px;overflow: hidden; ">
        <ul id="organizationTree2" style="width:160px;margin: 10px 10px 10px 10px"></ul>
    </div>
</div>

<div id="projectToolbar" style="display: none;">
    <shiro:hasPermission name="/role/add">
        <a onclick="addRoleFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-plus icon-green'">添加</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-x icon-red'" onclick="deleteRoleFun();" >删除</a>
    </shiro:hasPermission>
</div>