package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
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
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.SplashViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GDTNSAdapter extends WMCustomSplashAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f86044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f86045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeUnifiedADData f86046c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f86047d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f86048e = false;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        c cVar = this.f86047d;
        if (cVar != null) {
            cVar.destroy();
            this.f86047d = null;
        }
        this.f86048e = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void gdtNoadNotify(String str, HashMap<String, Object> map) {
        GdtUtil.noAdReplace(str, map);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86046c;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        if (this.f86047d == null) {
            return null;
        }
        HashMap map = new HashMap();
        WMLogUtil.i(getClass().getSimpleName() + "------getMediaExtraOption " + this.f86046c.getExtraInfo());
        if (this.f86046c.getExtraInfo() != null && this.f86046c.getExtraInfo().get("request_id") != null) {
            map.put("request_id", this.f86046c.getExtraInfo().get("request_id").toString());
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
        return (!this.f86048e || this.f86046c == null || this.f86047d == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            this.f86048e = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd " + str);
            this.f86044a = context.getResources().getDisplayMetrics().widthPixels;
            this.f86045b = context.getResources().getDisplayMetrics().heightPixels;
            try {
                Object obj = map.get(WMConstants.AD_WIDTH);
                if (obj != null && ((Integer) obj).intValue() != 0) {
                    this.f86044a = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                }
                Object obj2 = map.get(WMConstants.AD_HEIGHT);
                if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                    this.f86045b = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            NativeADUnifiedListener nativeADUnifiedListener = new NativeADUnifiedListener() { // from class: com.windmill.gdt.GDTNSAdapter.1
                @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
                public final void onADLoaded(List<NativeUnifiedADData> list) {
                    SigmobLog.i(GDTNSAdapter.this.getClass().getSimpleName() + " onADLoad()");
                    if (list == null || list.isEmpty()) {
                        GDTNSAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                        return;
                    }
                    GDTNSAdapter.a(GDTNSAdapter.this);
                    GDTNSAdapter.this.f86046c = list.get(0);
                    GDTNSAdapter gDTNSAdapter = GDTNSAdapter.this;
                    gDTNSAdapter.f86047d = new c(gDTNSAdapter.f86046c, GDTNSAdapter.this.getChannelId(), map2);
                    if (GDTNSAdapter.this.getBiddingType() == 1) {
                        GDTNSAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(GDTNSAdapter.this.f86046c.getECPM())));
                    }
                    GDTNSAdapter.this.callLoadSuccess(list);
                }

                @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
                public final void onNoAD(AdError adError) {
                    SigmobLog.i(GDTNSAdapter.this.getClass().getSimpleName() + " onNoAD " + adError.getErrorCode() + ":" + adError.getErrorMsg());
                    GDTNSAdapter.this.callLoadFail(new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg()));
                }
            };
            NativeUnifiedAD nativeUnifiedAD = getBiddingType() == 0 ? new NativeUnifiedAD(context, str, nativeADUnifiedListener, getHbResponseStr()) : new NativeUnifiedAD(context, str, nativeADUnifiedListener);
            Object obj3 = map2.get(WMConstants.MIN_VIDEO_DURATION);
            Object obj4 = map2.get(WMConstants.MAX_VIDEO_DURATION);
            if (!TextUtils.isEmpty((CharSequence) obj3)) {
                try {
                    int iIntValue = WMBidUtil.parseInt(obj3).intValue();
                    if (iIntValue >= 5) {
                        nativeUnifiedAD.setMinVideoDuration(iIntValue);
                    }
                } catch (Exception unused) {
                    nativeUnifiedAD.setMinVideoDuration(5);
                }
            }
            if (!TextUtils.isEmpty((CharSequence) obj4)) {
                try {
                    int iIntValue2 = WMBidUtil.parseInt(obj4).intValue();
                    if (iIntValue2 <= 60) {
                        nativeUnifiedAD.setMaxVideoDuration(iIntValue2);
                    }
                } catch (Exception unused2) {
                    nativeUnifiedAD.setMaxVideoDuration(60);
                }
            }
            LoadAdParams loadAdParams = GdtUtil.getLoadAdParams(getClass(), map2);
            if (loadAdParams != null) {
                nativeUnifiedAD.loadData(1, loadAdParams);
            } else {
                nativeUnifiedAD.loadData(1);
            }
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        GdtNotifyBiddingResult.notifyNativeBiddingResult(z10, map, this.f86046c, this);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onResume(Activity activity) {
        c cVar = this.f86047d;
        if (cVar != null) {
            cVar.a(activity);
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        try {
            SigmobLog.i(getClass().getSimpleName() + " showAd");
            if (this.f86046c == null || this.f86047d == null || !this.f86048e) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                int biddingType = getBiddingType();
                if (biddingType == 0 || biddingType == 1) {
                    try {
                        Object obj = map.get("eCpm");
                        if (obj != null) {
                            this.f86046c.setBidECPM(WMBidUtil.parseInt(obj).intValue());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                new SplashViewManager(this.f86044a, this.f86045b, this.f86047d, map, new ViewInteractionListener() { // from class: com.windmill.gdt.GDTNSAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        GDTNSAdapter.this.callSplashAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        GDTNSAdapter.this.callSplashAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        GDTNSAdapter.this.callSplashAdShow();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        GDTNSAdapter.this.callSplashAdShowError(wMAdapterError);
                    }
                }).show(viewGroup);
            }
            this.f86048e = false;
        } catch (Exception e11) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e11.getMessage()));
        }
    }

    static /* synthetic */ boolean a(GDTNSAdapter gDTNSAdapter) {
        gDTNSAdapter.f86048e = true;
        return true;
    }
}
