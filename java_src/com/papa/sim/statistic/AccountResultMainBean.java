package com.papa.sim.statistic;

/* JADX INFO: loaded from: classes2.dex */
public class AccountResultMainBean<E> {
    private PabiBalanceBean data;
    private int error;

    public AccountResultMainBean() {
    }

    public PabiBalanceBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(PabiBalanceBean pabiBalanceBean) {
        this.data = pabiBalanceBean;
    }

    public void setError(int i10) {
        this.error = i10;
    }

    public AccountResultMainBean(int i10, PabiBalanceBean pabiBalanceBean) {
        this.error = i10;
        this.data = pabiBalanceBean;
    }
}
