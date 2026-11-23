package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class EndGameNameListBean implements Serializable {
    private List<EndGameBean> gameEndgameVo;
    private String gameIcon;
    private String gameId;
    private String gameName;
    private boolean isSelected;

    public List<EndGameBean> getGameEndgameVo() {
        return this.gameEndgameVo;
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

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setGameEndgameVo(List<EndGameBean> gameEndgameVo) {
        this.gameEndgameVo = gameEndgameVo;
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

    public void setSelected(boolean selected) {
        this.isSelected = selected;
    }
}
