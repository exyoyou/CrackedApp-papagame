package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CategoryMessageBean {
    private List<CategoryDataBean> data;
    private String modeltype;

    public CategoryMessageBean() {
    }

    public List<CategoryDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<CategoryDataBean> data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public CategoryMessageBean(String modeltype, List<CategoryDataBean> data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
