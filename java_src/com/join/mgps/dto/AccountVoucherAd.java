package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AccountVoucherAd {
    private AccountVoucherAdBean link;
    private String title;

    public AccountVoucherAd() {
    }

    public AccountVoucherAdBean getLink() {
        return this.link;
    }

    public String getTitle() {
        return this.title;
    }

    public void setLink(AccountVoucherAdBean link) {
        this.link = link;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String toString() {
        return "AccountVoucherAd{title='" + this.title + "', link=" + this.link + '}';
    }

    public AccountVoucherAd(String title, AccountVoucherAdBean link) {
        this.title = title;
        this.link = link;
    }
}
