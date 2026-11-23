package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestRankingListArgs {
    private String dimensionId;
    private Integer page;
    private String type;
    private String uid;

    public String getDimensionId() {
        return this.dimensionId;
    }

    public Integer getPage() {
        return this.page;
    }

    public String getType() {
        return this.type;
    }

    public String getUid() {
        return this.uid;
    }

    public void setDimensionId(String dimensionId) {
        this.dimensionId = dimensionId;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
