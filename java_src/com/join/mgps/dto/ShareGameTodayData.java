package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ShareGameTodayData {
    String gameid1;
    String gameid2;
    String gameid3;
    boolean hasShare = false;
    long lastTime;

    public String getGameid1() {
        return this.gameid1;
    }

    public String getGameid2() {
        return this.gameid2;
    }

    public String getGameid3() {
        return this.gameid3;
    }

    public long getLastTime() {
        return this.lastTime;
    }

    public boolean isHasShare() {
        return this.hasShare;
    }

    public void setGameid1(String gameid1) {
        this.gameid1 = gameid1;
    }

    public void setGameid2(String gameid2) {
        this.gameid2 = gameid2;
    }

    public void setGameid3(String gameid3) {
        this.gameid3 = gameid3;
    }

    public void setHasShare(boolean hasShare) {
        this.hasShare = hasShare;
    }

    public void setLastTime(long lastTime) {
        this.lastTime = lastTime;
    }
}
