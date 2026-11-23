package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
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

    public void setData(E data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public ResultMessageBean(String modeltype, E data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
