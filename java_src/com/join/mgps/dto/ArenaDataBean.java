package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaDataBean implements Serializable {
    private byte archive;
    private long gameid;
    private List<Long> gameids;
    private int groupid;
    private byte isvisit;
    private String password;
    private int ping;
    private byte pos;
    private byte refreshtype;
    private byte roomtype;
    int showGroupId;
    private long time;

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        return o10 != null && getClass() == o10.getClass() && this.groupid == ((ArenaDataBean) o10).groupid;
    }

    public byte getArchive() {
        return this.archive;
    }

    public long getGameid() {
        return this.gameid;
    }

    public List<Long> getGameids() {
        return this.gameids;
    }

    public int getGroupid() {
        return this.groupid;
    }

    public byte getIsvisit() {
        return this.isvisit;
    }

    public String getPassword() {
        return this.password;
    }

    public int getPing() {
        return this.ping;
    }

    public byte getPos() {
        return this.pos;
    }

    public byte getRefreshtype() {
        return this.refreshtype;
    }

    public byte getRoomtype() {
        return this.roomtype;
    }

    public int getShowGroupId() {
        return this.showGroupId;
    }

    public long getTime() {
        return this.time;
    }

    public int hashCode() {
        return this.groupid;
    }

    public void setArchive(byte archive) {
        this.archive = archive;
    }

    public void setGameid(long gameid) {
        this.gameid = gameid;
    }

    public void setGameids(List<Long> gameids) {
        this.gameids = gameids;
    }

    public void setGroupid(int groupid) {
        this.groupid = groupid;
    }

    public void setIsvisit(byte isvisit) {
        this.isvisit = isvisit;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPing(int ping) {
        this.ping = ping;
    }

    public void setPos(byte pos) {
        this.pos = pos;
    }

    public void setRefreshtype(byte refreshtype) {
        this.refreshtype = refreshtype;
    }

    public void setRoomtype(byte roomtype) {
        this.roomtype = roomtype;
    }

    public void setShowGroupId(int groupId) {
        this.showGroupId = groupId % 1000;
    }

    public void setTime(long time) {
        this.time = time;
    }
}
