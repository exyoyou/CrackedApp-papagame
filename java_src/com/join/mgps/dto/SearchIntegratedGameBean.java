package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SearchIntegratedGameBean {
    private SearchResultAdinfo ad_info;
    private List<CollectionBeanSub> list;
    private List<CollectionBeanSub> recommend_list;

    public SearchResultAdinfo getAd_info() {
        return this.ad_info;
    }

    public List<CollectionBeanSub> getList() {
        return this.list;
    }

    public List<CollectionBeanSub> getRecommend_list() {
        return this.recommend_list;
    }

    public void setAd_info(SearchResultAdinfo ad_info) {
        this.ad_info = ad_info;
    }

    public void setList(List<CollectionBeanSub> list) {
        this.list = list;
    }

    public void setRecommend_list(List<CollectionBeanSub> recommend_list) {
        this.recommend_list = recommend_list;
    }
}
