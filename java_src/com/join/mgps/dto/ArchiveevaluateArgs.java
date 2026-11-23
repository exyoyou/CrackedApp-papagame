package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveevaluateArgs {
    int commentType;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    String f68016id;
    String token;
    String uid;

    public ArchiveevaluateArgs(String uid, String token, String id2, int commentType) {
        this.uid = uid;
        this.token = token;
        this.f68016id = id2;
        this.commentType = commentType;
    }

    public Map<String, String> getArgs() {
        HashMap map = new HashMap();
        map.put("uid", this.uid);
        map.put(Constants.TOKEN, this.token);
        map.put("id", this.f68016id);
        map.put("commentType", this.commentType + "");
        return map;
    }

    public int getCommentType() {
        return this.commentType;
    }

    public String getId() {
        return this.f68016id;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setCommentType(int commentType) {
        this.commentType = commentType;
    }

    public void setId(String id2) {
        this.f68016id = id2;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
