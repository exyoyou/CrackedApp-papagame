package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class FavoriteGameListArgs {
    private String gameName;
    private String groupId;
    private int page;
    private String uid;

    public String getGameName() {
        return this.gameName;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public int getPage() {
        return this.page;
    }

    public String getUid() {
        return this.uid;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
