package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class WarModuleMessageBean {
    private List<WarModuleDataBean> data;
    private String modeltype;

    public WarModuleMessageBean() {
    }

    public List<WarModuleDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<WarModuleDataBean> data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public WarModuleMessageBean(String modeltype, List<WarModuleDataBean> data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
