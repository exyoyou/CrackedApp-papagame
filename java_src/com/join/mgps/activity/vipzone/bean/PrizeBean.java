package com.join.mgps.activity.vipzone.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class PrizeBean implements Serializable {
    private boolean hasAddAddress = true;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f58180id;
    private String name;
    private String pic;
    private int prize_type;
    private long time;
    private String title;
    private int type;
    private int uid;

    public int getId() {
        return this.f58180id;
    }

    public String getName() {
        return this.name;
    }

    public String getPic() {
        return this.pic;
    }

    public int getPrize_type() {
        return this.prize_type;
    }

    public long getTime() {
        return this.time;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public boolean isHasAddAddress() {
        return this.hasAddAddress;
    }

    public void setHasAddAddress(boolean hasAddAddress) {
        this.hasAddAddress = hasAddAddress;
    }

    public void setId(int id2) {
        this.f58180id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public void setPrize_type(int prize_type) {
        this.prize_type = prize_type;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
