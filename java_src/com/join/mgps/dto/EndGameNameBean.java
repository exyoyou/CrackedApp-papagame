package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class EndGameNameBean {
    private List<EndGameNameListBean> gameList;
    private int post;
    private int room;

    public List<EndGameNameListBean> getGameList() {
        return this.gameList;
    }

    public int getPost() {
        return this.post;
    }

    public int getRoom() {
        return this.room;
    }

    public void setGameList(List<EndGameNameListBean> gameList) {
        this.gameList = gameList;
    }

    public void setPost(int post) {
        this.post = post;
    }

    public void setRoom(int room) {
        this.room = room;
    }
}
