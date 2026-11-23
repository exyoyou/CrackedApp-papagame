package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class SearchResultAdinfo extends RecommendAdInfoData {
    private CollectionBeanSub game_info;
    private String label;
    private int position;
    private String title;

    public CollectionBeanSub getGame_info() {
        return this.game_info;
    }

    public String getLabel() {
        return this.label;
    }

    public int getPosition() {
        return this.position;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGame_info(CollectionBeanSub game_info) {
        this.game_info = game_info;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
