package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AccountGetVoucherResultBean {
    private long add_time;
    private long begin_time;
    private String coupon_code;
    private int coupon_id;
    private int coupon_money;
    private long expire_time;

    public AccountGetVoucherResultBean() {
    }

    public long getAdd_time() {
        return this.add_time;
    }

    public long getBegin_time() {
        return this.begin_time;
    }

    public String getCoupon_code() {
        return this.coupon_code;
    }

    public int getCoupon_id() {
        return this.coupon_id;
    }

    public int getCoupon_money() {
        return this.coupon_money;
    }

    public long getExpire_time() {
        return this.expire_time;
    }

    public void setAdd_time(long add_time) {
        this.add_time = add_time;
    }

    public void setBegin_time(long begin_time) {
        this.begin_time = begin_time;
    }

    public void setCoupon_code(String coupon_code) {
        this.coupon_code = coupon_code;
    }

    public void setCoupon_id(int coupon_id) {
        this.coupon_id = coupon_id;
    }

    public void setCoupon_money(int coupon_money) {
        this.coupon_money = coupon_money;
    }

    public void setExpire_time(long expire_time) {
        this.expire_time = expire_time;
    }

    public AccountGetVoucherResultBean(String coupon_code, int coupon_id, int coupon_money, long begin_time, long expire_time, long add_time) {
        this.coupon_code = coupon_code;
        this.coupon_id = coupon_id;
        this.coupon_money = coupon_money;
        this.begin_time = begin_time;
        this.expire_time = expire_time;
        this.add_time = add_time;
    }
}
