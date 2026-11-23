package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class CloudUploadInfo implements Serializable {
    private String backup_type;
    private String game_id;
    private int rid;
    private String token;
    private int uid;

    public String getBackup_type() {
        return this.backup_type;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getRid() {
        return this.rid;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setBackup_type(String backup_type) {
        this.backup_type = backup_type;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
