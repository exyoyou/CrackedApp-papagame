package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ActionInfo implements Serializable {

    @JSONField(name = "actId")
    public int actionId;

    @JSONField(name = "clientTransId")
    public String clientTransId;

    @JSONField(name = "did")
    public String deviceId;

    @JSONField(name = "protocol")
    public String protocolVersion;

    @JSONField(name = "random")
    public String randomKey;

    @JSONField(name = "sdkType")
    public int sdkType;

    @JSONField(name = "transId")
    public String transactionId;
}
