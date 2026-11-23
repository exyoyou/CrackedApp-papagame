package com.join.mgps.ad;

import com.join.mgps.dto.SingleGameAdCfgBean;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class RewardAdParams implements Serializable {
    private String adId;
    private int adType;
    private String appId;
    private SingleGameAdCfgBean cfgBean;
    private int duration;
    private String gameId;
    private String resourceId;

    public RewardAdParams(String appId, String adId, int adType, int duration, SingleGameAdCfgBean cfgBean) {
        this(appId, adId, adType, duration, cfgBean, null, null);
    }

    public String getAdId() {
        return this.adId;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getAppId() {
        return this.appId;
    }

    public SingleGameAdCfgBean getCfgBean() {
        return this.cfgBean;
    }

    public int getDuration() {
        return this.duration;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getResourceId() {
        return this.resourceId;
    }

    public void setAdId(String adId) {
        this.adId = adId;
    }

    public void setAdType(int adType) {
        this.adType = adType;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public void setCfgBean(SingleGameAdCfgBean cfgBean) {
        this.cfgBean = cfgBean;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setResourceId(String resourceId) {
        this.resourceId = resourceId;
    }

    public RewardAdParams(String appId, String adId, int adType, int duration, SingleGameAdCfgBean cfgBean, String gameId, String resourceId) {
        this.appId = appId;
        this.adId = adId;
        this.adType = adType;
        this.duration = duration;
        this.cfgBean = cfgBean;
        this.gameId = gameId;
        this.resourceId = resourceId;
    }
}
