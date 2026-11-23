package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PaOpenBean {
    private int paOpenuid;
    private String token;

    public PaOpenBean() {
    }

    public int getPaOpenuid() {
        return this.paOpenuid;
    }

    public String getToken() {
        return this.token;
    }

    public void setPaOpenuid(int paOpenuid) {
        this.paOpenuid = paOpenuid;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public PaOpenBean(int paOpenuid, String token) {
        this.paOpenuid = paOpenuid;
        this.token = token;
    }
}
