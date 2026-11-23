package com.windmill.sdk.models;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes8.dex */
public class BidPrice {
    public static String CNY = "CNY";
    public static String USD = "USD";
    private String currency;
    public boolean is_pdb;
    public int pdb_priority;
    public String pecpm;
    private String price;

    public BidPrice(String price) {
        this.price = "0";
        this.currency = "";
        this.pecpm = "";
        this.is_pdb = false;
        this.pdb_priority = 0;
        if (TextUtils.isEmpty(price)) {
            return;
        }
        this.price = price;
    }

    public String getCurrency() {
        return this.currency;
    }

    public String getPrice() {
        return this.price;
    }

    public BidPrice(String price, String currency) {
        this.price = "0";
        this.currency = "";
        this.pecpm = "";
        this.is_pdb = false;
        this.pdb_priority = 0;
        if (!TextUtils.isEmpty(price)) {
            this.price = price;
        }
        if (TextUtils.isEmpty(currency)) {
            return;
        }
        this.currency = currency;
    }
}
