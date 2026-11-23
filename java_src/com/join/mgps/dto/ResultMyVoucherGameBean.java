package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ResultMyVoucherGameBean {
    private List<AccountVoucherGame> coupons;
    private AccountVoucherAd help;
    private AccountVoucherStatusBean money;

    public ResultMyVoucherGameBean(List<AccountVoucherGame> coupons) {
        this.coupons = coupons;
    }

    public List<AccountVoucherGame> getCoupons() {
        return this.coupons;
    }

    public AccountVoucherAd getHelp() {
        return this.help;
    }

    public AccountVoucherStatusBean getMoney() {
        return this.money;
    }

    public void setCoupons(List<AccountVoucherGame> coupons) {
        this.coupons = coupons;
    }

    public void setHelp(AccountVoucherAd help) {
        this.help = help;
    }

    public void setMoney(AccountVoucherStatusBean money) {
        this.money = money;
    }

    public String toString() {
        return "ResultMyVoucherGameBean{coupons=" + this.coupons + '}';
    }

    public ResultMyVoucherGameBean() {
    }
}
