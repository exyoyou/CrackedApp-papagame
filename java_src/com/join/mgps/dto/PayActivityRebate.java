package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PayActivityRebate {
    private int min_money;
    private int rebate_money;

    public PayActivityRebate() {
    }

    public int getMin_money() {
        return this.min_money;
    }

    public int getRebate_money() {
        return this.rebate_money;
    }

    public void setMin_money(int min_money) {
        this.min_money = min_money;
    }

    public void setRebate_money(int rebate_money) {
        this.rebate_money = rebate_money;
    }

    public String toString() {
        return "PayActivityRebate{min_money=" + this.min_money + ", rebate_money=" + this.rebate_money + '}';
    }

    public PayActivityRebate(int min_money, int rebate_money) {
        this.min_money = min_money;
        this.rebate_money = rebate_money;
    }
}
