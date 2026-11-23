package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class AccountVoucherStatusBean implements Serializable {
    private int count;
    private double money;

    public AccountVoucherStatusBean(double money, int count) {
        this.money = money;
        this.count = count;
    }

    public int getCount() {
        return this.count;
    }

    public double getMoney() {
        return this.money;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String toString() {
        return "AccountVoucherStatusBean{money=" + this.money + ", count=" + this.count + '}';
    }

    public AccountVoucherStatusBean() {
    }
}
