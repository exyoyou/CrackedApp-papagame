package com.windmill.sdk;

import android.os.Build;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WindMillAdRequest {
    private int adCount;
    protected int adType;
    public HashMap<String, Boolean> checkCheatMap;
    public boolean isLoadToOut;
    public boolean isRefreshRequest;
    private String loadId;
    private Map<String, Object> options;
    public String orginLoadId;
    private String placementId;
    public String rewardSign;
    private String userId;

    public WindMillAdRequest() {
        this.isLoadToOut = false;
        this.options = new HashMap();
        this.isRefreshRequest = false;
        this.rewardSign = "";
        this.checkCheatMap = new HashMap<>();
        this.orginLoadId = "";
        this.placementId = "";
        this.userId = "";
        this.adType = 1;
    }

    public int getAdCount() {
        return this.adCount;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getLoadId() {
        return this.loadId;
    }

    public Map<String, Object> getOptions() {
        return this.options;
    }

    public String getPlacementId() {
        return this.placementId;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isRefreshRequest() {
        return this.isRefreshRequest;
    }

    public boolean ischeckCheat(String loadId) {
        HashMap<String, Boolean> map;
        return Build.VERSION.SDK_INT >= 24 && (map = this.checkCheatMap) != null && map.containsKey(loadId) && this.checkCheatMap.get(loadId).booleanValue() && getAdType() == 1;
    }

    public void setAdCount(int adCount) {
        this.adCount = adCount;
    }

    public void setLoadId(String loadId) {
        this.loadId = loadId;
    }

    public void setOptions(Map<String, Object> optionMap) {
        Map<String, Object> map = this.options;
        if (map != null) {
            map.putAll(optionMap);
        }
    }

    public void setPlacementId(String placementId) {
        this.placementId = placementId;
    }

    public void setRefreshRequest(boolean refreshRequest) {
        this.isRefreshRequest = refreshRequest;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public WindMillAdRequest(String placementId, String userId, Map<String, Object> options, int adType) {
        this.isLoadToOut = false;
        this.options = new HashMap();
        this.isRefreshRequest = false;
        this.rewardSign = "";
        this.checkCheatMap = new HashMap<>();
        this.orginLoadId = "";
        this.placementId = placementId;
        this.userId = userId;
        if (options != null) {
            this.options.putAll(options);
        }
        this.adType = adType;
    }

    public WindMillAdRequest(String placementId, String userId, Map<String, Object> options) {
        this.isLoadToOut = false;
        this.options = new HashMap();
        this.isRefreshRequest = false;
        this.rewardSign = "";
        this.checkCheatMap = new HashMap<>();
        this.orginLoadId = "";
        this.placementId = placementId;
        this.userId = userId;
        if (options != null) {
            this.options.putAll(options);
        }
        this.adType = 1;
    }

    public WindMillAdRequest(String placementId, String userId, int adCount, Map<String, Object> options) {
        this.isLoadToOut = false;
        this.options = new HashMap();
        this.isRefreshRequest = false;
        this.rewardSign = "";
        this.checkCheatMap = new HashMap<>();
        this.orginLoadId = "";
        this.placementId = placementId;
        this.userId = userId;
        if (options != null) {
            this.options.putAll(options);
        }
        this.adCount = adCount;
    }
}
