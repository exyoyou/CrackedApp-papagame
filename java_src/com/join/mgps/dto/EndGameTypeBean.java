package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class EndGameTypeBean {
    private boolean isSelected;
    private int modelType;
    private String typeName;

    public int getModelType() {
        return this.modelType;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setModelType(int modelType) {
        this.modelType = modelType;
    }

    public void setSelected(boolean selected) {
        this.isSelected = selected;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
