package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class NetTestData {
    public String DNS;
    public String action;
    public String cid;
    public int index = -1;
    public String msg;
    public String packageName;
    public long responseTime;
    public String result;
    public long startTime;
    public long time;
    public String transId;
    public String uid;
    public String url;

    public String toString() {
        return "url:" + this.url + ",\nuid:" + this.uid + ",\ncid:" + this.cid + ",\naction:" + this.action + ",\ntransId:" + this.transId + ",\npackageName:" + this.packageName + ",\nstartTime:" + this.startTime + ",\nresponseTime:" + this.responseTime + ",\nresult:" + this.result + ",\nmsg:" + this.msg + ",\ntime:" + this.time + ",\nDNS:" + this.DNS + ",\nindex:" + this.index;
    }
}
