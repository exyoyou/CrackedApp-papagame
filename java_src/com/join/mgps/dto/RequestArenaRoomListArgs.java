package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestArenaRoomListArgs {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68089id;
    private int type;

    public RequestArenaRoomListArgs(String id2, int type) {
        this.f68089id = id2;
        this.type = type;
    }

    public String getId() {
        return this.f68089id;
    }

    public int getType() {
        return this.type;
    }

    public void setId(String id2) {
        this.f68089id = id2;
    }

    public void setType(int type) {
        this.type = type;
    }
}
