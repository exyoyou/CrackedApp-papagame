package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DomainInfoBean implements Serializable {
    private String ab_test_number;
    private String ext1;
    private String gameId;
    private int index;
    private String info;
    private String is_join;
    private long launchTime;
    private int location;
    private String pic;
    private String text;

    public String getAb_test_number() {
        return this.ab_test_number;
    }

    public String getExt1() {
        return this.ext1;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getIndex() {
        return this.index;
    }

    public String getInfo() {
        return this.info;
    }

    public String getIs_join() {
        return this.is_join;
    }

    public long getLaunchTime() {
        return this.launchTime;
    }

    public int getLocation() {
        return this.location;
    }

    public String getPic() {
        return this.pic;
    }

    public String getText() {
        return this.text;
    }

    public void setAb_test_number(String ab_test_number) {
        this.ab_test_number = ab_test_number;
    }

    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setIs_join(String is_join) {
        this.is_join = is_join;
    }

    public void setLaunchTime(long launchTime) {
        this.launchTime = launchTime;
    }

    public void setLocation(int location) {
        this.location = location;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public void setText(String text) {
        this.text = text;
    }
}
