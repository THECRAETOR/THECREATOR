package com.learn.controller;

import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.learn.dao.FileDao;
import com.learn.service.SysUserService;
import com.learn.utils.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.codec.Hex;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.learn.entity.FileEntity;
import com.learn.service.FileService;

import javax.servlet.http.HttpServletRequest;


/**
 * 文件信息
 *
 * @author THECREATOR
 * @email 2395341371@qq.com
 * @date
 */

@RestController
@RequestMapping("file")
public class FileController extends AbstractController {
    @Autowired
    private FileService fileService;
    @Autowired
    private RedisTemplate<String,Object> redisTemplate;



    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params) {

        if (super.getUserId() > 1)
            params.put("user", super.getUserId());
        //查询列表数据
        Query query = new Query(params);

        List<FileEntity> fileList = fileService.queryList(query);
        int total = fileService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(fileList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }


    /**
     * 列表
     */
    @RequestMapping("/list2")
    public R list2(@RequestParam Map<String, Object> params) {
        if (super.getUserId() > 1)
            params.put("user", super.getUserId());
        Query query = new Query(params);
        List<FileEntity> fileList = fileService.queryList(query);
        return R.ok().put("list", fileList);
    }

    @Autowired
    FileDao fileDao;

    @RequestMapping("/list3")
    public R list3(String order, String name, String type, String page, String limit, String begin, String end) {
        Map<String, Object> params = new HashMap<>();
        params.put("user", super.getUserId());
        params.put("sidx", "gmtTime");
        params.put("order", order);
        params.put("name", name);
        params.put("type", type);
        params.put("page", page);
        params.put("begin", begin);
        params.put("end", end);
        params.put("limit", limit);
        Query query = new Query(params);

        List<FileEntity> fileList = fileDao.queryList2(query);
        for (FileEntity entity : fileList) {
            if (this.sysUserService.queryObject(entity.getUser()) != null)
                entity.setSysUserEntity(this.sysUserService.queryObject(entity.getUser()));
        }

        int total = fileDao.queryTotal2(query);

        PageUtils pageUtil = new PageUtils(fileList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);

    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id) {
        FileEntity file = fileService.queryObject(id);

        return R.ok().put("file", file);
    }

    @Autowired
    SysUserService sysUserService;

    @RequestMapping("/get/{id}")
    public R get(@PathVariable("id") Long id, String pub) {
        FileEntity file = fileService.queryObject(id);


        //验证通过，下载

        return R.ok().put("file", file);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody FileEntity file, HttpServletRequest request) {

        if (file.getUser() == null)
            file.setUser(super.getUserId());

        file.setHash(HashUtil.getFileMD5(new File(MultipartFileUtil.getRootPath(request) + file.getUrl())));
        fileService.save(file);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody FileEntity file) {
        fileService.update(file);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids) {
        fileService.deleteBatch(ids);

        return R.ok();
    }
     /**
     * 测试redis
     */
    @RequestMapping("/testRedis")
    public Object testRedis() {
        RedisCluster redisCluster = new RedisCluster();
        redisCluster.setRedisTemplate(redisTemplate);
        redisCluster.get("account");
        Object account = redisTemplate.opsForValue().get("account");
        System.out.println(account.toString());
        return account.toString();
    }

}
