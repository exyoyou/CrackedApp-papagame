package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FightDataBean implements Serializable {
    private FightMainDataBean main;
    private List<FightSubDataBean> sub;

    public FightDataBean() {
    }

    public FightMainDataBean getMain() {
        return this.main;
    }

    public List<FightSubDataBean> getSub() {
        return this.sub;
    }

    public void setMain(FightMainDataBean main) {
        this.main = main;
    }

    public void setSub(List<FightSubDataBean> sub) {
        this.sub = sub;
    }

    public FightDataBean(FightMainDataBean main, List<FightSubDataBean> sub) {
        this.main = main;
        this.sub = sub;
    }
}
