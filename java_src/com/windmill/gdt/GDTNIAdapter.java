package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.widget.InterstitialViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GDTNIAdapter extends WMCustomInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    NativeUnifiedAD f86034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NativeUnifiedADData f86035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f86036c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f86037d = false;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        c cVar = this.f86036c;
        if (cVar != null) {
            cVar.destroy();
            this.f86036c = null;
        }
        this.f86037d = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void gdtNoadNotify(String str, HashMap<String, Object> map) {
        GdtUtil.noAdReplace(str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86035b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        if (this.f86036c == null) {
            return null;
        }
        HashMap map = new HashMap();
        WMLogUtil.i(getClass().getSimpleName() + "------getMediaExtraOption " + this.f86035b.getExtraInfo());
        if (this.f86035b.getExtraInfo() != null && this.f86035b.getExtraInfo().get("request_id") != null) {
            map.put("request_id", this.f86035b.getExtraInfo().get("request_id").toString());
        }
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public String getS2sResultUrl(boolean z10, String str, HashMap<String, String> map) {
        return !TextUtils.isEmpty(str) ? GdtUtil.s2sMacroReplace(str, GDTAdapterProxy.castBiddingInfo(z10, map)) : super.getS2sResultUrl(z10, str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f86037d || this.f86035b == null || this.f86036c == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            this.f86037d = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is null"));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + "----loadAd " + str);
            NativeADUnifiedListener nativeADUnifiedListener = new NativeADUnifiedListener() { // from class: com.windmill.gdt.GDTNIAdapter.1
                @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
                public final void onADLoaded(List<NativeUnifiedADData> list) {
                    SigmobLog.i(GDTNIAdapter.this.getClass().getSimpleName() + " onADLoad()");
                    if (list == null || list.isEmpty()) {
                        GDTNIAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                        return;
                    }
                    GDTNIAdapter.a(GDTNIAdapter.this);
                    GDTNIAdapter.this.f86035b = list.get(0);
                    GDTNIAdapter gDTNIAdapter = GDTNIAdapter.this;
                    gDTNIAdapter.f86036c = new c(gDTNIAdapter.f86035b, GDTNIAdapter.this.getChannelId(), map2);
                    if (GDTNIAdapter.this.getBiddingType() == 1) {
                        GDTNIAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(GDTNIAdapter.this.f86035b.getECPM())));
                    }
                    GDTNIAdapter.this.callLoadSuccess(list);
                }

                @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
                public final void onNoAD(AdError adError) {
                    SigmobLog.i(GDTNIAdapter.this.getClass().getSimpleName() + " onNoAD " + adError.getErrorCode() + ":" + adError.getErrorMsg());
                    GDTNIAdapter.this.callLoadFail(new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg()));
                }
            };
            this.f86034a = getBiddingType() == 0 ? new NativeUnifiedAD(context, str, nativeADUnifiedListener, getHbResponseStr()) : new NativeUnifiedAD(context, str, nativeADUnifiedListener);
            NativeUnifiedAD nativeUnifiedAD = this.f86034a;
            Object obj = map2.get(WMConstants.MIN_VIDEO_DURATION);
            Object obj2 = map2.get(WMConstants.MAX_VIDEO_DURATION);
            if (!TextUtils.isEmpty((CharSequence) obj)) {
                try {
                    int iIntValue = WMBidUtil.parseInt(obj).intValue();
                    if (iIntValue >= 5) {
                        nativeUnifiedAD.setMinVideoDuration(iIntValue);
                    }
                } catch (Exception unused) {
                    nativeUnifiedAD.setMinVideoDuration(5);
                }
            }
            if (!TextUtils.isEmpty((CharSequence) obj2)) {
                try {
                    int iIntValue2 = WMBidUtil.parseInt(obj2).intValue();
                    if (iIntValue2 <= 60) {
                        nativeUnifiedAD.setMaxVideoDuration(iIntValue2);
                    }
                } catch (Exception unused2) {
                    nativeUnifiedAD.setMaxVideoDuration(60);
                }
            }
            LoadAdParams loadAdParams = GdtUtil.getLoadAdParams(getClass(), map2);
            if (loadAdParams != null) {
                this.f86034a.loadData(1, loadAdParams);
            } else {
                this.f86034a.loadData(1);
            }
        } catch (Exception e10) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e10.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        GdtNotifyBiddingResult.notifyNativeBiddingResult(z10, map, this.f86035b, this);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onResume(Activity activity) {
        c cVar = this.f86036c;
        if (cVar != null) {
            cVar.a(activity);
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            SigmobLog.i(getClass().getSimpleName() + " showAd");
            if (this.f86035b == null || this.f86036c == null || !this.f86037d) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                int biddingType = getBiddingType();
                if (biddingType == 0 || biddingType == 1) {
                    try {
                        Object obj = map2.get("eCpm");
                        if (obj != null) {
                            this.f86035b.setBidECPM(WMBidUtil.parseInt(obj).intValue());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                InterstitialViewManager interstitialViewManager = new InterstitialViewManager(activity, this.f86036c, map2, new ViewInteractionListener() { // from class: com.windmill.gdt.GDTNIAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        GDTNIAdapter.this.callVideoAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        GDTNIAdapter.this.callVideoAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        GDTNIAdapter.this.callVideoAdShow();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        GDTNIAdapter.this.callVideoAdPlayError(wMAdapterError);
                    }
                });
                this.f86036c.setDownloadListener(new WMNativeAdData.AppDownloadListener() { // from class: com.windmill.gdt.GDTNIAdapter.3

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private boolean f86043b = false;

                    @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                    public final void onDownloadActive(long j10, long j11, String str, String str2) {
                        if (this.f86043b) {
                            return;
                        }
                        this.f86043b = true;
                        GDTNIAdapter.this.callVideoAdClickDownload();
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
            this.f86037d = false;
        } catch (Exception e11) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e11.getMessage()));
        }
    }

    static /* synthetic */ boolean a(GDTNIAdapter gDTNIAdapter) {
        gDTNIAdapter.f86037d = true;
        return true;
    }
}
