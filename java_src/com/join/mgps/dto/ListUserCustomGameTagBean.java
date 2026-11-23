package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class ListUserCustomGameTagBean implements Serializable {
    private ArrayList<GameTagsBean> gameTags;
    private ArrayList<GameTagsBean> personalTags;

    public ArrayList<GameTagsBean> getGameTags() {
        return this.gameTags;
    }

    public ArrayList<GameTagsBean> getPersonalTags() {
        return this.personalTags;
    }

    public void setGameTags(ArrayList<GameTagsBean> gameTags) {
        this.gameTags = gameTags;
    }

    public void setPersonalTags(ArrayList<GameTagsBean> personalTags) {
        this.personalTags = personalTags;
    }
}
