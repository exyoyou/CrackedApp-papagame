package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AccountResultBean<E> {
    private AccountLoginresultData data;
    private int error;

    public AccountResultBean() {
    }

    public AccountLoginresultData getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(AccountLoginresultData data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }

    public AccountResultBean(int error, AccountLoginresultData data) {
        this.error = error;
        this.data = data;
    }
}
