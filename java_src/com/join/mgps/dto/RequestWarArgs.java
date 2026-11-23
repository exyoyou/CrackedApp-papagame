package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestWarArgs extends BaseDto {
    private int pn;
    private int type;

    public RequestWarArgs() {
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

    public RequestWarArgs(int pn, int type) {
        this.pn = pn;
        this.type = type;
    }
}
