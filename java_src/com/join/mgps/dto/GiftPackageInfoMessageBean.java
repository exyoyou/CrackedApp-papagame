package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageInfoMessageBean {
    private GiftPackageDataInfoBean data;
    private String modeltype;

    public GiftPackageInfoMessageBean() {
    }

    public GiftPackageDataInfoBean getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(GiftPackageDataInfoBean data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public GiftPackageInfoMessageBean(String modeltype, GiftPackageDataInfoBean data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
