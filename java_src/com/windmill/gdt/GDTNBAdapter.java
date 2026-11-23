package com.windmill.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
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
import com.windmill.sdk.custom.WMCustomBannerAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.BannerViewInteractionListener;
import com.windmill.sdk.widget.BannerViewManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GDTNBAdapter extends WMCustomBannerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f86023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NativeUnifiedADData f86024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f86025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f86026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f86027e;

    static /* synthetic */ void e(GDTNBAdapter gDTNBAdapter) {
        try {
            View view = gDTNBAdapter.f86023a;
            if (view == null || view.getParent() == null) {
                return;
            }
            ViewParent parent = gDTNBAdapter.f86023a.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(gDTNBAdapter.f86023a);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        NativeUnifiedADData nativeUnifiedADData = this.f86024b;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.destroy();
            this.f86024b = null;
        }
        if (this.f86023a != null) {
            this.f86023a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void gdtNoadNotify(String str, HashMap<String, Object> map) {
        GdtUtil.noAdReplace(str, map);
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public View getBannerView() {
        return this.f86023a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86024b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        if (this.f86025c == null) {
            return null;
        }
        HashMap map = new HashMap();
        WMLogUtil.i(getClass().getSimpleName() + "------getMediaExtraOption " + this.f86024b.getExtraInfo());
        if (this.f86024b.getExtraInfo() != null && this.f86024b.getExtraInfo().get("request_id") != null) {
            map.put("request_id", this.f86024b.getExtraInfo().get("request_id").toString());
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
        return (this.f86024b == null || this.f86023a == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter
    public void loadAd(final Context context, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str);
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with activity is null"));
                return;
            }
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    if (obj != null && ((Integer) obj).intValue() != 0) {
                        this.f86026d = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                    }
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        this.f86027e = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            NativeADUnifiedListener nativeADUnifiedListener = new NativeADUnifiedListener() { // from class: com.windmill.gdt.GDTNBAdapter.1
                @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
                public final void onADLoaded(final List<NativeUnifiedADData> list) {
                    SigmobLog.i(GDTNBAdapter.class.getClass().getSimpleName() + " onADLoad()");
                    if (list == null || list.isEmpty()) {
                        GDTNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 " + str));
                        return;
                    }
                    GDTNBAdapter.this.f86024b = list.get(0);
                    GDTNBAdapter gDTNBAdapter = GDTNBAdapter.this;
                    gDTNBAdapter.f86025c = new c(gDTNBAdapter.f86024b, GDTNBAdapter.this.getChannelId(), map2);
                    new BannerViewManager(context, GDTNBAdapter.this.f86026d, GDTNBAdapter.this.f86027e, GDTNBAdapter.this.f86025c, map2, new BannerViewInteractionListener() { // from class: com.windmill.gdt.GDTNBAdapter.1.1
                        @Override // com.windmill.sdk.widget.ViewInteractionListener
                        public final void onAdClick() {
                            GDTNBAdapter.this.callBannerAdClick();
                        }

                        @Override // com.windmill.sdk.widget.ViewInteractionListener
                        public final void onAdClose() {
                            GDTNBAdapter.e(GDTNBAdapter.this);
                            GDTNBAdapter.this.callBannerAdClosed();
                        }

                        @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                        public final void onAdRenderError(WMAdapterError wMAdapterError) {
                            GDTNBAdapter.this.callLoadFail(wMAdapterError);
                        }

                        @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                        public final void onAdRenderSuccess(View view) {
                            if (view != null) {
                                GDTNBAdapter.this.f86023a = view;
                                if (GDTNBAdapter.this.getBiddingType() == 1) {
                                    GDTNBAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(GDTNBAdapter.this.f86024b.getECPM())));
                                }
                                GDTNBAdapter.this.callLoadSuccess(list);
                                return;
                            }
                            GDTNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onAdRenderSuccess view is null  " + str));
                        }

                        @Override // com.windmill.sdk.widget.ViewInteractionListener
                        public final void onAdShow() {
                            GDTNBAdapter.this.callBannerAdShow();
                        }

                        @Override // com.windmill.sdk.widget.ViewInteractionListener
                        public final void onAdShowError(WMAdapterError wMAdapterError) {
                            GDTNBAdapter.this.callBannerAdShowError(wMAdapterError);
                        }
                    }).render();
                }

                @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
                public final void onNoAD(AdError adError) {
                    SigmobLog.i(GDTNBAdapter.class.getClass().getSimpleName() + " onNoAD " + adError.getErrorCode() + ":" + adError.getErrorMsg());
                    GDTNBAdapter.this.callLoadFail(new WMAdapterError(adError.getErrorCode(), GDTAdapterProxy.getDetailCode(adError.getErrorMsg()), adError.getErrorMsg()));
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
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch gdt loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        GdtNotifyBiddingResult.notifyNativeBiddingResult(z10, map, this.f86024b, this);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onResume(Activity activity) {
        c cVar = this.f86025c;
        if (cVar != null) {
            cVar.a(activity);
        }
    }
}
