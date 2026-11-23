package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestGoogleRankArgs extends RequestPnAndPcArgs {
    private int area;
    private int ranking_type;

    public RequestGoogleRankArgs() {
    }

    public int getArea() {
        return this.area;
    }

    public int getRanking_type() {
        return this.ranking_type;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public void setRanking_type(int ranking_type) {
        this.ranking_type = ranking_type;
    }

    public RequestGoogleRankArgs(int area, int ranking_type, int pn, int pc2) {
        this.area = area;
        this.ranking_type = ranking_type;
        setPc(pc2);
        setPn(pn);
    }
}
