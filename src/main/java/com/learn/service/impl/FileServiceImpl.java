package com.learn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.learn.service.SysUserService;


import com.learn.dao.FileDao;
import com.learn.entity.FileEntity;
import com.learn.service.FileService;


@Service("fileService")
public class FileServiceImpl implements FileService {
    @Autowired
    private FileDao fileDao;

    @Autowired
    private SysUserService sysUserService;


    @Override
    public FileEntity queryObject(Long id) {
        FileEntity entity = fileDao.queryObject(id);

        if (this.sysUserService.queryObject(entity.getUser()) != null)
            entity.setSysUserEntity(this.sysUserService.queryObject(entity.getUser()));

        return entity;
    }

    @Override
    public List<FileEntity> queryList(Map<String, Object> map) {
        List<FileEntity> list = fileDao.queryList(map);
        for (FileEntity entity : list) {
            if (this.sysUserService.queryObject(entity.getUser()) != null)
                entity.setSysUserEntity(this.sysUserService.queryObject(entity.getUser()));
        }
        return list;
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return fileDao.queryTotal(map);
    }

    @Override
    public void save(FileEntity file) {
        fileDao.save(file);
    }

    @Override
    public void update(FileEntity file) {
        fileDao.update(file);
    }

    @Override
    public void delete(Long id) {
        fileDao.delete(id);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        fileDao.deleteBatch(ids);
    }

}
