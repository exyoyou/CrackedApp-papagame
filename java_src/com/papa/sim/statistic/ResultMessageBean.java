package com.papa.sim.statistic;

/* JADX INFO: loaded from: classes2.dex */
public class ResultMessageBean<E> {
    private E data;
    private String modeltype;

    public ResultMessageBean() {
    }

    public E getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(E e10) {
        this.data = e10;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public ResultMessageBean(String str, E e10) {
        this.modeltype = str;
        this.data = e10;
    }
}
