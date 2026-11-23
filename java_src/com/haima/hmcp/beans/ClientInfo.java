package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ClientInfo implements Serializable {

    @JSONField(name = "accessKeyID")
    public String accessKeyId;

    @JSONField(name = "channel")
    public String channelId;
    public String clientPkgName;
    public String sdkVersion;
}
