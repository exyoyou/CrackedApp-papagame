package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RewardBean {
    private String exp;
    private String money;
    private int on_off;

    public RewardBean() {
        this.money = "";
        this.exp = "";
    }

    public String getExp() {
        return this.exp;
    }

    public String getMoney() {
        return this.money;
    }

    public int getOn_off() {
        return this.on_off;
    }

    public void setExp(String exp) {
        this.exp = exp;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public void setOn_off(int on_off) {
        this.on_off = on_off;
    }

    public String toString() {
        return "RewardBean{money=" + this.money + ", exp='" + this.exp + "', on_off=" + this.on_off + '}';
    }

    public RewardBean(String money, String exp, int on_off) {
        this.money = money;
        this.exp = exp;
        this.on_off = on_off;
    }
}
