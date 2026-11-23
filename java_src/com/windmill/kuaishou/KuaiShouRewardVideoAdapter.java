package com.windmill.kuaishou;

import android.app.Activity;
import android.content.Context;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.widgets.BaseVideoView;
import com.kuaishou.weapon.p0.t;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsRewardVideoAd;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsVideoPlayConfig;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomRewardAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class KuaiShouRewardVideoAdapter extends WMCustomRewardAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private KsRewardVideoAd f86404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f86405b = KuaiShouRewardVideoAdapter.class.getSimpleName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f86406c = false;

    static /* synthetic */ boolean c(KuaiShouRewardVideoAdapter kuaiShouRewardVideoAdapter) {
        kuaiShouRewardVideoAdapter.f86406c = false;
        return false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        if (this.f86404a != null) {
            this.f86404a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86404a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        KsRewardVideoAd ksRewardVideoAd = this.f86404a;
        if (ksRewardVideoAd != null) {
            return KuaiShouAdapterProxy.getRequestId(ksRewardVideoAd.getMediaExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            KsRewardVideoAd ksRewardVideoAd = this.f86404a;
            if (ksRewardVideoAd != null) {
                return ksRewardVideoAd.isAdEnable();
            }
            return false;
        } catch (Throwable th) {
            SigmobLog.e("ks isReady fail:", th);
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            final String strSubstring = (String) map2.get("placementId");
            if (strSubstring.endsWith("L") || strSubstring.endsWith(t.f74879d)) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
            }
            SigmobLog.i(this.f86405b + "----loadAd:---" + hashCode());
            KsScene.Builder builder = new KsScene.Builder(WMBidUtil.parseLong(strSubstring).longValue());
            try {
                HashMap map3 = new HashMap();
                map3.put("thirdUserId", getUserId());
                if (map != null) {
                    String strSerialize = JSONSerializer.Serialize(map);
                    SigmobLog.i(getClass().getSimpleName() + " json " + strSerialize);
                    map3.put(BaseVideoView.COMPONENT_EXTRA_DATA, strSerialize);
                }
                builder.rewardCallbackExtraData(map3);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (getBiddingType() == 0) {
                builder.setBidResponseV2(getHbResponseStr());
            }
            KsAdSDK.getLoadManager().loadRewardVideoAd(builder.build(), new KsLoadManager.RewardVideoAdListener() { // from class: com.windmill.kuaishou.KuaiShouRewardVideoAdapter.1
                @Override // com.kwad.sdk.api.KsLoadManager.RewardVideoAdListener
                public final void onError(int i10, String str) {
                    SigmobLog.i(KuaiShouRewardVideoAdapter.this.getClass().getName() + " onError:" + i10 + ":" + str);
                    KuaiShouRewardVideoAdapter.this.callLoadFail(new WMAdapterError(i10, str));
                }

                @Override // com.kwad.sdk.api.KsLoadManager.RewardVideoAdListener
                public final void onRewardVideoAdLoad(List<KsRewardVideoAd> list) {
                    SigmobLog.i(KuaiShouRewardVideoAdapter.this.getClass().getName() + " onRewardVideoAdLoad");
                    if (list != null && list.size() > 0) {
                        KuaiShouRewardVideoAdapter.this.f86404a = list.get(0);
                        KuaiShouRewardVideoAdapter.this.callLoadSuccess(list);
                    } else {
                        KuaiShouRewardVideoAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "adList is null for codeId " + strSubstring));
                    }
                }

                @Override // com.kwad.sdk.api.KsLoadManager.RewardVideoAdListener
                public final void onRewardVideoResult(List<KsRewardVideoAd> list) {
                    SigmobLog.i(KuaiShouRewardVideoAdapter.this.getClass().getSimpleName() + " onRewardVideoResult()");
                    if (list != null && list.size() > 0) {
                        KuaiShouRewardVideoAdapter.this.f86404a = list.get(0);
                    }
                    if (KuaiShouRewardVideoAdapter.this.f86404a == null || KuaiShouRewardVideoAdapter.this.getBiddingType() != 1) {
                        return;
                    }
                    KuaiShouRewardVideoAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(KuaiShouRewardVideoAdapter.this.f86404a.getECPM())));
                }
            });
        } catch (Throwable th) {
            SigmobLog.e("ks loadAd fail:", th);
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f86404a != null) {
                map.put("isKS", "0");
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? KuaiShouAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : KuaiShouAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (!z10) {
                    Object obj = mapCastBiddingInfo.get("adExposureFailedReasonCode");
                    int iIntValue = obj != null ? ((Integer) obj).intValue() : 2;
                    AdExposureFailedReason adExposureFailedReason = (AdExposureFailedReason) mapCastBiddingInfo.get("adExposureFailedReason");
                    SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----4: winEcpm " + adExposureFailedReason.winEcpm + " " + adExposureFailedReason.adUserName);
                    this.f86404a.reportAdExposureFailed(iIntValue, adExposureFailedReason);
                    return;
                }
                Object obj2 = mapCastBiddingInfo.get("bidEcpm");
                Object obj3 = mapCastBiddingInfo.get("lossBidEcpm");
                if (obj2 == null || obj3 == null) {
                    return;
                }
                SigmobLog.i(getClass().getSimpleName() + " ---notifyBiddingResult:" + obj2 + ":" + obj3);
                this.f86404a.setBidEcpm(WMBidUtil.parseLong(obj2).longValue(), WMBidUtil.parseLong(obj3).longValue());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            this.f86406c = false;
            KsRewardVideoAd ksRewardVideoAd = this.f86404a;
            if (ksRewardVideoAd == null || !ksRewardVideoAd.isAdEnable()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示!"));
            } else {
                this.f86404a.setRewardAdInteractionListener(new KsRewardVideoAd.RewardAdInteractionListener() { // from class: com.windmill.kuaishou.KuaiShouRewardVideoAdapter.2
                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onAdClicked() {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.getClass().getName() + " onAdClicked");
                        KuaiShouRewardVideoAdapter.this.callVideoAdClick();
                    }

                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onExtraRewardVerify(int i10) {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.f86405b + "---onExtraRewardVerify");
                    }

                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onPageDismiss() {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.f86405b + "---onPageDismiss");
                        KuaiShouRewardVideoAdapter.c(KuaiShouRewardVideoAdapter.this);
                        KuaiShouRewardVideoAdapter.this.callVideoAdClosed();
                    }

                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onRewardStepVerify(int i10, int i11) {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.f86405b + "---onRewardStepVerify");
                    }

                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onRewardVerify() {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.f86405b + "---onRewardVerify " + KuaiShouRewardVideoAdapter.this.f86406c);
                        KuaiShouRewardVideoAdapter.this.callVideoAdReward(true);
                    }

                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onVideoPlayEnd() {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.f86405b + "---onVideoPlayEnd");
                        KuaiShouRewardVideoAdapter.this.callVideoAdPlayComplete();
                    }

                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onVideoPlayError(int i10, int i11) {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.f86405b + "---onVideoPlayError:" + i10 + ":" + i11);
                        KuaiShouRewardVideoAdapter.this.callVideoAdPlayError(new WMAdapterError(i10, String.valueOf(i11)));
                    }

                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onVideoPlayStart() {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.f86405b + "----onVideoPlayStart");
                        KuaiShouRewardVideoAdapter.this.callVideoAdShow();
                    }

                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onVideoSkipToEnd(long j10) {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.f86405b + "---onVideoSkipToEnd");
                        KuaiShouRewardVideoAdapter.this.callVideoAdSkipped();
                    }

                    @Override // com.kwad.sdk.api.KsRewardVideoAd.RewardAdInteractionListener
                    public final void onRewardVerify(Map<String, Object> map3) {
                        SigmobLog.i(KuaiShouRewardVideoAdapter.this.f86405b + "---onRewardVerify map  " + KuaiShouRewardVideoAdapter.this.f86406c);
                    }
                });
                showAd(this.f86404a, activity, map2);
            }
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }

    public void showAd(KsRewardVideoAd ksRewardVideoAd, Activity activity, Map<String, Object> map) {
        Object obj;
        try {
            KsVideoPlayConfig.Builder builder = new KsVideoPlayConfig.Builder();
            WMLogUtil.i(this.f86405b + "--------showAd:  " + this.f86406c);
            if (map != null) {
                Object obj2 = map.get(WMConstants.PLAY_DIRECTION);
                if (obj2 != null && obj2.equals("1")) {
                    builder.showLandscape(true);
                }
                Object obj3 = map.get(WMConstants.AUTO_PLAY_MUTED);
                if (obj3 == null || !obj3.equals("0")) {
                    builder.videoSoundEnable(false);
                } else {
                    builder.videoSoundEnable(true);
                }
                try {
                    if (getBiddingType() == 0 && (obj = map.get("eCpm")) != null) {
                        ksRewardVideoAd.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), 0L);
                    }
                } catch (Exception unused) {
                }
            }
            ksRewardVideoAd.showRewardVideoAd(activity, builder.build());
        } catch (Throwable th) {
            SigmobLog.e("ks showAd fail:", th);
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }
}
