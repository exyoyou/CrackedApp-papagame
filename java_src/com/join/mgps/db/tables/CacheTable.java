package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class CacheTable {
    public static int TYPE_GAME_WORLD_GLOBAL_DATA = 1;
    public static int TYPE_GAME_WORLD_GRADE = 3;
    public static int TYPE_GAME_WORLD_USER_INFO = 2;
    public static int TYPE_GAME_WORLD_WORSHIP = 4;

    @DatabaseField
    private String data;

    @DatabaseField
    private String extra1;

    @DatabaseField
    private String extra2;

    @DatabaseField
    private long gameId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67236id;

    @DatabaseField
    private int type;

    @DatabaseField
    private String uid;

    public String getData() {
        return this.data;
    }

    public String getExtra1() {
        return this.extra1;
    }

    public String getExtra2() {
        return this.extra2;
    }

    public long getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.f67236id;
    }

    public int getType() {
        return this.type;
    }

    public String getUid() {
        return this.uid;
    }

    public void setData(String data) {
        this.data = data;
    }

    public void setExtra1(String extra1) {
        this.extra1 = extra1;
    }

    public void setExtra2(String extra2) {
        this.extra2 = extra2;
    }

    public void setGameId(long gameId) {
        this.gameId = gameId;
    }

    public void setId(int id2) {
        this.f67236id = id2;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
