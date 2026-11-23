package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class BossBean implements Serializable {
    private String boos;
    private String gameId;
    private Integer index;
    boolean isSelected;
    private String level;

    public String getBoos() {
        return this.boos;
    }

    public String getGameId() {
        return this.gameId;
    }

    public Integer getIndex() {
        return this.index;
    }

    public String getLevel() {
        return this.level;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setBoos(String boos) {
        this.boos = boos;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setIndex(Integer index) {
        this.index = index;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public void setSelected(boolean selected) {
        this.isSelected = selected;
    }
}
