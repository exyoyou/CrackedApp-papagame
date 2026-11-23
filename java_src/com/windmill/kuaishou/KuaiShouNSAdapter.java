package com.windmill.kuaishou;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsNativeAd;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.api.model.NativeAdExtraData;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.SplashViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class KuaiShouNSAdapter extends WMCustomSplashAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f86392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f86393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private KsNativeAd f86394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f86395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f86396e = false;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        f fVar = this.f86395d;
        if (fVar != null) {
            fVar.destroy();
            this.f86395d = null;
        }
        this.f86396e = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86394c;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        KsNativeAd ksNativeAd;
        f fVar = this.f86395d;
        if (fVar == null || (ksNativeAd = fVar.f86442a) == null) {
            return null;
        }
        return KuaiShouAdapterProxy.getRequestId(ksNativeAd.getMediaExtraInfo());
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f86396e || this.f86394c == null || this.f86395d == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(final Context context, ViewGroup viewGroup, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            this.f86396e = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd " + str);
            this.f86392a = context.getResources().getDisplayMetrics().widthPixels;
            this.f86393b = context.getResources().getDisplayMetrics().heightPixels;
            try {
                Object obj = map.get(WMConstants.AD_WIDTH);
                if (obj != null && ((Integer) obj).intValue() != 0) {
                    this.f86392a = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                }
                Object obj2 = map.get(WMConstants.AD_HEIGHT);
                if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                    this.f86393b = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            KsScene.Builder builderAdNum = new KsScene.Builder(WMBidUtil.parseLong(str).longValue()).adNum(1);
            if (getBiddingType() == 0) {
                builderAdNum.setBidResponseV2(getHbResponseStr());
            }
            NativeAdExtraData nativeAdExtraData = new NativeAdExtraData();
            nativeAdExtraData.setEnableShake(true);
            builderAdNum.setNativeAdExtraData(nativeAdExtraData);
            KsAdSDK.getLoadManager().loadNativeAd(builderAdNum.build(), new KsLoadManager.NativeAdListener() { // from class: com.windmill.kuaishou.KuaiShouNSAdapter.1
                @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(this.getClass().getSimpleName() + " onError " + i10 + ":" + str2);
                    KuaiShouNSAdapter.this.callLoadFail(new WMAdapterError(i10, str2));
                }

                @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
                public final void onNativeAdLoad(List<KsNativeAd> list) {
                    SigmobLog.i(this.getClass().getSimpleName() + " onNativeAdLoad()");
                    if (list == null || list.isEmpty()) {
                        KuaiShouNSAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                        return;
                    }
                    KuaiShouNSAdapter.a(KuaiShouNSAdapter.this);
                    KuaiShouNSAdapter.this.f86394c = list.get(0);
                    KuaiShouNSAdapter kuaiShouNSAdapter = KuaiShouNSAdapter.this;
                    kuaiShouNSAdapter.f86395d = new f(context, kuaiShouNSAdapter.f86394c, this.getChannelId(), map2);
                    if (KuaiShouNSAdapter.this.getBiddingType() == 1) {
                        KuaiShouNSAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(KuaiShouNSAdapter.this.f86394c.getECPM())));
                    }
                    KuaiShouNSAdapter.this.callLoadSuccess(list);
                }
            });
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + "notifyBiddingResult:" + z10 + ":" + str);
        if (this.f86394c != null) {
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
                this.f86394c.reportAdExposureFailed(obj != null ? ((Integer) obj).intValue() : 2, (AdExposureFailedReason) mapCastBiddingInfo.get("adExposureFailedReason"));
                return;
            }
            Object obj2 = mapCastBiddingInfo.get("bidEcpm");
            Object obj3 = mapCastBiddingInfo.get("lossBidEcpm");
            if (obj2 == null || obj3 == null) {
                return;
            }
            SigmobLog.i(getClass().getSimpleName() + " ---notifyBiddingResult:" + obj2 + ":" + obj3);
            this.f86394c.setBidEcpm(WMBidUtil.parseLong(obj2).longValue(), WMBidUtil.parseLong(obj3).longValue());
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        Object obj;
        try {
            SigmobLog.i(getClass().getSimpleName() + " showAd");
            if (this.f86394c == null || this.f86395d == null || !this.f86396e) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                try {
                    if (getBiddingType() == 0 && (obj = map.get("eCpm")) != null) {
                        this.f86394c.setBidEcpm(WMBidUtil.parseLong(obj).longValue(), 0L);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                new SplashViewManager(this.f86392a, this.f86393b, this.f86395d, map, new ViewInteractionListener() { // from class: com.windmill.kuaishou.KuaiShouNSAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        KuaiShouNSAdapter.this.callSplashAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        KuaiShouNSAdapter.this.callSplashAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        KuaiShouNSAdapter.this.callSplashAdShow();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        KuaiShouNSAdapter.this.callSplashAdShowError(wMAdapterError);
                    }
                }).show(viewGroup);
            }
            this.f86396e = false;
        } catch (Exception e11) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e11.getMessage()));
        }
    }

    static /* synthetic */ boolean a(KuaiShouNSAdapter kuaiShouNSAdapter) {
        kuaiShouNSAdapter.f86396e = true;
        return true;
    }
}
