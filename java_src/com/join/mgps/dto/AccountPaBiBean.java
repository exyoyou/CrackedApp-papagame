package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AccountPaBiBean {
    private String pay_ad_title;
    private PapayInfo wallet;

    public AccountPaBiBean() {
    }

    public String getPay_ad_title() {
        return this.pay_ad_title;
    }

    public PapayInfo getWallet() {
        return this.wallet;
    }

    public void setPay_ad_title(String pay_ad_title) {
        this.pay_ad_title = pay_ad_title;
    }

    public void setWallet(PapayInfo wallet) {
        this.wallet = wallet;
    }

    public String toString() {
        return "AccountPaBiBean{pay_ad_title='" + this.pay_ad_title + "', wallet=" + this.wallet + '}';
    }

    public AccountPaBiBean(String pay_ad_title, PapayInfo wallet) {
        this.pay_ad_title = pay_ad_title;
        this.wallet = wallet;
    }
}
