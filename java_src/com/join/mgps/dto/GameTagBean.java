package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GameTagBean implements Serializable {
    private int forum_id;
    private String forum_name;
    private int game_tag_type;
    private int tag_id;
    private String tag_name;

    public int getForum_id() {
        return this.forum_id;
    }

    public String getForum_name() {
        return this.forum_name;
    }

    public int getGame_tag_type() {
        return this.game_tag_type;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public String getTag_name() {
        return this.tag_name;
    }

    public void setForum_id(int forum_id) {
        this.forum_id = forum_id;
    }

    public void setForum_name(String forum_name) {
        this.forum_name = forum_name;
    }

    public void setGame_tag_type(int game_tag_type) {
        this.game_tag_type = game_tag_type;
    }

    public void setTag_id(int tag_id) {
        this.tag_id = tag_id;
    }

    public void setTag_name(String tag_name) {
        this.tag_name = tag_name;
    }

    public String toString() {
        return "GameTagBean{tag_id=" + this.tag_id + ", tag_name='" + this.tag_name + "', forum_name='" + this.forum_name + "', forum_id=" + this.forum_id + '}';
    }
}
