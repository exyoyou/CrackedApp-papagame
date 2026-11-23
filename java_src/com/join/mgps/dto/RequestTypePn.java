package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestTypePn {
    private int pn;
    private int type;

    public RequestTypePn(int type, int pn) {
        this.type = type;
        this.pn = pn;
    }

    public int getPn() {
        return this.pn;
    }

    public int getType() {
        return this.type;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setType(int type) {
        this.type = type;
    }
}
