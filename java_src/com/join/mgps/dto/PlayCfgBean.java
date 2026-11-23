package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class PlayCfgBean implements Serializable {
    private String ad_id;
    private String probability;
    private int reward_time;
    private String sdk_key;
    private int sdk_type;

    public String getAd_id() {
        return this.ad_id;
    }

    public String getProbability() {
        return this.probability;
    }

    public int getReward_time() {
        return this.reward_time;
    }

    public String getSdk_key() {
        return this.sdk_key;
    }

    public int getSdk_type() {
        return this.sdk_type;
    }

    public void setAd_id(String ad_id) {
        this.ad_id = ad_id;
    }

    public void setProbability(String probability) {
        this.probability = probability;
    }

    public void setReward_time(int reward_time) {
        this.reward_time = reward_time;
    }

    public void setSdk_key(String sdk_key) {
        this.sdk_key = sdk_key;
    }

    public void setSdk_type(int sdk_type) {
        this.sdk_type = sdk_type;
    }
}
