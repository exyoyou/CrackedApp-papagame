package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CategorySimpleBean {
    private String game_num;
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68026id;
    private String show_index;
    private String title;

    public CategorySimpleBean() {
    }

    public String getGame_num() {
        return this.game_num;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getId() {
        return this.f68026id;
    }

    public String getShow_index() {
        return this.show_index;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGame_num(String game_num) {
        this.game_num = game_num;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setId(String id2) {
        this.f68026id = id2;
    }

    public void setShow_index(String show_index) {
        this.show_index = show_index;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public CategorySimpleBean(String id2, String title, String ico_remote, String show_index, String game_num) {
        this.f68026id = id2;
        this.title = title;
        this.ico_remote = ico_remote;
        this.show_index = show_index;
        this.game_num = game_num;
    }
}
