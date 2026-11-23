package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaSelectServer implements Serializable {
    private int area;
    private boolean is_play;
    private boolean is_recommend;
    private int ping;
    private int server_no;

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        return o10 != null && getClass() == o10.getClass() && this.server_no == ((ArenaSelectServer) o10).server_no;
    }

    public int getArea() {
        return this.area;
    }

    public int getPing() {
        return this.ping;
    }

    public int getServer_no() {
        return this.server_no;
    }

    public int hashCode() {
        return this.server_no;
    }

    public boolean is_play() {
        return this.is_play;
    }

    public boolean is_recommend() {
        return this.is_recommend;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public void setIs_play(boolean is_play) {
        this.is_play = is_play;
    }

    public void setIs_recommend(boolean is_recommend) {
        this.is_recommend = is_recommend;
    }

    public void setPing(int ping) {
        this.ping = ping;
    }

    public void setServer_no(int server_no) {
        this.server_no = server_no;
    }
}
