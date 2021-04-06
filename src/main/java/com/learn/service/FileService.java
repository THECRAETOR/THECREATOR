package com.learn.service;

import com.learn.entity.FileEntity;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Map;
@Service
/**
 * 文件信息
 *
 */

public interface FileService {
    /**
    * 查询
	* @return
	*/
	FileEntity queryObject(Long id);

    /**
    * 查询列表
    * @return
    */
	List<FileEntity> queryList(Map<String, Object> map);

    /**
    * 查询总数
    * @return
    */
	int queryTotal(Map<String, Object> map);

    /**
    * 保存
    * @return
    */
	void save(FileEntity file);

    /**
    * 修改
    * @return
    */
	void update(FileEntity file);

    /**
    * 删除
    * @return
    */
	void delete(Long id);

    /**
    * 批量删除
    * @return
    */
	void deleteBatch(Long[] ids);
}
