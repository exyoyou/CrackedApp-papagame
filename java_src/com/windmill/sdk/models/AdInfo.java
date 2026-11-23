package com.windmill.sdk.models;

import android.text.TextUtils;
import com.czhj.sdk.common.json.JSONSerializer;
import com.sigmob.windad.WindAds;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.strategy.a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class AdInfo {
    private int abFlag;
    private Integer adSourceIndex;
    private int adType;
    private String adid;
    private int aggreWaterfallId;
    private int bidType;
    private String crid;
    private String eCPM;
    private String groupId;
    private boolean isHeaderBidding;
    public int isNativeAdSource;
    private String loadId;
    private int loadPriority;
    public String netWorkOptions;
    private int networkId;
    private String networkName;
    private String networkPlacementId;
    private int network_adType;
    private WeakReference<Object> objectWeakReference;
    private String pecpm;
    private String placementId;
    private int playPriority;
    private int reward_timing;
    private String ruleId;
    private Map<String, String> saasChannelInfo;
    private String scene;
    private int subType;
    private String currency = WindAds.CNY;
    private String userId = "";
    private Map<String, Object> options = new HashMap();

    public AdInfo(a strategy) {
        this.loadId = "";
        this.scene = "";
        this.netWorkOptions = "";
        if (strategy != null) {
            this.placementId = strategy.aL();
            this.networkPlacementId = strategy.aW();
            this.networkId = strategy.aN();
            this.networkName = strategy.aP();
            this.groupId = strategy.aY();
            this.ruleId = strategy.ag();
            this.abFlag = strategy.aZ();
            this.eCPM = strategy.V();
            this.isHeaderBidding = strategy.Y() != 0;
            this.adType = strategy.aK();
            this.loadPriority = strategy.R();
            this.playPriority = strategy.S();
            this.aggreWaterfallId = strategy.aE();
            this.isNativeAdSource = strategy.r();
            this.crid = strategy.au();
            this.adid = strategy.av();
            Object objI = strategy.i();
            if (objI != null) {
                this.objectWeakReference = new WeakReference<>(objI);
            }
            this.saasChannelInfo = strategy.j();
            this.bidType = strategy.Z();
            this.loadId = strategy.aJ();
            this.subType = strategy.s();
            this.adSourceIndex = strategy.g();
            this.pecpm = strategy.W();
            int iS = strategy.s();
            if (iS == 1) {
                this.network_adType = 1;
            } else if (iS == 2) {
                this.network_adType = 2;
                if (strategy.r() == 1) {
                    this.network_adType = 5;
                }
            } else if (iS == 4) {
                this.network_adType = 4;
                if (strategy.r() == 1) {
                    this.network_adType = 5;
                }
            } else if (iS == 5) {
                this.network_adType = 5;
            } else if (iS != 7) {
                this.network_adType = strategy.aK();
            } else {
                this.network_adType = 7;
                if (strategy.r() == 1) {
                    this.network_adType = 5;
                }
            }
            if (this.network_adType == 1) {
                this.reward_timing = 0;
            } else {
                this.reward_timing = strategy.t();
            }
            if (strategy.aa() != null) {
                String str = strategy.aa().get("scene_id");
                if (!TextUtils.isEmpty(str)) {
                    this.scene = str;
                }
            }
            if (strategy.H() != null) {
                this.netWorkOptions = JSONSerializer.Serialize(strategy.H());
            }
        }
    }

    public void fillData(WindMillAdRequest adRequest) {
        if (adRequest != null) {
            this.userId = adRequest.getUserId();
            this.loadId = adRequest.getLoadId();
            this.options.clear();
            this.options.putAll(adRequest.getOptions());
        }
    }

    public void fillNetWorkOption(Map<String, Object> option) {
        if (option != null) {
            this.netWorkOptions = JSONSerializer.Serialize(option);
        }
    }

    public int getAbFlag() {
        return this.abFlag;
    }

    public Integer getAdSourceIndex() {
        return this.adSourceIndex;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getAdid() {
        return this.adid;
    }

    public int getAggreWaterfallId() {
        return this.aggreWaterfallId;
    }

    public int getBidType() {
        return this.bidType;
    }

    public Object getChannelObject() {
        WeakReference<Object> weakReference = this.objectWeakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public String getCrid() {
        return this.crid;
    }

    public String getCurrency() {
        return this.currency;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public int getIsNativeAdSource() {
        return this.isNativeAdSource;
    }

    public String getLoadId() {
        return this.loadId;
    }

    public int getLoadPriority() {
        return this.loadPriority;
    }

    public String getNetWorkOptions() {
        return this.netWorkOptions;
    }

    public int getNetworkId() {
        return this.networkId;
    }

    public String getNetworkName() {
        return this.networkName;
    }

    public String getNetworkPlacementId() {
        return this.networkPlacementId;
    }

    public int getNetwork_adType() {
        return this.network_adType;
    }

    public Map<String, Object> getOptions() {
        return this.options;
    }

    public String getPecpm() {
        return this.pecpm;
    }

    public String getPlacementId() {
        return this.placementId;
    }

    public int getPlayPriority() {
        return this.playPriority;
    }

    public int getReward_timing() {
        return this.reward_timing;
    }

    public String getRuleId() {
        return this.ruleId;
    }

    public Map<String, String> getSaasChannelInfo() {
        return this.saasChannelInfo;
    }

    public String getScene() {
        return this.scene;
    }

    public int getSubType() {
        return this.subType;
    }

    public String getUserId() {
        return this.userId;
    }

    public String geteCPM() {
        return this.eCPM;
    }

    public boolean isHeaderBidding() {
        return this.isHeaderBidding;
    }

    public void setPecpm(String pecpm) {
        this.pecpm = pecpm;
    }

    public String toString() {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("placementId", this.placementId);
            jSONObject.put("networkPlacementId", this.networkPlacementId);
            jSONObject.put("networkId", this.networkId);
            jSONObject.put("networkName", this.networkName);
            jSONObject.put("groupId", this.groupId);
            jSONObject.put("ruleId", this.ruleId);
            jSONObject.put("abFlag", this.abFlag);
            jSONObject.put("loadPriority", this.loadPriority);
            jSONObject.put("playPriority", this.playPriority);
            jSONObject.put("eCPM", this.eCPM);
            jSONObject.put("currency", this.currency);
            jSONObject.put("isHeaderBidding", this.isHeaderBidding);
            jSONObject.put("loadId", this.loadId);
            jSONObject.put("userId", this.userId);
            jSONObject.put("adType", this.adType);
            jSONObject.put("network_adType", this.network_adType);
            jSONObject.put("scene", this.scene);
            jSONObject.put("pecpm", this.pecpm);
            jSONObject.put("bidType", this.bidType);
            jSONObject.put("isNativeAdSource", this.isNativeAdSource);
            jSONObject.put("reward_timing", this.reward_timing);
            jSONObject.put("aggreWaterfallId", this.aggreWaterfallId);
            jSONObject.put("adSourceIndex", this.adSourceIndex);
            Map<String, Object> map = this.options;
            if (map != null && !map.isEmpty()) {
                jSONObject.put("options", new JSONObject(this.options));
            }
            if (!TextUtils.isEmpty(this.netWorkOptions)) {
                jSONObject.put("netWorkOptions", new JSONObject(this.netWorkOptions));
            }
            WeakReference<Object> weakReference = this.objectWeakReference;
            if (weakReference != null && (obj = weakReference.get()) != null) {
                jSONObject.put("channelObject", obj.getClass().getName());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject.toString();
    }
}
