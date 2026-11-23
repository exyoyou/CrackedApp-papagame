package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class InformationCommentBack {
    private List<InformationCommentBean> all;
    private List<InformationCommentBean> hot;

    public InformationCommentBack() {
    }

    public List<InformationCommentBean> getAll() {
        return this.all;
    }

    public List<InformationCommentBean> getHot() {
        return this.hot;
    }

    public void setAll(List<InformationCommentBean> all) {
        this.all = all;
    }

    public void setHot(List<InformationCommentBean> hot) {
        this.hot = hot;
    }

    public InformationCommentBack(List<InformationCommentBean> hot, List<InformationCommentBean> all) {
        this.hot = hot;
        this.all = all;
    }
}
