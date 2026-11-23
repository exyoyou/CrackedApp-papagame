package com.papa91.arc.bean;

/* JADX INFO: loaded from: classes2.dex */
public class TypeBean {
    private int iconNormal;
    private int iconSelected;
    private boolean isSelected;
    private String name;
    private boolean showDot;
    private int type;

    public TypeBean(int i10, String str, boolean z10, int i11, int i12) {
        this.type = i10;
        this.name = str;
        this.isSelected = z10;
        this.iconNormal = i11;
        this.iconSelected = i12;
    }

    public int getIconNormal() {
        return this.iconNormal;
    }

    public int getIconSelected() {
        return this.iconSelected;
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public boolean isShowDot() {
        return this.showDot;
    }

    public void setIconNormal(int i10) {
        this.iconNormal = i10;
    }

    public void setIconSelected(int i10) {
        this.iconSelected = i10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public void setShowDot(boolean z10) {
        this.showDot = z10;
    }

    public void setType(int i10) {
        this.type = i10;
    }
}
