package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DiscoverListData<T> {
    private List<T> news_list;
    private List<DIscoverTypeBean> type_list;

    public List<T> getNews_list() {
        return this.news_list;
    }

    public List<DIscoverTypeBean> getType_list() {
        return this.type_list;
    }

    public void setNews_list(List<T> news_list) {
        this.news_list = news_list;
    }

    public void setType_list(List<DIscoverTypeBean> type_list) {
        this.type_list = type_list;
    }
}
