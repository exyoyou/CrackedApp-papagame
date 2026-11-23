package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameBeanCollection {
    private List<CollectionBeanSub> list;
    private long time;
    private int type;

    public List<CollectionBeanSub> getList() {
        return this.list;
    }

    public long getTime() {
        return this.time;
    }

    public int getType() {
        return this.type;
    }

    public void setList(List<CollectionBeanSub> list) {
        this.list = list;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public void setType(int type) {
        this.type = type;
    }
}
