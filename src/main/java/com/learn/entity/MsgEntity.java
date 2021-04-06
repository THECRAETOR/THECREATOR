package com.learn.entity;

        import java.io.Serializable;
        import java.util.Date;
        import com.learn.service.*;



/**
 * 互动交流
 *
 
 *  
 */
public class MsgEntity implements Serializable {
    private static final long serialVersionUID = 1L;

            //
                    private Long id;
        
            //留言内容
                    private String content;
        
            //留言人
                    private Long user;

            private SysUserEntity sysUserEntity;

            public SysUserEntity getSysUserEntity() {
                return sysUserEntity;
            }

            public void setSysUserEntity(SysUserEntity sysUserEntity) {
                this.sysUserEntity = sysUserEntity;
            }

        
            //接收人
                    private Long user1;

            private  SysUserEntity  user1Entity;

            public SysUserEntity getUser1Entity() {
                return user1Entity;
            }

            public void setUser1Entity(SysUserEntity user1Entity) {
                this.user1Entity = user1Entity;
            }
        
            //回复
                    private String reply;
        
            //添加时间
                    private Date gmttime =new  Date();
        
    
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
         * 设置：留言内容
         */
        public void setContent(String content) {
            this.content = content;
        }

        /**
         * 获取：留言内容
         */
        public String getContent() {
            return content;
        }
            /**
         * 设置：留言人
         */
        public void setUser(Long user) {
            this.user = user;
        }

        /**
         * 获取：留言人
         */
        public Long getUser() {
            return user;
        }
            /**
         * 设置：接收人
         */
        public void setUser1(Long user1) {
            this.user1 = user1;
        }

        /**
         * 获取：接收人
         */
        public Long getUser1() {
            return user1;
        }
            /**
         * 设置：回复
         */
        public void setReply(String reply) {
            this.reply = reply;
        }

        /**
         * 获取：回复
         */
        public String getReply() {
            return reply;
        }
            /**
         * 设置：添加时间
         */
        public void setGmttime(Date gmttime) {
            this.gmttime = gmttime;
        }

        /**
         * 获取：添加时间
         */
        public Date getGmttime() {
            return gmttime;
        }
    }
