package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RequestGameIdArgs {
    private List<Long> downloadedGameIdList;
    private String gameId;
    private String game_id;
    private long lastEnterTime;
    private int page;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68096pc;
    private int pn;
    private String tagId;
    private String tagName;
    private String tagType;
    private int tag_id;
    private String token;
    private int type;
    private int uid;
    private String userToken;

    public RequestGameIdArgs() {
        this.f68096pc = 10;
        this.tag_id = 0;
        this.uid = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
    }

    public List<Long> getDownloadedGameIdList() {
        return this.downloadedGameIdList;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public long getLastEnterTime() {
        return this.lastEnterTime;
    }

    public int getPage() {
        return this.page;
    }

    public int getPc() {
        return this.f68096pc;
    }

    public int getPn() {
        return this.pn;
    }

    public String getTagId() {
        return this.tagId;
    }

    public String getTagName() {
        return this.tagName;
    }

    public String getTagType() {
        return this.tagType;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public String getToken() {
        return this.token;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public void setDownloadedGameIdList(List<Long> downloadedGameIdList) {
        this.downloadedGameIdList = downloadedGameIdList;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setLastEnterTime(long lastEnterTime) {
        this.lastEnterTime = lastEnterTime;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setPc(int pc2) {
        this.f68096pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setTagId(String tagId) {
        this.tagId = tagId;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public void setTagType(String tagType) {
        this.tagType = tagType;
    }

    public void setTag_id(int tag_id) {
        this.tag_id = tag_id;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }

    public RequestGameIdArgs(int page, String tagId, String tagName, String tagType) {
        this.f68096pc = 10;
        this.tag_id = 0;
        this.uid = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
        this.page = page;
        this.tagId = tagId;
        this.tagName = tagName;
        this.tagType = tagType;
    }

    public RequestGameIdArgs(String game_id, int pn, int tag_id, int uid) {
        this.f68096pc = 10;
        this.lastEnterTime = 0L;
        this.type = 0;
        this.game_id = game_id;
        this.pn = pn;
        this.tag_id = tag_id;
        this.uid = uid;
    }

    public RequestGameIdArgs(String game_id, int pn, int uid) {
        this.f68096pc = 10;
        this.tag_id = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
        this.game_id = game_id;
        this.gameId = game_id;
        this.pn = pn;
        this.page = pn;
        this.uid = uid;
    }

    public RequestGameIdArgs(String game_id, String token, int uid) {
        this.f68096pc = 10;
        this.tag_id = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
        this.game_id = game_id;
        this.token = token;
        this.uid = uid;
    }

    public RequestGameIdArgs(String gameId, int page, int uid, long lastEnterTime, String tagId, int type) {
        this.f68096pc = 10;
        this.tag_id = 0;
        this.gameId = gameId;
        this.page = page;
        this.uid = uid;
        this.lastEnterTime = lastEnterTime;
        this.tagId = tagId;
        this.type = type;
    }
}
