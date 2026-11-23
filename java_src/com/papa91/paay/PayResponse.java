package com.papa91.paay;

/* JADX INFO: loaded from: classes2.dex */
public class PayResponse {
    private PayResponseData data;
    private int error;

    public PayResponseData getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(PayResponseData payResponseData) {
        this.data = payResponseData;
    }

    public void setError(int i10) {
        this.error = i10;
    }
}
