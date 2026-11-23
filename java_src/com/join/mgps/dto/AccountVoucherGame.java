package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AccountVoucherGame {
    private String expire_date;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68014id;
    private double money;
    private String name;
    private String no;
    private String notice;
    private String status;

    public AccountVoucherGame() {
    }

    public String getExpire_date() {
        return this.expire_date;
    }

    public int getId() {
        return this.f68014id;
    }

    public double getMoney() {
        return this.money;
    }

    public String getName() {
        return this.name;
    }

    public String getNo() {
        return this.no;
    }

    public String getNotice() {
        return this.notice;
    }

    public String getStatus() {
        return this.status;
    }

    public void setExpire_date(String expire_date) {
        this.expire_date = expire_date;
    }

    public void setId(int id2) {
        this.f68014id = id2;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String toString() {
        return "AccountVoucherGame{id=" + this.f68014id + ", money=" + this.money + ", name='" + this.name + "', expire_date='" + this.expire_date + "', no=" + this.no + ", notice='" + this.notice + "'}";
    }

    public AccountVoucherGame(int id2, double money, String name, String expire_date, String no, String notice) {
        this.f68014id = id2;
        this.money = money;
        this.name = name;
        this.expire_date = expire_date;
        this.no = no;
        this.notice = notice;
    }
}
