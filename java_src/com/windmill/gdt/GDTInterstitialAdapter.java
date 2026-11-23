package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.qq.e.ads.ADActivity;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GDTInterstitialAdapter extends WMCustomInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f86008a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private UnifiedInterstitialAD f86013f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f86014g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f86009b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f86010c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f86011d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f86012e = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<WeakReference<Activity>> f86015h = new ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f86016i = "GDTInterstitialAdapter";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f86017j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final DownloadConfirmListener f86018k = new DownloadConfirmListener() { // from class: com.windmill.gdt.i
        @Override // com.qq.e.comm.compliance.DownloadConfirmListener
        public final void onDownloadConfirm(Activity activity, int i10, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
            this.f86143b.a(activity, i10, str, downloadConfirmCallBack);
        }
    };

    static /* synthetic */ boolean d(GDTInterstitialAdapter gDTInterstitialAdapter) {
        gDTInterstitialAdapter.f86010c = false;
        return false;
    }

    static /* synthetic */ boolean e(GDTInterstitialAdapter gDTInterstitialAdapter) {
        gDTInterstitialAdapter.f86011d = true;
        return true;
    }

    static /* synthetic */ boolean i(GDTInterstitialAdapter gDTInterstitialAdapter) {
        gDTInterstitialAdapter.f86017j = true;
        return true;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        UnifiedInterstitialAD unifiedInterstitialAD = this.f86013f;
        if (unifiedInterstitialAD != null) {
            unifiedInterstitialAD.close();
            this.f86013f.destroy();
            this.f86013f = null;
            this.f86011d = false;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void gdtNoadNotify(String str, HashMap<String, Object> map) {
        GdtUtil.noAdReplace(str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86013f;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        if (this.f86013f == null) {
            return null;
        }
        HashMap map = new HashMap();
        WMLogUtil.i(this.f86016i + "------getMediaExtraOption " + this.f86013f.getExtraInfo());
        if (this.f86013f.getExtraInfo() != null && this.f86013f.getExtraInfo().get("request_id") != null) {
            map.put("request_id", this.f86013f.getExtraInfo().get("request_id").toString());
        }
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public String getS2sResultUrl(boolean z10, String str, HashMap<String, String> map) {
        WMLogUtil.i(getClass().getSimpleName() + "------getS2sResultUrl " + map);
        return !TextUtils.isEmpty(str) ? GdtUtil.s2sMacroReplace(str, GDTAdapterProxy.castBiddingInfo(z10, map)) : super.getS2sResultUrl(z10, str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            UnifiedInterstitialAD unifiedInterstitialAD = this.f86013f;
            return unifiedInterstitialAD != null && this.f86011d && unifiedInterstitialAD.isValid();
        } catch (Throwable th) {
            SigmobLog.e("GDT isReady error", th);
        }
        return false;
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86011d = false;
            this.f86010c = false;
            this.f86012e = false;
            this.f86017j = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is null "));
                return;
            }
            if (!(context instanceof Activity)) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "context is not activity "));
                return;
            }
            String str = (String) map2.get("placementId");
            SigmobLog.i(this.f86016i + "---loadAd--pos_id: " + str);
            UnifiedInterstitialADListener unifiedInterstitialADListener = new UnifiedInterstitialADListener() { // from class: com.windmill.gdt.GDTInterstitialAdapter.1
                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onADClicked() {
                    SigmobLog.i(GDTInterstitialAdapter.this.getClass().getSimpleName() + " onADClicked()");
                    GDTInterstitialAdapter.this.callVideoAdClick();
                }

                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onADClosed() {
                    SigmobLog.i(GDTInterstitialAdapter.this.getClass().getSimpleName() + " onADClosed()");
                    if (GDTInterstitialAdapter.this.f86010c) {
                        GDTInterstitialAdapter.d(GDTInterstitialAdapter.this);
                        GDTInterstitialAdapter.this.callVideoAdClosed();
                    }
                }

                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onADExposure() {
                    SigmobLog.i(GDTInterstitialAdapter.this.getClass().getSimpleName() + " onADExposure()");
                    GDTInterstitialAdapter.this.callVideoAdShow();
                }

                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onADLeftApplication() {
                    SigmobLog.i(GDTInterstitialAdapter.this.getClass().getSimpleName() + " onADLeftApplication()");
                }

                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onADOpened() {
                    SigmobLog.i(GDTInterstitialAdapter.this.getClass().getSimpleName() + " onADOpened()");
                }

                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onADReceive() {
                    if (GDTInterstitialAdapter.this.f86013f == null || GDTInterstitialAdapter.this.getBiddingType() != 1) {
                        return;
                    }
                    int ecpm = GDTInterstitialAdapter.this.f86013f.getECPM();
                    SigmobLog.i(GDTInterstitialAdapter.this.f86016i + "---onADReceive() eCpm: " + ecpm);
                    GDTInterstitialAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(ecpm)));
                }

                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onNoAD(AdError adError) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(GDTInterstitialAdapter.this.f86016i);
                    sb2.append("---onNoAD() ");
                    sb2.append(GDTInterstitialAdapter.this.getServerExtra() != null ? GDTInterstitialAdapter.this.getServerExtra().get("placementId") : "");
                    sb2.append(" ");
                    sb2.append(adError.getErrorMsg());
                    SigmobLog.i(sb2.toString());
                    SigmobLog.i(GDTInterstitialAdapter.this.getClass().getSimpleName() + " onNoAD " + adError.getErrorCode() + ":" + adError.getErrorMsg());
                    WMAdapterError wMAdapterError = new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg());
                    if (GDTInterstitialAdapter.this.f86011d) {
                        GDTInterstitialAdapter.this.callVideoAdPlayError(wMAdapterError);
                    } else {
                        GDTInterstitialAdapter.i(GDTInterstitialAdapter.this);
                        GDTInterstitialAdapter.this.callLoadFail(wMAdapterError);
                    }
                }

                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onRenderFail() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(GDTInterstitialAdapter.this.f86016i);
                    sb2.append("---onRenderFail() ");
                    sb2.append(GDTInterstitialAdapter.this.getServerExtra() != null ? GDTInterstitialAdapter.this.getServerExtra().get("placementId") : "");
                    SigmobLog.i(sb2.toString());
                    if (GDTInterstitialAdapter.this.f86011d) {
                        GDTInterstitialAdapter.this.callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "onRenderFail"));
                    } else {
                        GDTInterstitialAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onRenderFail"));
                    }
                }

                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onRenderSuccess() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(GDTInterstitialAdapter.this.f86016i);
                    sb2.append("---onRenderSuccess() ");
                    sb2.append(GDTInterstitialAdapter.this.getServerExtra() != null ? GDTInterstitialAdapter.this.getServerExtra().get("placementId") : "");
                    SigmobLog.i(sb2.toString());
                    GDTInterstitialAdapter.e(GDTInterstitialAdapter.this);
                    if (GDTInterstitialAdapter.this.f86013f != null && GDTInterstitialAdapter.this.f86012e) {
                        GDTInterstitialAdapter.this.f86013f.setDownloadConfirmListener(GDTInterstitialAdapter.this.f86018k);
                    }
                    GDTInterstitialAdapter gDTInterstitialAdapter = GDTInterstitialAdapter.this;
                    gDTInterstitialAdapter.callLoadSuccess(gDTInterstitialAdapter.f86013f);
                }

                @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
                public final void onVideoCached() {
                    SigmobLog.i(GDTInterstitialAdapter.this.getClass().getSimpleName() + " onVideoCached()");
                }
            };
            this.f86013f = getBiddingType() == 0 ? new UnifiedInterstitialAD((Activity) context, str, unifiedInterstitialADListener, null, getHbResponseStr()) : new UnifiedInterstitialAD((Activity) context, str, unifiedInterstitialADListener, null);
            LoadAdParams loadAdParams = GdtUtil.getLoadAdParams(getClass(), map2);
            if (loadAdParams != null) {
                this.f86013f.setLoadAdParams(loadAdParams);
            }
            UnifiedInterstitialAD unifiedInterstitialAD = this.f86013f;
            Object obj = map2.get("showDownloadDialog");
            if (obj != null && obj.equals("1")) {
                this.f86012e = true;
            }
            Object obj2 = map2.get(WMConstants.AUTO_PLAY_POLICY);
            Object obj3 = map2.get(WMConstants.AUTO_PLAY_MUTED);
            Object obj4 = map2.get(WMConstants.DETAIL_PAGE_MUTED);
            VideoOption.Builder builder = new VideoOption.Builder();
            if (!TextUtils.isEmpty((CharSequence) obj2)) {
                if (obj2.equals(t7.a.f97141e)) {
                    builder.setAutoPlayPolicy(0);
                } else if (obj2.equals("ALWAYS")) {
                    builder.setAutoPlayPolicy(1);
                } else if (obj2.equals("NEVER")) {
                    builder.setAutoPlayPolicy(2);
                }
            }
            if (!TextUtils.isEmpty((CharSequence) obj3)) {
                if (obj3.equals("1")) {
                    builder.setAutoPlayMuted(true);
                } else if (obj3.equals("0")) {
                    builder.setAutoPlayMuted(false);
                }
            }
            if (!TextUtils.isEmpty((CharSequence) obj4)) {
                if (obj4.equals("1")) {
                    builder.setDetailPageMuted(true);
                } else if (obj4.equals("0")) {
                    builder.setDetailPageMuted(false);
                }
            }
            unifiedInterstitialAD.setVideoOption(builder.build());
            Object obj5 = map2.get(WMConstants.MIN_VIDEO_DURATION);
            Object obj6 = map2.get(WMConstants.MAX_VIDEO_DURATION);
            if (!TextUtils.isEmpty((CharSequence) obj5)) {
                try {
                    int iIntValue = WMBidUtil.parseInt(obj5).intValue();
                    if (iIntValue >= 5) {
                        unifiedInterstitialAD.setMinVideoDuration(iIntValue);
                    }
                } catch (Exception unused) {
                    unifiedInterstitialAD.setMinVideoDuration(5);
                }
            }
            if (!TextUtils.isEmpty((CharSequence) obj6)) {
                try {
                    int iIntValue2 = WMBidUtil.parseInt(obj6).intValue();
                    if (iIntValue2 <= 60) {
                        unifiedInterstitialAD.setMaxVideoDuration(iIntValue2);
                    }
                } catch (Exception unused2) {
                    unifiedInterstitialAD.setMaxVideoDuration(60);
                }
            }
            WMAdapterError wMAdapterErrorUpdateStatus = updateStatus(true);
            if (wMAdapterErrorUpdateStatus != null) {
                callLoadFail(wMAdapterErrorUpdateStatus);
            } else if (this.f86008a) {
                this.f86013f.loadFullScreenAD();
            } else {
                this.f86013f.loadAD();
            }
        } catch (Throwable th) {
            SigmobLog.i(getClass().getSimpleName() + " loadAd catch throwable " + th.getMessage());
            int errorCode = WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode();
            StringBuilder sb2 = new StringBuilder("loadAd catch throwable ");
            sb2.append(th.getMessage());
            callLoadFail(new WMAdapterError(errorCode, sb2.toString()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        GdtNotifyBiddingResult.notifyBiddingResult(z10, map, this.f86013f, this);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
        SigmobLog.e(getClass().getSimpleName() + " GDT onCreate activity:" + activity.getClass().getName());
        String name = activity.getClass().getName();
        if (this.f86014g && this.f86010c && !getCloseToOut() && (activity instanceof ADActivity) && name.startsWith("com.qq.e.ads")) {
            SigmobLog.e(getClass().getSimpleName() + " onCreate " + activity.getClass().getName() + " id " + activity.hashCode());
            this.f86015h.add(new WeakReference<>(activity));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
        try {
            String name = activity.getClass().getName();
            if (this.f86014g && (activity instanceof ADActivity) && name.startsWith("com.qq.e.ads")) {
                SigmobLog.e(getClass().getSimpleName() + " GDT onDestroy activity:" + activity.getClass().getSimpleName() + "-" + this.f86009b);
                Iterator<WeakReference<Activity>> it2 = this.f86015h.iterator();
                while (it2.hasNext()) {
                    if (activity.equals(it2.next().get())) {
                        SigmobLog.e(getClass().getSimpleName() + " remove " + activity.getClass().getName() + " id " + activity.hashCode());
                        it2.remove();
                        break;
                    }
                }
                if (this.f86010c && this.f86015h.isEmpty()) {
                    this.f86010c = false;
                    callVideoAdClosed();
                    this.f86014g = false;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            if (map2.containsKey(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK)) {
                this.f86014g = map2.get(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK).equals("1");
            }
            if (!this.f86011d || this.f86013f == null) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                WMAdapterError wMAdapterErrorUpdateStatus = updateStatus(false);
                if (wMAdapterErrorUpdateStatus != null) {
                    callVideoAdPlayError(wMAdapterErrorUpdateStatus);
                    return;
                }
                int biddingType = getBiddingType();
                if (biddingType == 0 || biddingType == 1) {
                    try {
                        Object obj = map2.get("eCpm");
                        if (obj != null) {
                            this.f86013f.setBidECPM(WMBidUtil.parseInt(obj).intValue());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                this.f86010c = true;
                if (this.f86008a) {
                    this.f86013f.showFullScreenAD(activity);
                } else {
                    this.f86013f.show(activity);
                }
            }
            this.f86011d = false;
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }

    public WMAdapterError updateStatus(boolean z10) {
        int interstitialAdType = getInterstitialAdType();
        SigmobLog.i(getClass().getSimpleName() + " interstitialAdType: " + interstitialAdType);
        if (interstitialAdType == -1) {
            return z10 ? new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "can not get gdt adType") : new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "can not get gdt adType");
        }
        this.f86008a = interstitialAdType == 1;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity, int i10, String str, final DownloadConfirmCallBack downloadConfirmCallBack) {
        GDTAdapterProxy.DOWNLOAD_CONFIRM_LISTENER.onDownloadConfirm(activity, i10, str, new DownloadConfirmCallBack() { // from class: com.windmill.gdt.GDTInterstitialAdapter.2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private boolean f86022c = false;

            @Override // com.qq.e.comm.compliance.DownloadConfirmCallBack
            public final void onCancel() {
                DownloadConfirmCallBack downloadConfirmCallBack2 = downloadConfirmCallBack;
                if (downloadConfirmCallBack2 != null) {
                    downloadConfirmCallBack2.onCancel();
                }
            }

            @Override // com.qq.e.comm.compliance.DownloadConfirmCallBack
            public final void onConfirm() {
                if (!this.f86022c) {
                    this.f86022c = true;
                    GDTInterstitialAdapter.this.callVideoAdClickDownload();
                }
                DownloadConfirmCallBack downloadConfirmCallBack2 = downloadConfirmCallBack;
                if (downloadConfirmCallBack2 != null) {
                    downloadConfirmCallBack2.onConfirm();
                }
            }
        });
    }
}
