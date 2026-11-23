package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestGameArgs extends BaseDto {
    private String belong_to_tag;
    private String platform_type;
    private int pn;
    private int[] showtag;
    private int sort;
    private String type;

    public RequestGameArgs() {
    }

    public String getBelong_to_tag() {
        return this.belong_to_tag;
    }

    public String getPlatform_type() {
        return this.platform_type;
    }

    public int getPn() {
        return this.pn;
    }

    public int[] getShowtag() {
        return this.showtag;
    }

    public int getSort() {
        return this.sort;
    }

    public String getType() {
        return this.type;
    }

    public void setBelong_to_tag(String belong_to_tag) {
        this.belong_to_tag = belong_to_tag;
    }

    public void setPlatform_type(String platform_type) {
        this.platform_type = platform_type;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setShowtag(int[] showtag) {
        this.showtag = showtag;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public void setType(String type) {
        this.type = type;
    }

    public RequestGameArgs(int pn, String type, int sort, String platform_type, String belong_to_tag, int[] showtag) {
        this.showtag = showtag;
        this.pn = pn;
        this.type = type;
        this.sort = sort;
        this.platform_type = platform_type;
        this.belong_to_tag = belong_to_tag;
    }
}
