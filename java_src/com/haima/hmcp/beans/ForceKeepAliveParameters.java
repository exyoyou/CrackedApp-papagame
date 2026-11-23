package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ForceKeepAliveParameters implements IParameter {
    public String cid;
    public long hangupTimeSeconds;
    public int hangupType = 0;

    public String toString() {
        return "ForceKeepAliveParameters{cid='" + this.cid + "', hangupTimeSeconds=" + this.hangupTimeSeconds + ", hangupType=" + this.hangupType + '}';
    }
}
