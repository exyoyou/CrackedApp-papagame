package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestSiliencebean {
    private String game_id;
    private int silence_room_switch;
    private int uid;

    public RequestSiliencebean(int uid, int silence_room_switch, String game_id) {
        this.uid = uid;
        this.silence_room_switch = silence_room_switch;
        this.game_id = game_id;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getSilence_room_switch() {
        return this.silence_room_switch;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setSilence_room_switch(int silence_room_switch) {
        this.silence_room_switch = silence_room_switch;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
