package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class HomeGameCarefullyRequestArgs2 {
    private int pn;
    private String token;
    private int uid;

    public HomeGameCarefullyRequestArgs2() {
    }

    public int getPn() {
        return this.pn;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public HomeGameCarefullyRequestArgs2(int pn, int uid, String token) {
        this.pn = pn;
        this.uid = uid;
        this.token = token;
    }

    public HomeGameCarefullyRequestArgs2(int uid) {
        this.uid = uid;
    }
}
