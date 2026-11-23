package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;

/* JADX INFO: loaded from: classes5.dex */
public class GetSwitchStreamTypeParameters implements IParameter {
    public String clientCity;
    public String clientISP;
    public String clientProvince;

    @JSONField(name = "cid")
    public String cloudId;
    public Boolean enlargeBitRate = null;
    public String routingIp;
    public String streamType;
    public UserInfo2 userInfo;
    public String viewFrameRate;

    public String toString() {
        return "GetSwitchStreamTypeParameters{userInfo=" + this.userInfo + ", cloudId='" + this.cloudId + "', streamType='" + this.streamType + "', clientISP='" + this.clientISP + "', clientProvince='" + this.clientProvince + "', clientCity='" + this.clientCity + "', routingIp='" + this.routingIp + "', enlargeBitRate=" + this.enlargeBitRate + ", viewFrameRate=" + this.viewFrameRate + '}';
    }
}
