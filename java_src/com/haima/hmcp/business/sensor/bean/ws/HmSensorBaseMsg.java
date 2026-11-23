package com.haima.hmcp.business.sensor.bean.ws;

/* JADX INFO: loaded from: classes5.dex */
public class HmSensorBaseMsg<T> {
    public String bid;
    public String cid;
    public T data;
    public String mid;
    public String type;

    public HmSensorBaseMsg() {
    }

    public HmSensorBaseMsg(String str, String str2, String str3) {
        this.type = str;
        this.cid = str2;
        this.bid = str3;
    }
}
