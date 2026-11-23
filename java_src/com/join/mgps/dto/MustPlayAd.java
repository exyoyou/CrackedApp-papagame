package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MustPlayAd {
    private MustPlayAdMain main;
    private List<MustPlayAdSub> sub;

    public MustPlayAdMain getMain() {
        return this.main;
    }

    public List<MustPlayAdSub> getSub() {
        return this.sub;
    }

    public void setMain(MustPlayAdMain main) {
        this.main = main;
    }

    public void setSub(List<MustPlayAdSub> sub) {
        this.sub = sub;
    }

    public String toString() {
        return "MustPlayAd{main=" + this.main + ", sub=" + this.sub + '}';
    }
}
