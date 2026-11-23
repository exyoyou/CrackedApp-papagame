package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class DynamicEntranceBean {
    private String name;
    private String tips;
    private int typeId;

    public DynamicEntranceBean(String name, String tips, int typeId) {
        this.name = name;
        this.tips = tips;
        this.typeId = typeId;
    }

    public String getName() {
        return this.name;
    }

    public String getTips() {
        return this.tips;
    }

    public int getTypeId() {
        return this.typeId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }
}
