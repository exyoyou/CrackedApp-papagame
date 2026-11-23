package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MustPlayData {
    private List<MustPlayAd> head_ad;
    private List<MustPlayNetDataBean> list;

    public List<MustPlayAd> getHead_ad() {
        return this.head_ad;
    }

    public List<MustPlayNetDataBean> getList() {
        return this.list;
    }

    public void setHead_ad(List<MustPlayAd> head_ad) {
        this.head_ad = head_ad;
    }

    public void setList(List<MustPlayNetDataBean> list) {
        this.list = list;
    }

    public String toString() {
        return "MustPlayData{head_ad=" + this.head_ad + ", list=" + this.list + '}';
    }
}
