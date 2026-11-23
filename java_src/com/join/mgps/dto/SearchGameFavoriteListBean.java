package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SearchGameFavoriteListBean {
    private String keyword;
    private List<SearchIntegratedFavoriteBean.FavoriteBean> list;
    private List<SearchIntegratedFavoriteBean.FavoriteBean> recommend_list;

    public String getKeyword() {
        return this.keyword;
    }

    public List<SearchIntegratedFavoriteBean.FavoriteBean> getList() {
        return this.list;
    }

    public List<SearchIntegratedFavoriteBean.FavoriteBean> getRecommend_list() {
        return this.recommend_list;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setList(List<SearchIntegratedFavoriteBean.FavoriteBean> list) {
        this.list = list;
    }

    public void setRecommend_list(List<SearchIntegratedFavoriteBean.FavoriteBean> recommend_list) {
        this.recommend_list = recommend_list;
    }
}
