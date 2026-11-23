package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class AccountVoucherStatus implements Serializable {
    private AccountVoucherStatusBean available;
    private AccountVoucherStatusBean used;

    public AccountVoucherStatus(AccountVoucherStatusBean available, AccountVoucherStatusBean used) {
        this.available = available;
        this.used = used;
    }

    public AccountVoucherStatusBean getAvailable() {
        return this.available;
    }

    public AccountVoucherStatusBean getUsed() {
        return this.used;
    }

    public void setAvailable(AccountVoucherStatusBean available) {
        this.available = available;
    }

    public void setUsed(AccountVoucherStatusBean used) {
        this.used = used;
    }

    public String toString() {
        return "AccountVoucherStatus{available=" + this.available + ", used=" + this.used + '}';
    }

    public AccountVoucherStatus() {
    }
}
