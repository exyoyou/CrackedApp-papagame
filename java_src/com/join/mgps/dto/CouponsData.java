package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CouponsData {
    private String expire_date;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68043id;
    private int money;
    private String name;

    public String getExpire_date() {
        return this.expire_date;
    }

    public String getId() {
        return this.f68043id;
    }

    public int getMoney() {
        return this.money;
    }

    public String getName() {
        return this.name;
    }

    public void setExpire_date(String expire_date) {
        this.expire_date = expire_date;
    }

    public void setId(String id2) {
        this.f68043id = id2;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public void setName(String name) {
        this.name = name;
    }
}
