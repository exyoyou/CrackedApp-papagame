package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CollectionModuleMessageBean {
    private List<CollectionModuleDataBean> data;
    private String modeltype;

    public CollectionModuleMessageBean() {
    }

    public List<CollectionModuleDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<CollectionModuleDataBean> data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public CollectionModuleMessageBean(String modeltype, List<CollectionModuleDataBean> data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
