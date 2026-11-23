package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SearchIntegratedPostBean {
    private List<ForumBean.ForumSearchQueryBean> list;
    private List<ForumBean.ForumSearchQueryBean> recommend_list;
    private TopArea top_area;

    public static class TopArea {
        private String description;
        private int fid;
        private String icon_src;
        private String name;
        private int posts;
        private int today_posts;
        private int users;

        public String getDescription() {
            return this.description;
        }

        public int getFid() {
            return this.fid;
        }

        public String getIcon_src() {
            return this.icon_src;
        }

        public String getName() {
            return this.name;
        }

        public int getPosts() {
            return this.posts;
        }

        public int getToday_posts() {
            return this.today_posts;
        }

        public int getUsers() {
            return this.users;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public void setFid(int fid) {
            this.fid = fid;
        }

        public void setIcon_src(String icon_src) {
            this.icon_src = icon_src;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setPosts(int posts) {
            this.posts = posts;
        }

        public void setToday_posts(int today_posts) {
            this.today_posts = today_posts;
        }

        public void setUsers(int users) {
            this.users = users;
        }
    }

    public List<ForumBean.ForumSearchQueryBean> getList() {
        return this.list;
    }

    public List<ForumBean.ForumSearchQueryBean> getRecommend_list() {
        return this.recommend_list;
    }

    public TopArea getTop_area() {
        return this.top_area;
    }

    public void setList(List<ForumBean.ForumSearchQueryBean> list) {
        this.list = list;
    }

    public void setRecommend_list(List<ForumBean.ForumSearchQueryBean> recommend_list) {
        this.recommend_list = recommend_list;
    }

    public void setTop_area(TopArea top_area) {
        this.top_area = top_area;
    }
}
