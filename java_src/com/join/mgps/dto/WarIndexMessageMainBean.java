package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class WarIndexMessageMainBean<E> {
    private List<WarIndexDataBean> data;
    private String modeltype;

    public WarIndexMessageMainBean() {
    }

    public List<WarIndexDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<WarIndexDataBean> data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public WarIndexMessageMainBean(String modeltype, List<WarIndexDataBean> data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
