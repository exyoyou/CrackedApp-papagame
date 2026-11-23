package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class UploadResultMainBean<E> {
    private AccountTokenSuccess data;
    private int error;

    public UploadResultMainBean() {
    }

    public AccountTokenSuccess getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(AccountTokenSuccess data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }

    public UploadResultMainBean(int error, AccountTokenSuccess data) {
        this.error = error;
        this.data = data;
    }
}
