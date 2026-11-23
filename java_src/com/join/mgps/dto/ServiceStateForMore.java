package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceStateForMore {
    private String game_id;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68109id;
    private String server_info;
    private long server_time;
    private int type;
    private String type_txt;

    public String getGame_id() {
        return this.game_id;
    }

    public int getId() {
        return this.f68109id;
    }

    public String getServer_info() {
        return this.server_info;
    }

    public long getServer_time() {
        return this.server_time * 1000;
    }

    public int getType() {
        return this.type;
    }

    public String getType_txt() {
        return this.type_txt;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setId(int id2) {
        this.f68109id = id2;
    }

    public void setServer_info(String server_info) {
        this.server_info = server_info;
    }

    public void setServer_time(long server_time) {
        this.server_time = server_time;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setType_txt(String type_txt) {
        this.type_txt = type_txt;
    }
}
