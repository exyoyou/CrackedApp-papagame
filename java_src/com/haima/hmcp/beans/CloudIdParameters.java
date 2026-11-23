package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;

/* JADX INFO: loaded from: classes5.dex */
public class CloudIdParameters implements IParameter {
    public int accessKeyID;
    public String appChannel;
    public int appId;

    @JSONField(name = "pkgName")
    public String appName;
    public String cToken;

    @JSONField(name = "CToken")
    public String channel;
    public String configInfo;
    public String envType;
    public String extraId;
    public UserInfo userInfo;
}
