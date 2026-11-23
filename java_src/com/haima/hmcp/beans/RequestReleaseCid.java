package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class RequestReleaseCid implements IParameter {
    public String appChannel;
    public String cToken;
    public String cid;
    public String envType;
    public String pkgName;
    public Long playingTime;
    public Long timestamp;
    public UserInfo2 userInfo;

    public String toString() {
        return "RequestReleaseCid{cid='" + this.cid + "', pkgName='" + this.pkgName + "', cToken='" + this.cToken + "', appChannel='" + this.appChannel + "', envType='" + this.envType + "', userInfo=" + this.userInfo + ", timestamp=" + this.timestamp + ", playingTime=" + this.playingTime + '}';
    }
}
