package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class RewardBananaTable {

    @DatabaseField
    private int amount;

    @DatabaseField
    private String gameId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67264id;

    @DatabaseField
    private int status;

    @DatabaseField(defaultValue = "1")
    private int times;

    @DatabaseField
    private long timestamp;

    @DatabaseField
    private boolean tourist;

    @DatabaseField
    private int type;

    @DatabaseField
    private String uid;

    @DatabaseField
    private String uniqueId;

    public int getAmount() {
        return this.amount;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.f67264id;
    }

    public int getStatus() {
        return this.status;
    }

    public int getTimes() {
        return this.times;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int getType() {
        return this.type;
    }

    public String getUid() {
        return this.uid;
    }

    public String getUniqueId() {
        return this.uniqueId;
    }

    public boolean isTourist() {
        return this.tourist;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setId(int id2) {
        this.f67264id = id2;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setTimes(int times) {
        this.times = times;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

    public void setTourist(boolean tourist) {
        this.tourist = tourist;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setUniqueId(String uniqueId) {
        this.uniqueId = uniqueId;
    }
}
