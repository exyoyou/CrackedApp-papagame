package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class UpdateInstanceTimeParameters implements IParameter {
    public String cid;
    public int keepAliveTimeSeconds = 0;
    public int noInputTimeSeconds = 0;

    public String toString() {
        return "UpdateInstanceTimeParameters{cid='" + this.cid + "', keepAliveTimeSeconds=" + this.keepAliveTimeSeconds + ", noInputTimeSeconds=" + this.noInputTimeSeconds + '}';
    }
}
