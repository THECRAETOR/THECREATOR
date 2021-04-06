package com.learn.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * 文件信息
 *
 */
public class FileEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private Long id;

    //文件名称
    private String name;

    //用户信息
    private Long user;

    private SysUserEntity sysUserEntity;

    public SysUserEntity getSysUserEntity() {
        return sysUserEntity;
    }

    public void setSysUserEntity(SysUserEntity sysUserEntity) {
        this.sysUserEntity = sysUserEntity;
    }


    //存储地址
    private String url;

    //保密级别
    private String level;

    private String hash;

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    //上传时间
    private Date gmttime = new Date();

    //作者
    private String author;

    //文档日期
    private Date wdrq;

    //文档标题
    private String title;

    //文档主题
    private String subject;

    //主关键词
    private String key;

    //文档关键词（三个）
    private String keys;

    //作者所在单位
    private String dw;

    //文档类型
    private String type;

    private Date begin;
    private Date end;

    public Date getBegin() {
        return begin;
    }

    public void setBegin(Date begin) {
        this.begin = begin;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getWdrq() {
        return wdrq;
    }

    public void setWdrq(Date wdrq) {
        this.wdrq = wdrq;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getKeys() {
        return keys;
    }

    public void setKeys(String keys) {
        this.keys = keys;
    }

    public String getDw() {
        return dw;
    }

    public void setDw(String dw) {
        this.dw = dw;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    /**
     * 设置：
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取：
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置：文件名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取：文件名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置：用户信息
     */
    public void setUser(Long user) {
        this.user = user;
    }

    /**
     * 获取：用户信息
     */
    public Long getUser() {
        return user;
    }

    /**
     * 设置：存储地址
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 获取：存储地址
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置：保密级别
     */
    public void setLevel(String level) {
        this.level = level;
    }

    /**
     * 获取：保密级别
     */
    public String getLevel() {
        return level;
    }

    /**
     * 设置：上传时间
     */
    public void setGmttime(Date gmttime) {
        this.gmttime = gmttime;
    }

    /**
     * 获取：上传时间
     */
    public Date getGmttime() {
        return gmttime;
    }
}
