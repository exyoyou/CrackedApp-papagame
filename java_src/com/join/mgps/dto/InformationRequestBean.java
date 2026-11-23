package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class InformationRequestBean {
    private Integer[] comment_type;
    private String information_id;
    private int pn;

    public InformationRequestBean() {
        this.comment_type = new Integer[]{1, 2};
    }

    public Integer[] getComment_type() {
        return this.comment_type;
    }

    public String getInformation_id() {
        return this.information_id;
    }

    public int getPn() {
        return this.pn;
    }

    public void setComment_type(Integer[] comment_type) {
        this.comment_type = comment_type;
    }

    public void setInformation_id(String information_id) {
        this.information_id = information_id;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public InformationRequestBean(String information_id, int pn, Integer[] comment_type) {
        this.information_id = information_id;
        this.comment_type = comment_type;
        this.pn = pn;
    }
}
