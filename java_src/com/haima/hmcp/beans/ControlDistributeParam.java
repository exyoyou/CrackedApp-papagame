package com.haima.hmcp.beans;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ControlDistributeParam implements IParameter {
    private long cid;
    private List<ControlInfo> controlInfos;
    private String envType;

    public long getCid() {
        return this.cid;
    }

    public List<ControlInfo> getControlInfos() {
        return this.controlInfos;
    }

    public String getEnvType() {
        return this.envType;
    }

    public void setCid(long j10) {
        this.cid = j10;
    }

    public void setControlInfos(List<ControlInfo> list) {
        this.controlInfos = list;
    }

    public void setEnvType(String str) {
        this.envType = str;
    }

    public String toString() {
        return "ControlDistributeParam{cid=" + this.cid + ", controlInfos=" + this.controlInfos + ", envType='" + this.envType + "'}";
    }
}
