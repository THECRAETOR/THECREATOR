package com.learn.controller;

import com.learn.entity.FileEntity;
import com.learn.service.FileService;
import com.learn.service.SysUserService;
import com.learn.utils.HashUtil;
import com.learn.utils.MultipartFileUtil;
import com.learn.utils.R;
import com.learn.utils.RRException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.File;


/**
 * 文件上传
 *
 */
@RestController
@RequestMapping("file")
public class UploadController extends AbstractController {

    public static String[] suffixs = {"IMG", "PNG", "JPG", "JPEG", "GIF", "BPM"};

    @Autowired
    FileService fileService;
    @Autowired
    SysUserService sysUserService;

    /**
     * 上传文件
     */
    @RequestMapping("/upload")
    public R upload(@RequestParam("file") MultipartFile file, HttpServletRequest request, String level) throws Exception {


        if (file.isEmpty()) {
            throw new RRException("上传文件不能为空");
        }
        MultipartHttpServletRequest re = (MultipartHttpServletRequest) request;
        for (MultipartFile f : re.getFiles("file")) {
            String url = MultipartFileUtil.uploadFile("/cdn", f, request);
            FileEntity entity = new FileEntity();
            entity.setName(f.getOriginalFilename());
            entity.setUrl(url);
            entity.setUser(super.getUserId());
            entity.setLevel(level);
            entity.setHash(HashUtil.getFileMD5(new File(MultipartFileUtil.getRootPath(request) + url)));
            this.fileService.save(entity);
        }

        return R.ok();
    }

    @RequestMapping("/upload1")
    public R upload1(@RequestParam("file") MultipartFile file, HttpServletRequest request, String level) throws Exception {

        if (file.isEmpty()) {
            throw new RRException("上传文件不能为空");
        }


        return R.ok().put("url",MultipartFileUtil.uploadFile("/cdn", file, request)).put("name",file.getOriginalFilename());
    }


}
