package com.learn.controller;

import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.learn.entity.MsgEntity;
import com.learn.service.MsgService;
import com.learn.utils.PageUtils;
import com.learn.utils.Query;
import com.learn.utils.R;


/**
 * 互动交流
 */
@RestController
@RequestMapping("msg")
public class MsgController extends AbstractController {
    @Autowired
    private MsgService msgService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params) {

            params.put("user", super.getUserId());


        //查询列表数据
        Query query = new Query(params);

        List<MsgEntity> msgList = msgService.queryList(query);
        int total = msgService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(msgList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }
    /**
     * 列表
     */
    @RequestMapping("/list3")
    public R list3(@RequestParam Map<String, Object> params) {

            params.put("user1", super.getUserId());


        //查询列表数据
        Query query = new Query(params);

        List<MsgEntity> msgList = msgService.queryList(query);
        int total = msgService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(msgList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }


    /**
     * 列表
     */
    @RequestMapping("/list2")
    public R list2(@RequestParam Map<String, Object> params) {
        Query query = new Query(params);
        List<MsgEntity> msgList = msgService.queryList(query);
        return R.ok().put("list", msgList);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id) {
        MsgEntity msg = msgService.queryObject(id);

        return R.ok().put("msg", msg);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MsgEntity msg) {

        if (msg.getUser() == null)
            msg.setUser(super.getUserId());


        msgService.save(msg);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody MsgEntity msg) {
        msgService.update(msg);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids) {
        msgService.deleteBatch(ids);

        return R.ok();
    }

}
