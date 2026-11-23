package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameMainCommunityBean {
    private List<PostsBean> posts;

    public static class PostsBean {
        private int fid;
        private String message;
        private int pid;
        private String subject;

        public PostsBean() {
        }

        public int getFid() {
            return this.fid;
        }

        public String getMessage() {
            return this.message;
        }

        public int getPid() {
            return this.pid;
        }

        public String getSubject() {
            return this.subject;
        }

        public void setFid(int fid) {
            this.fid = fid;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setSubject(String subject) {
            this.subject = subject;
        }

        public PostsBean(String subject, int pid) {
            this.pid = pid;
            this.subject = subject;
        }
    }

    public List<PostsBean> getPosts() {
        return this.posts;
    }

    public void setPosts(List<PostsBean> posts) {
        this.posts = posts;
    }
}
