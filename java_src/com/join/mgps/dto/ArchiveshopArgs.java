package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveshopArgs {
    String gameId;
    int pn;
    int sortType;
    String token;
    String uid;

    public ArchiveshopArgs(String uid, String token, String gameId, int sortType, int pn) {
        this.uid = uid;
        this.token = token;
        this.gameId = gameId;
        this.sortType = sortType;
        this.pn = pn;
    }

    public Map<String, String> getArgs() {
        HashMap map = new HashMap();
        map.put("uid", this.uid);
        map.put(Constants.TOKEN, this.token);
        map.put("gameId", this.gameId);
        map.put("sortType", this.sortType + "");
        map.put("pn", this.pn + "");
        return map;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getPn() {
        return this.pn;
    }

    public int getSortType() {
        return this.sortType;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setSortType(int sortType) {
        this.sortType = sortType;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
