package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CollectionMessageBean {
    private List<CollectionDataBean> data;
    private String modeltype;

    public CollectionMessageBean() {
    }

    public List<CollectionDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<CollectionDataBean> data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public CollectionMessageBean(String modeltype, List<CollectionDataBean> data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
