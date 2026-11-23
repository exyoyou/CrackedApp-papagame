package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ResultMyVoucherBean {

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private AccountVoucherAd f68105ad;
    private List<AccountVoucher> coupons;
    private boolean is_show_recommend_bar;
    private List<AccountVoucherGameBean> recommend;

    public ResultMyVoucherBean() {
    }

    public AccountVoucherAd getAd() {
        return this.f68105ad;
    }

    public List<AccountVoucher> getCoupons() {
        return this.coupons;
    }

    public List<AccountVoucherGameBean> getRecommend() {
        return this.recommend;
    }

    public boolean is_show_recommend_bar() {
        return this.is_show_recommend_bar;
    }

    public void setAd(AccountVoucherAd ad2) {
        this.f68105ad = ad2;
    }

    public void setCoupons(List<AccountVoucher> coupons) {
        this.coupons = coupons;
    }

    public void setIs_show_recommend_bar(boolean is_show_recommend_bar) {
        this.is_show_recommend_bar = is_show_recommend_bar;
    }

    public void setRecommend(List<AccountVoucherGameBean> recommend) {
        this.recommend = recommend;
    }

    public String toString() {
        return "ResultMyVoucherBean{coupons=" + this.coupons + ", recommend=" + this.recommend + ", ad=" + this.f68105ad + '}';
    }

    public ResultMyVoucherBean(List<AccountVoucher> coupons, List<AccountVoucherGameBean> recommend, AccountVoucherAd ad2) {
        this.coupons = coupons;
        this.recommend = recommend;
        this.f68105ad = ad2;
    }
}
