package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class HomeRankingListBean {
    private List<List<CommonGameInfoBean>> list;
    private String txt;

    public List<List<CommonGameInfoBean>> getList() {
        return this.list;
    }

    public String getTxt() {
        return this.txt;
    }

    public void setList(List<List<CommonGameInfoBean>> list) {
        this.list = list;
    }

    public void setTxt(String txt) {
        this.txt = txt;
    }
}
