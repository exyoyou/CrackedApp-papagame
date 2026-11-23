package com.haima.hmcp.beans;

import com.alibaba.fastjson.annotation.JSONField;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceIdResult extends BaseResult {
    public String countlyAppKey;
    public String countlyUrl;
    public List<String> countlyUrlList;

    @JSONField(name = "did")
    public long deviceId;
    public String serverTimestamp;
}
