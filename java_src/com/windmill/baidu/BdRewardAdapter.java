package com.windmill.baidu;

import android.app.Activity;
import android.content.Context;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.logger.SigmobLog;
import com.sdk.base.module.manager.SDKManager;
import com.sigmob.windad.WindAds;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomRewardAdapter;
import com.windmill.sdk.models.BidInfo;
import com.windmill.sdk.models.BidPrice;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BdRewardAdapter extends WMCustomRewardAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f85936a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f85938c;
    public RewardVideoAd mRewardVideoAd;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<WeakReference<Activity>> f85937b = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f85939d = false;

    static /* synthetic */ boolean b(BdRewardAdapter bdRewardAdapter) {
        bdRewardAdapter.f85938c = false;
        return false;
    }

    static /* synthetic */ boolean c(BdRewardAdapter bdRewardAdapter) {
        bdRewardAdapter.f85939d = true;
        return true;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        if (this.mRewardVideoAd != null) {
            this.mRewardVideoAd = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.mRewardVideoAd;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Object adDataForKey;
        RewardVideoAd rewardVideoAd = this.mRewardVideoAd;
        if (rewardVideoAd == null || (adDataForKey = rewardVideoAd.getAdDataForKey("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", adDataForKey);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getRewardExtraOption() {
        Object adDataForKey;
        RewardVideoAd rewardVideoAd = this.mRewardVideoAd;
        if (rewardVideoAd == null || (adDataForKey = rewardVideoAd.getAdDataForKey("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(WindAds.TRANS_ID, adDataForKey);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            if (!isUseChannelIsReady()) {
                return this.f85939d;
            }
            RewardVideoAd rewardVideoAd = this.mRewardVideoAd;
            if (rewardVideoAd != null) {
                return rewardVideoAd.isReady();
            }
            return false;
        } catch (Throwable th) {
            SigmobLog.e("bd isReady catch Throwable:", th);
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + "---loadAd " + map2);
            this.f85938c = false;
            this.f85939d = false;
            this.mRewardVideoAd = new RewardVideoAd(context, str, new RewardVideoAd.RewardVideoAdListener() { // from class: com.windmill.baidu.BdRewardAdapter.1
                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdClick() {
                    SigmobLog.i(BdRewardAdapter.this.getClass().getSimpleName() + " onAdClick()");
                    BdRewardAdapter.this.callVideoAdClick();
                }

                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdClose(float f10) {
                    SigmobLog.i(BdRewardAdapter.this.getClass().getName() + " onAdClosed");
                    if (BdRewardAdapter.this.f85938c) {
                        BdRewardAdapter.b(BdRewardAdapter.this);
                        BdRewardAdapter.this.callVideoAdClosed();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdFailed(String str2) {
                    SigmobLog.i(BdRewardAdapter.this.getClass().getSimpleName() + " onAdFailed:" + str2);
                    BdRewardAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), str2));
                }

                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdLoaded() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(BdRewardAdapter.this.getClass().getSimpleName());
                    sb2.append(" onAdLoaded:");
                    RewardVideoAd rewardVideoAd = BdRewardAdapter.this.mRewardVideoAd;
                    sb2.append(rewardVideoAd != null ? Boolean.valueOf(rewardVideoAd.isReady()) : "null");
                    SigmobLog.i(sb2.toString());
                    BdRewardAdapter bdRewardAdapter = BdRewardAdapter.this;
                    if (bdRewardAdapter.mRewardVideoAd != null && bdRewardAdapter.getBiddingType() == 1) {
                        BidPrice bidPrice = new BidPrice(BdRewardAdapter.this.mRewardVideoAd.getECPMLevel());
                        bidPrice.pecpm = BdRewardAdapter.this.mRewardVideoAd.getPECPM();
                        SigmobLog.i(getClass().getSimpleName() + "----pecpm:" + bidPrice.pecpm);
                        BdRewardAdapter.this.callLoadBiddingSuccess(bidPrice);
                    }
                    if (BdRewardAdapter.this.getFillType() == 1) {
                        BdRewardAdapter bdRewardAdapter2 = BdRewardAdapter.this;
                        bdRewardAdapter2.callLoadSuccess(bdRewardAdapter2.mRewardVideoAd);
                        BdRewardAdapter.c(BdRewardAdapter.this);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdShow() {
                    SigmobLog.i(BdRewardAdapter.this.getClass().getSimpleName() + " onAdShow()");
                    BdRewardAdapter.this.callVideoAdShow();
                }

                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdSkip(float f10) {
                    SigmobLog.i(BdRewardAdapter.this.getClass().getSimpleName() + " onAdSkip()");
                    BdRewardAdapter.this.callVideoAdSkipped();
                }

                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener
                public void onRewardVerify(boolean z10, Map<String, Object> map3) {
                    SigmobLog.i(BdRewardAdapter.this.getClass().getName() + " onRewardVerify:" + z10);
                    BdRewardAdapter.this.callVideoAdReward(z10);
                }

                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onVideoDownloadFailed() {
                    SigmobLog.i(BdRewardAdapter.this.getClass().getSimpleName() + " onVideoDownloadFailed()");
                    BdRewardAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onVideoDownloadFailed"));
                }

                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onVideoDownloadSuccess() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(BdRewardAdapter.this.getClass().getSimpleName());
                    sb2.append(" onVideoDownloadSuccess:");
                    RewardVideoAd rewardVideoAd = BdRewardAdapter.this.mRewardVideoAd;
                    sb2.append(rewardVideoAd != null ? Boolean.valueOf(rewardVideoAd.isReady()) : "null");
                    SigmobLog.i(sb2.toString());
                    if (BdRewardAdapter.this.getFillType() == 0) {
                        BdRewardAdapter bdRewardAdapter = BdRewardAdapter.this;
                        bdRewardAdapter.callLoadSuccess(bdRewardAdapter.mRewardVideoAd);
                        BdRewardAdapter.c(BdRewardAdapter.this);
                    }
                }

                @Override // com.baidu.mobads.sdk.api.RewardVideoAd.RewardVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void playCompletion() {
                    SigmobLog.i(BdRewardAdapter.this.getClass().getSimpleName() + " playCompletion()");
                    BdRewardAdapter.this.callVideoAdPlayComplete();
                }
            });
            Object obj = map2.get("showDownloadDialog");
            if (obj == null || !obj.equals("1")) {
                this.mRewardVideoAd.setDownloadAppConfirmPolicy(3);
            } else {
                this.mRewardVideoAd.setDownloadAppConfirmPolicy(1);
            }
            try {
                Object obj2 = map2.get(WMConstants.BID_FLOOR);
                if (obj2 != null) {
                    this.mRewardVideoAd.setBidFloor(((Integer) obj2).intValue());
                }
                if (map != null) {
                    String strSerialize = JSONSerializer.Serialize(map);
                    SigmobLog.i(getClass().getSimpleName() + " json " + strSerialize);
                    this.mRewardVideoAd.setExtraInfo(strSerialize);
                }
                this.mRewardVideoAd.setUserId(getUserId());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            BidInfo lastBidInfo = getLastBidInfo();
            if (lastBidInfo != null) {
                SigmobLog.i(getClass().getSimpleName() + " bidInfo:" + lastBidInfo.toString());
                this.mRewardVideoAd.setRequestParameters(new RequestParameters.Builder().addCustExt("A", lastBidInfo.getWinner()).addCustExt(SDKManager.ALGO_B_AES_SHA256_RSA, lastBidInfo.getECpm()).addCustExt(SDKManager.ALGO_C_RFU, lastBidInfo.getBidType()).addCustExt("S", lastBidInfo.getExposureStatus()).addCustExt(SDKManager.ALGO_D_RFU, lastBidInfo.getClickStatus()).addCustExt("H", lastBidInfo.getFailReason()).addCustExt("I", lastBidInfo.getSecondPrice()).addCustExt("J", lastBidInfo.getBidTime()).addCustExt("K", lastBidInfo.getRequestId()).build());
            }
            this.mRewardVideoAd.load();
        } catch (Throwable th) {
            SigmobLog.e("bd load ", th);
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.mRewardVideoAd != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                LinkedHashMap<String, Object> linkedHashMapCastBiddingInfo = bidInfoWithChannel != null ? BdAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : BdAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + linkedHashMapCastBiddingInfo);
                if (z10) {
                    a.a(this.mRewardVideoAd, String.valueOf(linkedHashMapCastBiddingInfo.get("ecpm")), linkedHashMapCastBiddingInfo);
                } else {
                    a.b(this.mRewardVideoAd, String.valueOf(linkedHashMapCastBiddingInfo.get(MediationConstant.KEY_REASON)), linkedHashMapCastBiddingInfo);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
        String name = activity.getClass().getName();
        if (this.f85936a && this.f85938c && name.startsWith("com.baidu.mobads.sdk")) {
            SigmobLog.e(getClass().getSimpleName() + " onCreate " + activity.getClass().getName() + " id " + activity.hashCode());
            this.f85937b.add(new WeakReference<>(activity));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
        try {
            String name = activity.getClass().getName();
            if (this.f85936a && name.startsWith("com.baidu.mobads.sdk")) {
                SigmobLog.e(getClass().getSimpleName() + " BD onDestroy activity:" + activity.getClass().getSimpleName());
                Iterator<WeakReference<Activity>> it2 = this.f85937b.iterator();
                while (it2.hasNext()) {
                    if (activity.equals(it2.next().get())) {
                        SigmobLog.e(getClass().getSimpleName() + " remove " + activity.getClass().getName() + " id " + activity.hashCode());
                        it2.remove();
                        break;
                    }
                }
                if (this.f85938c && this.f85937b.isEmpty()) {
                    this.f85938c = false;
                    callVideoAdClosed();
                    this.f85936a = false;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            if (map2.containsKey(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK)) {
                this.f85936a = map2.get(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK).equals("1");
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getClass().getSimpleName());
            sb2.append(" showAd:");
            RewardVideoAd rewardVideoAd = this.mRewardVideoAd;
            sb2.append(rewardVideoAd != null ? Boolean.valueOf(rewardVideoAd.isReady()) : "null");
            SigmobLog.i(sb2.toString());
            if (!isReady()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示!"));
                return;
            }
            this.f85938c = true;
            this.f85939d = false;
            this.mRewardVideoAd.show(activity);
        } catch (Throwable th) {
            SigmobLog.e("bd show ", th);
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }
}
