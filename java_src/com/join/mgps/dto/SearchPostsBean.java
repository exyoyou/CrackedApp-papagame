package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SearchPostsBean {
    private String keyword;
    private SearchIntegratedPostBean posts_list;
    private List<ForumBean.ForumSearchQueryBean> recommend_list;

    public String getKeyword() {
        return this.keyword;
    }

    public SearchIntegratedPostBean getPosts_list() {
        return this.posts_list;
    }

    public List<ForumBean.ForumSearchQueryBean> getRecommend_list() {
        return this.recommend_list;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setPosts_list(SearchIntegratedPostBean posts_list) {
        this.posts_list = posts_list;
    }

    public void setRecommend_list(List<ForumBean.ForumSearchQueryBean> recommend_list) {
        this.recommend_list = recommend_list;
    }
}
