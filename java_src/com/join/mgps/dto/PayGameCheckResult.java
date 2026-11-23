package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PayGameCheckResult {
    private String appGameId;
    private long expireTime;
    private boolean state;

    public String getAppGameId() {
        return this.appGameId;
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public boolean isState() {
        return this.state;
    }

    public void setAppGameId(String appGameId) {
        this.appGameId = appGameId;
    }

    public void setExpireTime(long expireTime) {
        this.expireTime = expireTime;
    }

    public void setState(boolean state) {
        this.state = state;
    }
}
