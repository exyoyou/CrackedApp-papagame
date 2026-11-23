package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccoutLoginOutRequest {
    private String sign;
    private String uid;

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getUid() {
        return this.uid;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
