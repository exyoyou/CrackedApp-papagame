package com.sigmob.windad;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class WindAdRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f82163a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f82164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f82165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f82166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, Object> f82167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, Object> f82168f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f82169g;

    protected WindAdRequest(String placementId, String userId, Map<String, Object> options, int adFormat) {
        this.f82165c = placementId;
        this.f82166d = userId;
        this.f82167e = options;
        this.f82164b = adFormat;
    }

    public static boolean isPlacementEmpty(WindAdRequest adRequest) {
        return adRequest == null || TextUtils.isEmpty(adRequest.getPlacementId());
    }

    public int getAdCount() {
        return this.f82163a;
    }

    public int getAdType() {
        return this.f82164b;
    }

    public String getAdxId() {
        Map<String, Object> map = this.f82168f;
        if (map == null) {
            return null;
        }
        Object obj = map.get(WindAds.ADX_ID);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public String getLoadId() {
        Map<String, Object> map = this.f82168f;
        if (map == null) {
            return null;
        }
        Object obj = map.get("loadId");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public Map<String, Object> getOptions() {
        return this.f82167e;
    }

    public String getPlacementId() {
        return this.f82165c;
    }

    public Map<?, ?> getTBOptions(String key) {
        Map<String, Object> map = this.f82168f;
        if (map == null) {
            return null;
        }
        Object obj = map.get(key);
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public String getUserId() {
        return this.f82166d;
    }

    public boolean hasOptions() {
        return this.f82167e != null;
    }

    public boolean isHalfInterstitial() {
        return this.f82169g;
    }

    public void setAdCount(int adCount) {
        this.f82163a = adCount;
    }

    public void setExtOptions(Map<String, Object> extOptions) {
        this.f82168f = extOptions;
    }

    public void setHalfInterstitial(boolean halfInterstitial) {
        this.f82169g = halfInterstitial;
    }

    public void setOptions(Map<String, Object> options) {
        this.f82167e = options;
    }

    public void setUserId(String userId) {
        this.f82166d = userId;
    }
}
