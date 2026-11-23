package com.papa.sim.statistic;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class StatParamsBean implements Serializable {
    private int _from_type;
    private String dataFlag;
    private String from;
    private String from_id;
    private String gameId;
    private boolean isOnlineGame;
    private String keyword;
    private String location;
    private String nodeId;
    private String position;
    private String reMarks;
    private String reMarks1;
    private String recPosition;
    private String uid;
    private String volcanoOther;
    private String where;

    public String getDataFlag() {
        return this.dataFlag;
    }

    public String getFrom() {
        return this.from;
    }

    public String getFrom_id() {
        return this.from_id;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public String getLocation() {
        return this.location;
    }

    public String getNodeId() {
        return this.nodeId;
    }

    public String getPosition() {
        return this.position;
    }

    public String getReMarks() {
        return this.reMarks;
    }

    public String getReMarks1() {
        return this.reMarks1;
    }

    public String getRecPosition() {
        return this.recPosition;
    }

    public String getUid() {
        return this.uid;
    }

    public String getVolcanoOther() {
        return this.volcanoOther;
    }

    public String getWhere() {
        return this.where;
    }

    public int get_from_type() {
        return this._from_type;
    }

    public boolean isOnlineGame() {
        return this.isOnlineGame;
    }

    public void setDataFlag(String str) {
        this.dataFlag = str;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setFrom_id(String str) {
        this.from_id = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public void setNodeId(String str) {
        this.nodeId = str;
    }

    public void setOnlineGame(boolean z10) {
        this.isOnlineGame = z10;
    }

    public void setPosition(String str) {
        this.position = str;
    }

    public void setReMarks(String str) {
        this.reMarks = str;
    }

    public void setReMarks1(String str) {
        this.reMarks1 = str;
    }

    public void setRecPosition(String str) {
        this.recPosition = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public void setVolcanoOther(String str) {
        this.volcanoOther = str;
    }

    public void setWhere(String str) {
        this.where = str;
    }

    public void set_from_type(int i10) {
        this._from_type = i10;
    }
}
