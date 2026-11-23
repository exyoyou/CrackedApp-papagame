package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GroupInfoBean implements Serializable {
    private int fid;
    private String name;
    private boolean selected;

    public int getFid() {
        return this.fid;
    }

    public String getName() {
        return this.name;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
}
