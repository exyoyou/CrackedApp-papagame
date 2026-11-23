package com.join.mgps.db.tables;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

/* JADX INFO: loaded from: classes3.dex */
@DatabaseTable(tableName = "user_purchase_info_table")
public class UserPurchaseInfo {

    @DatabaseField(columnName = "cheat_expire_time")
    @JsonProperty("cheat_expire_time")
    private String cheatExpireTime;

    @DatabaseField(columnName = "game_id")
    @JsonProperty("game_id")
    private String gameId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67271id;

    @DatabaseField(columnName = "is_open_cheat")
    @JsonProperty("is_open_cheat")
    private String isOpenCheat;

    @DatabaseField(columnName = "is_open_sp")
    @JsonProperty("is_open_sp")
    private String isOpenSp;

    @DatabaseField(columnName = "sp_expire_time")
    @JsonProperty("sp_expire_time")
    private String spExpireTime;

    @DatabaseField(columnName = "uid")
    private String uid;

    public String getCheatExpireTime() {
        return this.cheatExpireTime;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.f67271id;
    }

    public String getIsOpenCheat() {
        return this.isOpenCheat;
    }

    public String getIsOpenSp() {
        return this.isOpenSp;
    }

    public String getSpExpireTime() {
        return this.spExpireTime;
    }

    public String getUid() {
        return this.uid;
    }

    public void setCheatExpireTime(String cheatExpireTime) {
        this.cheatExpireTime = cheatExpireTime;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setId(int id2) {
        this.f67271id = id2;
    }

    public void setIsOpenCheat(String isOpenCheat) {
        this.isOpenCheat = isOpenCheat;
    }

    public void setIsOpenSp(String isOpenSp) {
        this.isOpenSp = isOpenSp;
    }

    public void setSpExpireTime(String spExpireTime) {
        this.spExpireTime = spExpireTime;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
