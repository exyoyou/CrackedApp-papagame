package com.windmill.toutiao;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdSlot;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.logger.SigmobLog;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomRewardAdapter;
import com.windmill.sdk.models.BidPrice;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class TouTiaoRewardVideoAdapter extends WMCustomRewardAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTRewardVideoAd f87697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f87698b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f87700d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<WeakReference<Activity>> f87699c = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f87701e = "TouTiaoRewardVideoAdapter";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f87702f = "com.bytedance";

    static /* synthetic */ boolean c(TouTiaoRewardVideoAdapter touTiaoRewardVideoAdapter) {
        touTiaoRewardVideoAdapter.f87698b = false;
        return false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        TTRewardVideoAd tTRewardVideoAd = this.f87697a;
        if (tTRewardVideoAd != null) {
            tTRewardVideoAd.getMediationManager().destroy();
            this.f87697a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87697a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Map<String, Object> mediaExtraInfo;
        Object obj;
        TTRewardVideoAd tTRewardVideoAd = this.f87697a;
        if (tTRewardVideoAd == null || (mediaExtraInfo = tTRewardVideoAd.getMediaExtraInfo()) == null || (obj = mediaExtraInfo.get("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", obj);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return this.f87697a != null && SystemClock.elapsedRealtime() < this.f87697a.getExpirationTimestamp();
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            String str = (String) map2.get("placementId");
            this.f87698b = false;
            SigmobLog.i(this.f87701e + "---loadAd " + str);
            TTAdNative.RewardVideoAdListener rewardVideoAdListener = new TTAdNative.RewardVideoAdListener() { // from class: com.windmill.toutiao.TouTiaoRewardVideoAdapter.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "----onError " + i10 + ":" + str2);
                    TouTiaoRewardVideoAdapter.this.callLoadFail(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
                public final void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
                    Object obj;
                    SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "----onRewardVideoAdLoad");
                    TouTiaoRewardVideoAdapter.this.f87697a = tTRewardVideoAd;
                    tTRewardVideoAd.setRewardAdInteractionListener(new TTRewardVideoAd.RewardAdInteractionListener() { // from class: com.windmill.toutiao.TouTiaoRewardVideoAdapter.1.1
                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onAdClose() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---onAdClose");
                            if (TouTiaoRewardVideoAdapter.this.f87698b) {
                                TouTiaoRewardVideoAdapter.c(TouTiaoRewardVideoAdapter.this);
                                TouTiaoRewardVideoAdapter.this.callVideoAdClosed();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onAdShow() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "----onAdShow");
                            TouTiaoRewardVideoAdapter.this.callVideoAdShow();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onAdVideoBarClick() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---onAdVideoBarClick");
                            TouTiaoRewardVideoAdapter.this.callVideoAdClick();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onRewardArrived(boolean z10, int i10, Bundle bundle) {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---onRewardArrived:" + bundle);
                            try {
                                if (bundle == null) {
                                    TouTiaoRewardVideoAdapter.this.callVideoAdReward(z10);
                                    return;
                                }
                                boolean z11 = bundle.containsKey("reward_extra_key_is_server_verify") ? bundle.getBoolean("reward_extra_key_is_server_verify") : false;
                                if (bundle.containsKey(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY)) {
                                    z11 = bundle.getBoolean(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY);
                                }
                                int i11 = bundle.getInt("reward_extra_key_error_code");
                                String string = bundle.getString("reward_extra_key_error_msg");
                                HashMap map3 = new HashMap();
                                if (bundle.containsKey("transId")) {
                                    String string2 = bundle.getString("transId");
                                    map3.put("transId", string2);
                                    WMLogUtil.i("---------GroRew: " + string2 + " " + bundle);
                                }
                                map3.put("rewardVerify", Boolean.valueOf(z11));
                                map3.put("errorCode", Integer.valueOf(i11));
                                map3.put("errorMsg", string);
                                TouTiaoRewardVideoAdapter.this.callVideoAdRewardWithData(z10, map3);
                            } catch (Exception unused) {
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onRewardVerify(boolean z10, int i10, String str2, int i11, String str3) {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---onRewardVerify:" + z10 + ":" + i11 + ":" + str3);
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onSkippedVideo() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---onSkippedVideo");
                            TouTiaoRewardVideoAdapter.this.callVideoAdSkipped();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onVideoComplete() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---onVideoComplete");
                            TouTiaoRewardVideoAdapter.this.callVideoAdPlayComplete();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onVideoError() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "----onVideoError");
                            TouTiaoRewardVideoAdapter.this.callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "tt onVideoError"));
                        }
                    });
                    TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = new TTRewardVideoAd.RewardAdInteractionListener() { // from class: com.windmill.toutiao.TouTiaoRewardVideoAdapter.1.2
                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onAdClose() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "----playAgain onAdClose");
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onAdShow() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---playAgain onAdShow");
                            TouTiaoRewardVideoAdapter.this.callVideoAdShow();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onAdVideoBarClick() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---playAgain onAdVideoBarClick");
                            TouTiaoRewardVideoAdapter.this.callVideoAdClick();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onRewardArrived(boolean z10, int i10, Bundle bundle) {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---playAgain onRewardArrived:" + z10);
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onRewardVerify(boolean z10, int i10, String str2, int i11, String str3) {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + " playAgain onRewardVerify:" + z10 + ":" + i11 + ":" + str3);
                            HashMap map3 = new HashMap();
                            map3.put("rewardVerify", Boolean.valueOf(z10));
                            map3.put("errorCode", Integer.valueOf(i11));
                            map3.put("errorMsg", str3);
                            TouTiaoRewardVideoAdapter.this.callVideoAdRewardWithData(z10, map3);
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onSkippedVideo() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---playAgain onSkippedVideo");
                            TouTiaoRewardVideoAdapter.this.callVideoAdSkipped();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onVideoComplete() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "---playAgain onVideoComplete");
                            TouTiaoRewardVideoAdapter.this.callVideoAdPlayComplete();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onVideoError() {
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "----playAgain onVideoError");
                            TouTiaoRewardVideoAdapter.this.callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "tt onVideoError"));
                        }
                    };
                    try {
                        Method method = tTRewardVideoAd.getClass().getMethod("setRewardPlayAgainInteractionListener", TTRewardVideoAd.RewardAdInteractionListener.class);
                        if (method != null) {
                            method.invoke(tTRewardVideoAd, rewardAdInteractionListener);
                            SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "----setRewardPlayAgainInteractionListener called via reflection");
                        }
                    } catch (Exception unused) {
                        SigmobLog.e(TouTiaoRewardVideoAdapter.this.f87701e + "----setRewardPlayAgainInteractionListener not supported in this SDK version");
                    }
                    tTRewardVideoAd.setDownloadListener(new TTAppDownloadListener() { // from class: com.windmill.toutiao.TouTiaoRewardVideoAdapter.1.3
                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onDownloadActive(long j10, long j11, String str2, String str3) {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onDownloadFailed(long j10, long j11, String str2, String str3) {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onDownloadFinished(long j10, String str2, String str3) {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onDownloadPaused(long j10, long j11, String str2, String str3) {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onIdle() {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onInstalled(String str2, String str3) {
                        }
                    });
                    if (TouTiaoRewardVideoAdapter.this.getBiddingType() == 1) {
                        Map<String, Object> mediaExtraInfo = TouTiaoRewardVideoAdapter.this.f87697a.getMediaExtraInfo();
                        TouTiaoRewardVideoAdapter.this.callLoadBiddingSuccess(new BidPrice((mediaExtraInfo == null || (obj = mediaExtraInfo.get("price")) == null) ? "0" : String.valueOf(obj)));
                    }
                    if (TouTiaoRewardVideoAdapter.this.getFillType() == 1) {
                        TouTiaoRewardVideoAdapter.this.callLoadSuccess(tTRewardVideoAd);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
                public final void onRewardVideoCached() {
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
                public final void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
                    SigmobLog.i(TouTiaoRewardVideoAdapter.this.f87701e + "----onRewardVideoCached");
                    if (TouTiaoRewardVideoAdapter.this.getFillType() == 0) {
                        TouTiaoRewardVideoAdapter.this.callLoadSuccess(tTRewardVideoAd);
                    }
                }
            };
            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setSupportDeepLink(true).setUserID(getUserId());
            if (map != null) {
                try {
                    String strSerialize = JSONSerializer.Serialize(map);
                    SigmobLog.i(getClass().getSimpleName() + " json " + strSerialize);
                    userID.setMediaExtra(strSerialize);
                    try {
                        userID.getClass().getMethod("setMediationAdSlot", IMediationAdSlot.class).invoke(userID, MediationAdSlot.Builder.class.getMethod(JsonPOJOBuilder.DEFAULT_BUILD_METHOD, new Class[0]).invoke(MediationAdSlot.Builder.class.getMethod("setExtraObject", String.class, Object.class).invoke(MediationAdSlot.Builder.class.newInstance(), MediationConstant.ADN_PANGLE, strSerialize), new Object[0]));
                    } catch (Throwable unused) {
                        WMLogUtil.e("not support setMediationAdSlot method");
                    }
                } catch (Exception unused2) {
                }
            }
            Object obj = map2.get("templateType");
            if (obj == null || obj.equals("") || obj.equals("0")) {
                userID.setExpressViewAcceptedSize(500.0f, 500.0f);
            }
            WMLogUtil.i(this.f87701e + "----load Server getBiddingType " + getBiddingType());
            if (getBiddingType() == 0) {
                WMLogUtil.i(this.f87701e + "----load Server bidding " + getHbResponseStr());
                userID.withBid(getHbResponseStr());
            }
            tTAdNative.loadRewardVideoAd(userID.build(), rewardVideoAdListener);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f87697a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (z10) {
                    this.f87697a.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f87697a.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
        if (this.f87700d && this.f87698b && activity.getClass().getName().startsWith(this.f87702f)) {
            SigmobLog.e(getClass().getSimpleName() + " onCreate " + activity.getClass().getName() + " id " + activity.hashCode());
            this.f87699c.add(new WeakReference<>(activity));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
        try {
            if (this.f87700d && activity.getClass().getName().startsWith(this.f87702f)) {
                Iterator<WeakReference<Activity>> it2 = this.f87699c.iterator();
                while (it2.hasNext()) {
                    if (activity.equals(it2.next().get())) {
                        SigmobLog.e(getClass().getSimpleName() + " remove " + activity.getClass().getName() + " id " + activity.hashCode());
                        it2.remove();
                        break;
                    }
                }
                if (this.f87698b && this.f87699c.isEmpty()) {
                    this.f87698b = false;
                    callVideoAdClosed();
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        Object obj;
        try {
            if (map2.containsKey(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK)) {
                this.f87700d = map2.get(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK).equals("1");
            }
            if (this.f87697a == null) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示!"));
                return;
            }
            if (getBiddingType() == 1 && (obj = map2.get("eCpm")) != null) {
                this.f87697a.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
            }
            this.f87698b = true;
            this.f87699c.clear();
            this.f87697a.showRewardVideoAd(activity);
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }
}
