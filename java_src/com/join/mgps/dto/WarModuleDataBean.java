package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class WarModuleDataBean implements Serializable {
    private WarModuleMainDataBean main;
    private List<CollectionBeanSub> sub;

    public WarModuleDataBean() {
    }

    public WarModuleMainDataBean getMain() {
        return this.main;
    }

    public List<CollectionBeanSub> getSub() {
        return this.sub;
    }

    public void setMain(WarModuleMainDataBean main) {
        this.main = main;
    }

    public void setSub(List<CollectionBeanSub> sub) {
        this.sub = sub;
    }

    public WarModuleDataBean(WarModuleMainDataBean main, List<CollectionBeanSub> sub) {
        this.main = main;
        this.sub = sub;
    }
}
