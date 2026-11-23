package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class SingleGameModInfoBean implements Serializable {
    private String downUrl;
    private String extUrl;
    private String extVer;
    private boolean isIncompatible;
    private int status = 14;
    private Integer version;

    public String getDownUrl() {
        return this.downUrl;
    }

    public String getExtUrl() {
        return this.extUrl;
    }

    public String getExtVer() {
        return this.extVer;
    }

    public int getStatus() {
        return this.status;
    }

    public Integer getVersion() {
        return this.version;
    }

    public boolean isIncompatible() {
        return this.isIncompatible;
    }

    public void setDownUrl(String downUrl2) {
        this.downUrl = downUrl2;
    }

    public void setExtUrl(String extUrl) {
        this.extUrl = extUrl;
    }

    public void setExtVer(String extVer) {
        this.extVer = extVer;
    }

    public void setIncompatible(boolean incompatible) {
        this.isIncompatible = incompatible;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setVersion(Integer version2) {
        this.version = version2;
    }
}
