package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PointMessageMain {
    public PointMessageData data;
    public String event = "gameDownload";
    public String gameId;

    public PointMessageData getData() {
        return this.data;
    }

    public String getEvent() {
        return this.event;
    }

    public String getGameId() {
        return this.gameId;
    }

    public void setData(PointMessageData data) {
        this.data = data;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }
}
