package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CommitMessageMainBean<E> {
    private CommitContextDataBean data;
    private String modeltype;

    public CommitMessageMainBean() {
    }

    public CommitContextDataBean getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(CommitContextDataBean data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public CommitMessageMainBean(String modeltype, CommitContextDataBean data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}
