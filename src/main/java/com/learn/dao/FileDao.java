package com.learn.dao;

import com.learn.entity.FileEntity;

import java.util.List;
import java.util.Map;

/**
 * 文件信息
 *
 */
public interface FileDao extends BaseDao<FileEntity> {

    List<FileEntity> queryList2(Map<String, Object> map);


    int queryTotal2(Map<String, Object> map);
}
