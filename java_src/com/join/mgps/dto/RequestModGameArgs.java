package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestModGameArgs {
    private String gameId;
    private String gameVersion;
    private boolean is32Mod = false;
    private int uid;
    private String userToken;

    public String getGameId() {
        return this.gameId;
    }

    public String getGameVersion() {
        return this.gameVersion;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public boolean isIs32Mod() {
        return this.is32Mod;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGameVersion(String gameVersion) {
        this.gameVersion = gameVersion;
    }

    public void setIs32Mod(boolean is32Mod) {
        this.is32Mod = is32Mod;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }
}
