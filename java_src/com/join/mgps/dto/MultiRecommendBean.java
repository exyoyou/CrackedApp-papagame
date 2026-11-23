package com.join.mgps.dto;

import j6.b;

/* JADX INFO: loaded from: classes3.dex */
public class MultiRecommendBean implements b {
    private Object data;
    private int viewType;

    public MultiRecommendBean(int viewType, Object data) {
        this.viewType = viewType;
        this.data = data;
    }

    public <T> T getData() {
        return (T) this.data;
    }

    @Override // j6.b
    public int getItemType() {
        return this.viewType;
    }

    public int getViewType() {
        return this.viewType;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public void setViewType(int viewType) {
        this.viewType = viewType;
    }
}
