package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RecommendGameAdInfo {
    private String batch_id;
    private String corner_mark_pic;
    private List<CommonGameInfoBean> list;

    public String getBatch_id() {
        return this.batch_id;
    }

    public String getCorner_mark_pic() {
        return this.corner_mark_pic;
    }

    public List<CommonGameInfoBean> getList() {
        return this.list;
    }

    public void setBatch_id(String batch_id) {
        this.batch_id = batch_id;
    }

    public void setCorner_mark_pic(String corner_mark_pic) {
        this.corner_mark_pic = corner_mark_pic;
    }

    public void setList(List<CommonGameInfoBean> list) {
        this.list = list;
    }
}
