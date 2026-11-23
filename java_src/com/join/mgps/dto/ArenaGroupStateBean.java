package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaGroupStateBean implements Serializable, Comparable<ArenaGroupStateBean> {
    private int areaIndictor = 1001;
    private long gameid;
    private int groupid;
    private byte isarchive;
    private byte isvisit;
    private byte password;
    private int position;
    private byte roomstate;
    int showGroupId;
    private byte startbattle;
    private long starttime;
    private byte svip;
    private List<ArenaUserBean> userBeanList;
    private byte usercount;
    private byte vip;
    private List<ArenaUserBean> visitorBeanList;

    public boolean equals(Object o10) {
        if (o10 instanceof ArenaGroupStateBean) {
            return this.groupid == ((ArenaGroupStateBean) o10).getGroupid();
        }
        return super.equals(o10);
    }

    public int getAreaIndictor() {
        return this.areaIndictor;
    }

    public long getGameid() {
        return this.gameid;
    }

    public int getGroupid() {
        return this.groupid;
    }

    public byte getIsarchive() {
        return this.isarchive;
    }

    public byte getIsvisit() {
        return this.isvisit;
    }

    public byte getPassword() {
        return this.password;
    }

    public int getPosition() {
        return this.position;
    }

    public byte getRoomstate() {
        return this.roomstate;
    }

    public int getShowGroupId() {
        return this.showGroupId;
    }

    public byte getStartbattle() {
        return this.startbattle;
    }

    public long getStarttime() {
        return this.starttime;
    }

    public byte getSvip() {
        return this.svip;
    }

    public List<ArenaUserBean> getUserBeanList() {
        return this.userBeanList;
    }

    public byte getUsercount() {
        return this.usercount;
    }

    public byte getVip() {
        return this.vip;
    }

    public List<ArenaUserBean> getVisitorBeanList() {
        return this.visitorBeanList;
    }

    public int hashCode() {
        return this.groupid;
    }

    public void setAreaIndictor(int areaIndictor) {
        this.areaIndictor = areaIndictor;
    }

    public void setGameid(long gameid) {
        this.gameid = gameid;
    }

    public void setGroupid(int groupid) {
        this.groupid = groupid;
    }

    public void setIsarchive(byte isarchive) {
        this.isarchive = isarchive;
    }

    public void setIsvisit(byte isvisit) {
        this.isvisit = isvisit;
    }

    public void setPassword(byte password) {
        this.password = password;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public void setRoomstate(byte roomstate) {
        this.roomstate = roomstate;
    }

    public void setShowGroupId(int groupId) {
        this.showGroupId = groupId % 1000;
    }

    public void setStartbattle(byte startbattle) {
        this.startbattle = startbattle;
    }

    public void setStarttime(long starttime) {
        this.starttime = starttime;
    }

    public void setSvip(byte svip) {
        this.svip = svip;
    }

    public void setUserBeanList(List<ArenaUserBean> userBeanList) {
        this.userBeanList = userBeanList;
    }

    public void setUsercount(byte usercount) {
        this.usercount = usercount;
    }

    public void setVip(byte vip) {
        this.vip = vip;
    }

    public void setVisitorBeanList(List<ArenaUserBean> visitorBeanList) {
        this.visitorBeanList = visitorBeanList;
    }

    public String toString() {
        return "ArenaGroupStateBean{gameid=" + this.gameid + ", groupid=" + this.groupid + ", roomstate=" + ((int) this.roomstate) + ", password=" + ((int) this.password) + ", isvisit=" + ((int) this.isvisit) + ", startbattle=" + ((int) this.startbattle) + ", starttime=" + this.starttime + ", isarchive=" + ((int) this.isarchive) + ", position=" + this.position + ", usercount=" + ((int) this.usercount) + ", userBeanList=" + this.userBeanList + ", visitorBeanList=" + this.visitorBeanList + '}';
    }

    @Override // java.lang.Comparable
    public int compareTo(ArenaGroupStateBean o10) {
        if (this == o10) {
            return 0;
        }
        return (o10 == null || this.groupid <= o10.groupid) ? -1 : 1;
    }
}
