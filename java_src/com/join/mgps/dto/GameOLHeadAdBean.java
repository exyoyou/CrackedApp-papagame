package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameOLHeadAdBean implements Serializable {
    private GameOLHeadAdMain main;
    private List<CompanySubBean> sub;

    public GameOLHeadAdMain getMain() {
        return this.main;
    }

    public List<CompanySubBean> getSub() {
        return this.sub;
    }

    public void setMain(GameOLHeadAdMain main) {
        this.main = main;
    }

    public void setSub(List<CompanySubBean> sub) {
        this.sub = sub;
    }
}
