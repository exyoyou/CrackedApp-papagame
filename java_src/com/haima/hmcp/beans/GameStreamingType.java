package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class GameStreamingType {
    public String appChannel;
    public String packageName;
    public int streamingType = -1;
    public UserInfo userInfo;

    public String toString() {
        return "GameStreamingType{streamingType=" + this.streamingType + ", userInfo=" + this.userInfo + ", packageName='" + this.packageName + "', appChannel='" + this.appChannel + "'}";
    }
}
