package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RequestCommonAdArgs {
    private int page;
    private List<String> positionMarkList;

    public int getPage() {
        return this.page;
    }

    public List<String> getPositionMarkList() {
        return this.positionMarkList;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setPositionMarkList(List<String> positionMarkList) {
        this.positionMarkList = positionMarkList;
    }
}
