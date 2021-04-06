$(function () {
    $("#jqGrid").jqGrid({
        url: '../file/list',
        datatype: "json",
        colModel: [
            {
                label: 'id',
                name: 'id',
                index: 'id',
                width: 50,
                key: true,
                hidden: true,
                formatter: function (v, a, r) {
                    return "<a onclick='vm.info(\"" + r.id + "\")'>" + v + " </a>"
                }
            },
            {
                label: '文件名称',
                name: 'name',
                index: 'name',
                width: 200,
                formatter: function (v, a, r) {
                    return "<a onclick='vm.info(\"" + r.id + "\")'>" + v + " </a>"
                }
            },
            {
                label: '保密级别',
                name: 'level',
                index: 'level',
                width: 80
            },

            {
                label: '作者',
                name: 'author',
                index: 'author',
                width: 80
            },
            {
                label: '文档类型',
                name: 'type',
                index: 'type',
                width: 80
            },
            {
                label: '文档标题',
                name: 'title',
                index: 'title',
                width: 80
            },
            {
                label: '上传时间',
                name: 'gmttime',
                index: 'gmtTime',
                width: 80
            },
            {
                label: '操作',
                name: 'name',
                index: 'name',
                width: 80,
                formatter: function (v, a, r) {
                    return "<a onclick='vm.info(\"" + r.id + "\")'>下载 </a> <a onclick='vm.update(\"" + r.id + "\")'>修改 </a><a   onclick='vm.del(\"" + r.id + "\")'>删除 </a>"
                }
            },
        ],
        viewrecords: true,
        height: 385,
        rowNum: 10,
        rowList: [10, 30, 50],
        rownumbers: true,
        rownumWidth: 25,
        autowidth: true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader: {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames: {
            page: "page",
            rows: "limit",
            order: "order"
        },
        gridComplete: function () {
            //隐藏grid底部滚动条
            $("#jqGrid").closest(".ui-jqgrid-bdiv").css({"overflow-x": "hidden"});
        }
    });
});

var vm = new Vue({
    el: '#rrapp',
    data: {
        q: {
            name: ''
        },
        showAdd: false,
        showInfo: false,
        showList: true,
        title: null,
        file: {},
        pub: ''
    },
    created: function () {

    },
    methods: {
        query: function () {
            vm.reload();
        }
        ,
        add: function () {
            vm.showAdd = true;
            vm.showList = false;
            vm.title = "新增";
            vm.file = {};
        }
        ,
        update: function (id) {

            vm.showAdd = true;
            vm.showList = false;
            vm.title = "修改";

            vm.getInfo(id)
        }
        ,

        saveOrUpdate: function (event) {
            var url = vm
                .file.id ==
            null ? "../file/save" : "../file/update";
            $.ajax({
                type: "POST",
                url: url,
                data: JSON.stringify(vm.file),
                success: function (r) {
                    if (r.code === 0) {
                        alert('操作成功', function (index) {
                            vm.reload();
                        });
                    } else {
                        alert(r.msg);
                    }
                }
            });
        },
        saveOrUpdate11: function (event) {


            $.ajax({
                dataType: "json",
                contentType: "application/x-www-form-urlencoded",
                cache: false,
                type: "POST",
                url: "../file/get/" + this.file.id,
                data: {pub: this.pub},
                success: function (r) {
                    if (r.code == 0) {
                        console.log(r);
                        layer.msg('验证通过，下载中...');
                        window.open(r.file.url);
                    } else {
                        alert(r.msg);
                    }
                }
            });
        }
        ,
        del: function (id) {


            confirm('确定要删除吗？', function () {
                $.ajax({
                    type: "POST",
                    url: "../file/delete",
                    data: JSON.stringify([id]),
                    success: function (r) {
                        if (r.code == 0) {
                            alert('操作成功', function (index) {
                                $("#jqGrid").trigger("reloadGrid");
                            });
                        } else {
                            alert(r.msg);
                        }
                    }
                });
            });
        }
        ,
        getInfo: function (id) {
            $.get("../file/info/" + id, function (r) {
                vm.file = r.file;
            });
        }
        ,
        info: function (id) {
            if (isNaN(id)) {
                id
                    = getSelectedRow();
                if (id == null
                ) {
                    return;
                }
            }
            vm.showAdd = false;
            vm.showList = false;
            vm.showInfo = true;
            vm.title = "详情";

            vm.getInfo(id)
        }
        ,
        reload: function (event) {
            vm.showList = true;
            vm.showInfo = false;
            vm.showAdd = false;
            var page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: vm.q,
                page: page
            }).trigger("reloadGrid");
        }
    }
});