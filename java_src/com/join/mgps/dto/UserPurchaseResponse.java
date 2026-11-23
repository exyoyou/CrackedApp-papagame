package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class UserPurchaseResponse {
    private UserPurchaseList data;
    private int error;

    public UserPurchaseList getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(UserPurchaseList data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }
}
