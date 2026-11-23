package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaInviteBean implements Serializable {
    private Long gameId;
    public String groupId;
    public String no;
    public String password;

    public Long getGameId() {
        return this.gameId;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public String getNo() {
        return this.no;
    }

    public String getPassword() {
        return this.password;
    }

    public void setGameId(Long gameId) {
        this.gameId = gameId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
