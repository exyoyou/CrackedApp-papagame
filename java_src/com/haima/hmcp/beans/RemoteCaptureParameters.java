package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class RemoteCaptureParameters implements IParameter {
    public String cid;
    public String format;
    public String interval;
    public int opType;
    public String pixel;
    public String size;
    public String txId;
    public String uploadType;
    public String uploadUrl;

    public String toString() {
        return "RemoteCaptureParameters{cid=" + this.cid + ", opType=" + this.opType + ", txId='" + this.txId + "', pixel='" + this.pixel + "', size='" + this.size + "', uploadType='" + this.uploadType + "', uploadUrl='" + this.uploadUrl + "', format='" + this.format + "', interval='" + this.interval + "'}";
    }
}
