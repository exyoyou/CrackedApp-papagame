package com.cloudplay.messagesdk.entity;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class FileObserverBean {
    private List<ObserverItem> filters;
    private int mask = 4095;
    private String path;

    public List<ObserverItem> getFilters() {
        return this.filters;
    }

    public int getMask() {
        return this.mask;
    }

    public String getPath() {
        return this.path;
    }

    public void setFilters(List<ObserverItem> list) {
        this.filters = list;
    }

    public void setMask(int i10) {
        this.mask = i10;
    }

    public void setPath(String str) {
        this.path = str;
    }
}
