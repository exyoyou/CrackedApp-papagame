package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class InformationMessageBean {
    private List<InformationListDataBean> data;
    private String modeltype;

    public InformationMessageBean() {
    }

    public List<InformationListDataBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<InformationListDataBean> data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public InformationMessageBean(String modeltype, List<InformationListDataBean> data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
