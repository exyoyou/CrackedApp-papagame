package com.windmill.sdk.reward;

import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMRewardInfo {
    Map<String, Object> customData;
    private boolean reward;
    private String third_trans_id;
    private String trans_id;
    private String user_id;

    public WMRewardInfo(boolean reward, String trans_id, String third_trans_id, String user_id) {
        this.reward = reward;
        this.trans_id = trans_id;
        this.third_trans_id = third_trans_id;
        this.user_id = user_id;
    }

    public Map<String, Object> getCustomData() {
        return this.customData;
    }

    public String getThird_trans_id() {
        return this.third_trans_id;
    }

    public String getTrans_id() {
        return this.trans_id;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public boolean isReward() {
        return this.reward;
    }

    public void setCustomData(Map<String, Object> customData) {
        this.customData = customData;
    }

    public String toString() {
        return "{reward=" + this.reward + ", trans_id='" + this.trans_id + "', user_id='" + this.user_id + "', third_trans_id='" + this.third_trans_id + "', customData=" + this.customData + '}';
    }
}
