package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AccountGetVoucherResult {
    AccountGetVoucherResultBean coupon_code;

    public AccountGetVoucherResult() {
    }

    public AccountGetVoucherResultBean getCoupon_code() {
        return this.coupon_code;
    }

    public void setCoupon_code(AccountGetVoucherResultBean coupon_code) {
        this.coupon_code = coupon_code;
    }

    public String toString() {
        return "AccountGetVoucherResult{coupon_code=" + this.coupon_code + '}';
    }

    public AccountGetVoucherResult(AccountGetVoucherResultBean coupon_code) {
        this.coupon_code = coupon_code;
    }
}
