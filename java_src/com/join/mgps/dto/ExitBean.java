package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ExitBean {
    private List<RecomDatabean> info;
    private int isopen;

    public ExitBean(int isopen, List<RecomDatabean> info) {
        this.isopen = isopen;
        this.info = info;
    }

    public List<RecomDatabean> getInfo() {
        return this.info;
    }

    public int getIsopen() {
        return this.isopen;
    }

    public void setInfo(List<RecomDatabean> info) {
        this.info = info;
    }

    public void setIsopen(int isopen) {
        this.isopen = isopen;
    }

    public ExitBean() {
    }
}
