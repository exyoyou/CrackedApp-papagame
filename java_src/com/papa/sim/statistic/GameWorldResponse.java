package com.papa.sim.statistic;

/* JADX INFO: loaded from: classes2.dex */
public class GameWorldResponse<E> {
    private E data;
    private int error;

    public GameWorldResponse() {
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(E e10) {
        this.data = e10;
    }

    public void setError(int i10) {
        this.error = i10;
    }

    public GameWorldResponse(int i10, E e10) {
        this.error = i10;
        this.data = e10;
    }
}
