package com.learn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.learn.service.SysUserService;


import com.learn.dao.MsgDao;
import com.learn.entity.MsgEntity;
import com.learn.service.MsgService;
import com.learn.service.*;


@Service("msgService")
public class MsgServiceImpl implements MsgService {
    @Autowired
    private MsgDao msgDao;
    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysUserService user1Service;

    @Override
    public MsgEntity queryObject(Long id) {
        MsgEntity entity = msgDao.queryObject(id);

        if (entity != null && this.sysUserService.queryObject(entity.getUser()) != null)
            entity.setSysUserEntity(this.sysUserService.queryObject(entity.getUser()));


        if (entity != null && entity.getUser1() != null && this.user1Service.queryObject(entity.getUser1()) != null)
            entity.setUser1Entity(this.user1Service.queryObject(entity.getUser1()));


        return entity;
    }

    @Override
    public List<MsgEntity> queryList(Map<String, Object> map) {
        List<MsgEntity> list = msgDao.queryList(map);
        for (MsgEntity entity : list) {
            if (entity != null && this.sysUserService.queryObject(entity.getUser()) != null)
                entity.setSysUserEntity(this.sysUserService.queryObject(entity.getUser()));


            if (entity != null && entity.getUser1() != null && this.user1Service.queryObject(entity.getUser1()) != null)
                entity.setUser1Entity(this.user1Service.queryObject(entity.getUser1()));

        }
        return list;
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return msgDao.queryTotal(map);
    }

    @Override
    public void save(MsgEntity msg) {
        msgDao.save(msg);
    }

    @Override
    public void update(MsgEntity msg) {
        msgDao.update(msg);
    }

    @Override
    public void delete(Long id) {
        msgDao.delete(id);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        msgDao.deleteBatch(ids);
    }

}
