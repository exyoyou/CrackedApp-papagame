package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ResponseSpecialInfo extends BaseResult {
    public String ip;
    public String minimumSpeed;
    public String url;

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        return "ResponseSpecialInfo{ " + super.toString() + ", url = " + this.url + ", ip = " + this.ip + ", minimumSpeed = " + this.minimumSpeed;
    }
}
