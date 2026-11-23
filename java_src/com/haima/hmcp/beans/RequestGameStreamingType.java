package com.haima.hmcp.beans;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RequestGameStreamingType implements IParameter {
    public String accessKeyId;
    public String appChannel;
    public String envType;
    public String packageName;
    public long[] sdkAbility;
    public List<String> streamingTypes;
    public UserInfo2 userInfo;

    public String toString() {
        return "RequestGameStreamingType{streamingTypes=" + this.streamingTypes + ", sdkAbility=" + Arrays.toString(this.sdkAbility) + ", userInfo=" + this.userInfo + ", accessKeyId='" + this.accessKeyId + "', packageName='" + this.packageName + "', envType='" + this.envType + "', appChannel='" + this.appChannel + "'}";
    }
}
