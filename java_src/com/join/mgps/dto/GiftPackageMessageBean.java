package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageMessageBean {
    private GiftPackageMainDataInfoBean data;
    private String modeltype;

    public GiftPackageMessageBean() {
    }

    public GiftPackageMainDataInfoBean getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(GiftPackageMainDataInfoBean data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public GiftPackageMessageBean(String modeltype, GiftPackageMainDataInfoBean data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
