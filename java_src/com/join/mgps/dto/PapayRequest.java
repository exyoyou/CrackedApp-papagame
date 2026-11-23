package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class PapayRequest {
    private int limit;
    private int page;
    private String token;
    private int uid;

    public int getLimit() {
        return this.limit;
    }

    public int getPage() {
        return this.page;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constants.TOKEN, this.token);
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("limit", this.limit + "");
        linkedMultiValueMap.add("page", this.page + "");
        return linkedMultiValueMap;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
