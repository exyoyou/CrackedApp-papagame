package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageMainDataInfoBean implements Serializable {
    private List<GiftPackageDataInfoBean> recommend;
    private List<GiftPackageDataInfoBean> user;

    public GiftPackageMainDataInfoBean() {
    }

    public List<GiftPackageDataInfoBean> getRecommend() {
        return this.recommend;
    }

    public List<GiftPackageDataInfoBean> getUser() {
        return this.user;
    }

    public void setRecommend(List<GiftPackageDataInfoBean> recommend) {
        this.recommend = recommend;
    }

    public void setUser(List<GiftPackageDataInfoBean> user) {
        this.user = user;
    }

    public GiftPackageMainDataInfoBean(List<GiftPackageDataInfoBean> user, List<GiftPackageDataInfoBean> recommend) {
        this.user = user;
        this.recommend = recommend;
    }
}
