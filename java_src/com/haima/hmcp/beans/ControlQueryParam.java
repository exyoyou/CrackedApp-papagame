package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ControlQueryParam implements IParameter {
    private long cid;
    private String envType;

    public long getCid() {
        return this.cid;
    }

    public String getEnvType() {
        return this.envType;
    }

    public void setCid(long j10) {
        this.cid = j10;
    }

    public void setEnvType(String str) {
        this.envType = str;
    }

    public String toString() {
        return "ControlQueryParam{cid=" + this.cid + ", envType='" + this.envType + "'}";
    }
}
