package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameBespeakBean {
    private boolean bespeak;
    private String hint;
    private DomainInfoBean pdInfo;

    public String getHint() {
        return this.hint;
    }

    public DomainInfoBean getPdInfo() {
        return this.pdInfo;
    }

    public boolean isBespeak() {
        return this.bespeak;
    }

    public void setBespeak(boolean bespeak) {
        this.bespeak = bespeak;
    }

    public void setHint(String hint) {
        this.hint = hint;
    }

    public void setPdInfo(DomainInfoBean pdInfo) {
        this.pdInfo = pdInfo;
    }
}
