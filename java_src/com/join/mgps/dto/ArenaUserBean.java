package com.join.mgps.dto;

import com.join.mgps.Util.g1;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaUserBean implements Serializable {
    private int curlv;
    private int failcount;
    private String iconurl;
    private String name;
    private int nextexp;
    private int ping;
    private byte posidx;
    private byte state;
    private byte svip;
    private long userid;
    private byte vip;
    private int wincount;

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        return o10 != null && getClass() == o10.getClass() && this.userid == ((ArenaUserBean) o10).userid;
    }

    public int getCurlv() {
        return this.curlv;
    }

    public int getFailcount() {
        return this.failcount;
    }

    public String getIconurl() {
        return this.iconurl;
    }

    public String getName() {
        return this.name;
    }

    public int getNextexp() {
        return this.nextexp;
    }

    public int getPing() {
        return this.ping;
    }

    public byte getPosidx() {
        return this.posidx;
    }

    public byte getState() {
        return this.state;
    }

    public byte getSvip() {
        return this.svip;
    }

    public long getUserid() {
        return this.userid;
    }

    public byte getVip() {
        return this.vip;
    }

    public int getWincount() {
        return this.wincount;
    }

    public int hashCode() {
        long j10 = this.userid;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public void setCurlv(int curlv) {
        this.curlv = curlv;
    }

    public void setFailcount(int failcount) {
        this.failcount = failcount;
    }

    public void setIconurl(String iconurl) {
        this.iconurl = iconurl;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNextexp(int nextexp) {
        this.nextexp = nextexp;
    }

    public void setPing(int ping) {
        this.ping = ping;
    }

    public void setPosidx(byte posidx) {
        this.posidx = posidx;
    }

    public void setState(byte state) {
        this.state = state;
    }

    public void setSvip(byte svip) {
        this.svip = svip;
        g1.g("svip-------" + ((int) svip));
    }

    public void setUserid(long userid) {
        this.userid = userid;
    }

    public void setVip(byte vip) {
        g1.g("vip-------" + ((int) vip));
        this.vip = vip;
    }

    public void setWincount(int wincount) {
        this.wincount = wincount;
    }

    public String toString() {
        return "ArenaUserBean{userid=" + this.userid + ", iconurl='" + this.iconurl + "'}";
    }
}
