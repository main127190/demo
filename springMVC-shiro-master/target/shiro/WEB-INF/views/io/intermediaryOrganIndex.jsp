<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var roleDataGrid;
    $(function() {
      $('#intermediaryTest').treegrid({
          data:[ {
              "id": 6,
              "test0": "第一次审核",
              "test1": "admin",
              "test2": "第一次给个高分",
              "pid": 3,
              "test3": 80,
              "test4": "2015-12-06 13:12:18",
              "iconCls": "fi-folder"
          },{
              "id": 20,
              "test0": "第二次审核",
              "test1": "admin",
              "test2": "心情不好，给差评",
              "pid": 3,
              "test3": -100,
              "test4": "2015-12-06 13:12:18",
              "iconCls": "fi-folder"
          }, {
              "id": 7,
              "test0": "不想审核了",
              "test1": "admin",
              "test2": "(～￣▽￣)～",
              "pid": 5,
              "test3": 100,
              "test4": "2018-08-28 13:14:15",
              "iconCls": "fi-folder"
          }, {
              "id": 3,
              "test0": "测试项目1",
              "test1": "admin",
              "test2": "-",
              "pid": null,
              "test3": -20,
              "test4": "2015-10-01 13:10:42",
              "iconCls": "fi-folder"
          }, {
              "id": 5,
              "test0": "测试项目2",
              "test1": "admin",
              "test2": "-",
              "pid": null,
              "test3": 100,
              "test4": "2015-12-06 12:15:30",
              "iconCls": "fi-folder"
          }],
          idField : 'id',
          treeField : 'test0',
          parentField : 'pid',
          fit : true,
          fitColumns : true,
          border : false,
          frozenColumns : [ [ {
              title : 'id',
              field : 'id',
              width : 40,
              hidden : true
          } ] ],
          columns : [ [ {
              field : 'test0',
              title : '项目名称',
              width : 200
          },{
              field : 'test1',
              title : '审核人',
              width : 80
          }, {
              field : 'test2',
              title : '奖罚原因',
              width : 200
          }, {
              field : 'test3',
              title : '奖罚分值',
              width : 40
          },  {
              width : 80,
              title : '结束时间',
              field : 'test4'
          } ] ]
      });

     $('#intermediaryDataGrid').datagrid({
            data:{
                "total": 4,
                "rows": [{
                    "test1": "测试资质",
                    "test0": "测试组的中介",
                    "test2": "admin",
                    "test3": "155********",
                    "test4": "这是测试组的中介",
                    "test5": "★★★★★"
                }, {
                    "test1": "测试资质",
                    "test0": "测试组的第二个中介",
                    "test2": "admin",
                    "test3": "155********",
                    "test4": "这是测试组的中介",
                    "test5": "★★★"
                }, {
                    "test1": "测试资质",
                    "test0": "设施部的中介",
                    "test2": "admin",
                    "test3": "155********",
                    "test4": "这是测试组的中介",
                    "test5": "★★★★"
                }, {
                    "test1": "测试资质",
                    "test0": "设施部的第二个中介",
                    "test2": "admin",
                    "test3": "155********",
                    "test4": "这是测试组的中介",
                    "test5": "★★★★★"
                }]
            },
            fit : true,
            striped : true,
            rownumbers : true,
            pagination : true,
            singleSelect : true,
            idField : 'id',
            sortName : 'createTime',
            sortOrder : 'asc',
            pageSize : 20,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            columns : [ [{
                field : 'ck',
                checkbox : true
            },  {
                width : '160',
                title : '公司名',
                field : 'test0',
                sortable : true
            }, {
                width : '80',
                title : '公司资质',
                field : 'test1',
                sortable : true
            },{
                width : '80',
                title : '联系人',
                field : 'test2',
                sortable : true
            },{
                width : '80',
                title : '联系方式',
                field : 'test3'
            },{
                width : '130',
                title : '备注',
                field : 'test4',
                sortable : true
            }, {
                width : '80',
                title : '评级',
                field : 'test5',
                sortable : true
            }] ],
            onLoadSuccess:function(data){
                $('.user-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.user-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#intermediaryToolbar'
        });


        $('#organizationTree3').tree({
            url : '${path }/organization/tree',
            parentField : 'pid',
            lines : true,
            onClick : function(node) {
            if(node.id==1){
                $('#intermediaryDataGrid').datagrid({
                    data:{
                        "total": 4,
                        "rows": [{
                            "test1": "测试资质",
                            "test0": "测试组的中介",
                            "test2": "admin",
                            "test3": "155********",
                            "test4": "这是测试组的中介",
                            "test5": "★★★★★"
                        }, {
                            "test1": "测试资质",
                            "test0": "测试组的第二个中介",
                            "test2": "admin",
                            "test3": "155********",
                            "test4": "这是测试组的中介",
                            "test5": "★★★"
                        }, {
                            "test1": "测试资质",
                            "test0": "设施部的中介",
                            "test2": "admin",
                            "test3": "155********",
                            "test4": "这是测试组的中介",
                            "test5": "★★★★"
                        }, {
                            "test1": "测试资质",
                            "test0": "设施部的第二个中介",
                            "test2": "admin",
                            "test3": "155********",
                            "test4": "这是测试组的中介",
                            "test5": "★★★★★"
                        }]
                    }
                });
            }else if(node.id==3 ||node.id==6){
                $('#intermediaryDataGrid').datagrid({
                    data:{
                        "total": 2,
                        "rows": [{
                            "test1": "测试资质",
                            "test0": "测试组的中介",
                            "test2": "admin",
                            "test3": "155********",
                            "test4": "这是测试组的中介",
                            "test5": "★★★★★"
                        }, {
                            "test1": "测试资质",
                            "test0": "测试组的第二个中介",
                            "test2": "admin",
                            "test3": "155********",
                            "test4": "这是测试组的中介",
                            "test5": "★★★"
                        }]
                    }
                });
            }else if(node.id==5 ||node.id==7){
                $('#intermediaryDataGrid').datagrid({
                    data:{
                        "total": 2,
                        "rows": [{
                            "test1": "测试资质",
                            "test0": "设施部的中介",
                            "test2": "admin",
                            "test3": "155********",
                            "test4": "这是测试组的中介",
                            "test5": "★★★★"
                        }, {
                            "test1": "测试资质",
                            "test0": "设施部的第二个中介",
                            "test2": "admin",
                            "test3": "155********",
                            "test4": "这是测试组的中介",
                            "test5": "★★★★★"
                        }]
                    }
                });
            }
//                userDataGrid.datagrid('load', {
//                    organizationId: node.id
//                });
            }
        });
        $('#index_tabs3').tabs({
            fit : true,
            border : false
        });

    });


</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'north',border:false" style="height: 30px; overflow: hidden;background-color: #fff">
        <form id="searchUserForm">
            <table>
                <tr>
                    <th>中介名称:</th>
                    <td><input name="name" placeholder="请输入中介名称"/></td>
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
                <table id="intermediaryDataGrid" class="easyui-datagrid" width="100%"></table>
            </div>
            <div data-options="region:'south',border:false,title:'中介项目信息'" style="height: 40%;overflow: hidden" >
                <div id="index_tabs3" style="overflow: hidden;">
                    <div title="中介考核信息" data-options="iconCls:'fi-home',border:false" style="overflow: hidden;">
                        <table id="intermediaryTest"  width="100%" ></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div data-options="region:'west',border:true,split:false,title:'组织机构'"  style="width:150px;overflow: hidden; ">
        <ul id="organizationTree3" style="width:160px;margin: 10px 10px 10px 10px"></ul>
    </div>
</div>

<div id="intermediaryToolbar" style="display: none;">
    <shiro:hasPermission name="/role/add">
        <a onclick="addRoleFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-plus icon-green'">添加</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-pencil icon-blue'" onclick="deleteRoleFun();" >编辑</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-x icon-red'" onclick="deleteRoleFun();" >删除</a>
    </shiro:hasPermission>
</div>