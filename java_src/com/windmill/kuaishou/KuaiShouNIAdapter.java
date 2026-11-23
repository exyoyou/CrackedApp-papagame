package com.windmill.kuaishou;

import android.app.Activity;
import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsNativeAd;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.api.model.NativeAdExtraData;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.widget.InterstitialViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class KuaiShouNIAdapter extends WMCustomInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private KsNativeAd f86381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f86382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f86383c = false;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        f fVar = this.f86382b;
        if (fVar != null) {
            fVar.destroy();
            this.f86382b = null;
        }
        this.f86383c = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86381a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        KsNativeAd ksNativeAd;
        f fVar = this.f86382b;
        if (fVar == null || (ksNativeAd = fVar.f86442a) == null) {
            return null;
        }
        return KuaiShouAdapterProxy.getRequestId(ksNativeAd.getMediaExtraInfo());
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f86383c || this.f86381a == null || this.f86382b == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(final Context context, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            this.f86383c = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd " + str);
            KsScene.Builder builderAdNum = new KsScene.Builder(WMBidUtil.parseLong(str).longValue()).adNum(1);
            if (getBiddingType() == 0) {
                builderAdNum.setBidResponseV2(getHbResponseStr());
            }
            NativeAdExtraData nativeAdExtraData = new NativeAdExtraData();
            nativeAdExtraData.setEnableShake(true);
            builderAdNum.setNativeAdExtraData(nativeAdExtraData);
            KsAdSDK.getLoadManager().loadNativeAd(builderAdNum.build(), new KsLoadManager.NativeAdListener() { // from class: com.windmill.kuaishou.KuaiShouNIAdapter.1
                @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(this.getClass().getSimpleName() + " onError " + i10 + ":" + str2);
                    KuaiShouNIAdapter.this.callLoadFail(new WMAdapterError(i10, str2));
                }

                @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
                public final void onNativeAdLoad(List<KsNativeAd> list) {
                    SigmobLog.i(this.getClass().getSimpleName() + " onNativeAdLoad()");
                    if (list == null || list.isEmpty()) {
                        KuaiShouNIAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                        return;
                    }
                    KuaiShouNIAdapter.a(KuaiShouNIAdapter.this);
                    KuaiShouNIAdapter.this.f86381a = list.get(0);
                    KuaiShouNIAdapter kuaiShouNIAdapter = KuaiShouNIAdapter.this;
                    kuaiShouNIAdapter.f86382b = new f(context, kuaiShouNIAdapter.f86381a, this.getChannelId(), map2);
                    if (KuaiShouNIAdapter.this.getBiddingType() == 1) {
                        KuaiShouNIAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(KuaiShouNIAdapter.this.f86381a.getECPM())));
                    }
                    KuaiShouNIAdapter.this.callLoadSuccess(list);
                }
            });
        } catch (Exception e10) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e10.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + "notifyBiddingResult:" + z10 + ":" + str);
        if (this.f86381a != null) {
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
                this.f86381a.reportAdExposureFailed(obj != null ? ((Integer) obj).intValue() : 2, (AdExposureFailedReason) mapCastBiddingInfo.get("adExposureFailedReason"));
                return;
            }
            Object obj2 = mapCastBiddingInfo.get("bidEcpm");
            Object obj3 = mapCastBiddingInfo.get("lossBidEcpm");
            if (obj2 == null || obj3 == null) {
                return;
            }
            SigmobLog.i(getClass().getSimpleName() + " ---notifyBiddingResult:" + obj2 + ":" + obj3);
            this.f86381a.setBidEcpm(WMBidUtil.parseLong(obj2).longValue(), WMBidUtil.parseLong(obj3).longValue());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        Object obj;
        try {
            SigmobLog.i(getClass().getSimpleName() + " showAd");
            if (this.f86381a == null || this.f86382b == null || !this.f86383c) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                try {
                    if (getBiddingType() == 0 && (obj = map2.get("eCpm")) != null) {
                        this.f86381a.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), 0L);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                InterstitialViewManager interstitialViewManager = new InterstitialViewManager(activity, this.f86382b, map2, new ViewInteractionListener() { // from class: com.windmill.kuaishou.KuaiShouNIAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        KuaiShouNIAdapter.this.callVideoAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        KuaiShouNIAdapter.this.callVideoAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        KuaiShouNIAdapter.this.callVideoAdShow();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        KuaiShouNIAdapter.this.callVideoAdPlayError(wMAdapterError);
                    }
                });
                this.f86382b.setDownloadListener(new WMNativeAdData.AppDownloadListener() { // from class: com.windmill.kuaishou.KuaiShouNIAdapter.3

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private boolean f86391b = false;

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadActive(long j10, long j11, String str, String str2) {
                        if (this.f86391b) {
                            return;
                        }
                        this.f86391b = true;
                        KuaiShouNIAdapter.this.callVideoAdClickDownload();
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadFailed(long j10, long j11, String str, String str2) {
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadFinished(long j10, String str, String str2) {
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadPaused(long j10, long j11, String str, String str2) {
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onIdle() {
                    }

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onInstalled(String str, String str2) {
                    }
                });
                interstitialViewManager.setTips(getTips());
                interstitialViewManager.show();
            }
            this.f86383c = false;
        } catch (Exception e11) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e11.getMessage()));
        }
    }

    static /* synthetic */ boolean a(KuaiShouNIAdapter kuaiShouNIAdapter) {
        kuaiShouNIAdapter.f86383c = true;
        return true;
    }
}
