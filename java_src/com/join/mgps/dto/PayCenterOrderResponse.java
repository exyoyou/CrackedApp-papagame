package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PayCenterOrderResponse {
    private String action;
    private String json;

    public PayCenterOrderResponse() {
    }

    public String getAction() {
        return this.action;
    }

    public String getJson() {
        return this.json;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public void setJson(String json) {
        this.json = json;
    }

    public PayCenterOrderResponse(String json, String action) {
        this.json = json;
        this.action = action;
    }
}
