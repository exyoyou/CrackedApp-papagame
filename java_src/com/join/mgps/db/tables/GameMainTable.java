package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class GameMainTable {

    @DatabaseField
    private String game_main_data;

    @DatabaseField
    private String gameid;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67251id;

    public String getGame_main_data() {
        return this.game_main_data;
    }

    public String getGameid() {
        return this.gameid;
    }

    public int getId() {
        return this.f67251id;
    }

    public void setGame_main_data(String game_main_data) {
        this.game_main_data = game_main_data;
    }

    public void setGameid(String gameid) {
        this.gameid = gameid;
    }

    public void setId(int id2) {
        this.f67251id = id2;
    }
}
