package com.join.mgps.dto;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class UserGameListBean {
    private String gameIcon;
    private String gameId;
    private String gameName;

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        UserGameListBean userGameListBean = (UserGameListBean) o10;
        return Objects.equals(this.gameId, userGameListBean.gameId) && Objects.equals(this.gameName, userGameListBean.gameName) && Objects.equals(this.gameIcon, userGameListBean.gameIcon);
    }

    public String getGameIcon() {
        return this.gameIcon;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGameName() {
        return this.gameName;
    }

    public int hashCode() {
        return Objects.hash(this.gameId, this.gameName, this.gameIcon);
    }

    public void setGameIcon(String gameIcon) {
        this.gameIcon = gameIcon;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }
}
