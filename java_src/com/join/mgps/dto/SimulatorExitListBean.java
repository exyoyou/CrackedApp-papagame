package com.join.mgps.dto;

import j6.b;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorExitListBean<T> implements b {
    private T data;
    private boolean exposure = false;
    private int itemType;
    private Object obj;

    public SimulatorExitListBean(int itemType, T data) {
        this.itemType = itemType;
        this.data = data;
    }

    public <T> T getData() {
        return this.data;
    }

    @Override // j6.b
    public int getItemType() {
        return this.itemType;
    }

    public Object getObj() {
        return this.obj;
    }

    public boolean isExposure() {
        return this.exposure;
    }

    public void setData(T data) {
        this.data = data;
    }

    public void setExposure(boolean exposure) {
        this.exposure = exposure;
    }

    public void setItemType(int itemType) {
        this.itemType = itemType;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }
}
