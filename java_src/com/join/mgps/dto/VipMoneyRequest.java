package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import com.windmill.sdk.strategy.m;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class VipMoneyRequest {
    private int month;
    private String token;
    private int uid;

    public int getMonth() {
        return this.month;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(m.a.f87212d, this.month + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add(Constants.TOKEN, this.token);
        return linkedMultiValueMap;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
