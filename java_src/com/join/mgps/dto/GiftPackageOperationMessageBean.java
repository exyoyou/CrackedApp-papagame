package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageOperationMessageBean {
    private List<GiftPackageDataOperationBean> data;
    private String modeltype;

    public GiftPackageOperationMessageBean() {
    }

    public List<GiftPackageDataOperationBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<GiftPackageDataOperationBean> data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public GiftPackageOperationMessageBean(String modeltype, List<GiftPackageDataOperationBean> data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
