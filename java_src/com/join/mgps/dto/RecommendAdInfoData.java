package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RecommendAdInfoData implements Serializable {
    private RecommendAdInfoMainBean main;
    private List<RecommendAdInfoBean> sub;

    public RecommendAdInfoMainBean getMain() {
        return this.main;
    }

    public List<RecommendAdInfoBean> getSub() {
        return this.sub;
    }

    public void setMain(RecommendAdInfoMainBean main) {
        this.main = main;
    }

    public void setSub(List<RecommendAdInfoBean> sub) {
        this.sub = sub;
    }
}
