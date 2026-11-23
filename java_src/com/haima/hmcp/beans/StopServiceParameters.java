package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;

/* JADX INFO: loaded from: classes5.dex */
public class StopServiceParameters implements IParameter {
    public int archiveMinSeconds;

    @JSONField(name = "cid")
    public String cloudId;
    public String envType;
}
