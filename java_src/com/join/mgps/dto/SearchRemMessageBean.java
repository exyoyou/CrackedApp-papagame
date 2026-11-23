package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SearchRemMessageBean {
    private List<SearchRemDataBean> data;
    private String modeltype;

    public SearchRemMessageBean() {
    }

    public List<SearchRemDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<SearchRemDataBean> data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public SearchRemMessageBean(String modeltype, List<SearchRemDataBean> data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
