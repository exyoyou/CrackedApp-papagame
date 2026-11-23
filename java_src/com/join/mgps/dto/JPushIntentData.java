package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class JPushIntentData implements Serializable {
    private GameHeadAd jumpInfo;
    private String subType;
    private String type;

    public GameHeadAd getJumpInfo() {
        return this.jumpInfo;
    }

    public String getSubType() {
        return this.subType;
    }

    public String getType() {
        return this.type;
    }

    public void setJumpInfo(GameHeadAd jumpInfo) {
        this.jumpInfo = jumpInfo;
    }

    public void setSubType(String subType) {
        this.subType = subType;
    }

    public void setType(String type) {
        this.type = type;
    }
}
