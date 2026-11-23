package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveColudArgs {
    String gameId;
    String token;
    String uid;

    public ArchiveColudArgs(String uid, String token, String gameId) {
        this.uid = uid;
        this.token = token;
        this.gameId = gameId;
    }

    public Map<String, String> getArgs() {
        HashMap map = new HashMap();
        map.put("uid", this.uid);
        map.put(Constants.TOKEN, this.token);
        map.put("gameId", this.gameId);
        return map;
    }

    public String getGameId() {
        return this.gameId;
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

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
