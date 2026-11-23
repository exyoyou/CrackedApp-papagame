package com.windmill.sdk.custom;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.widget.BannerViewInteractionListener;
import com.windmill.sdk.widget.BannerViewManager;
import com.windmill.sdk.widget.InterstitialViewManager;
import com.windmill.sdk.widget.SplashViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class Native2OtherManger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WMAdBaseAdapter f86980a;
    protected View bannerView;
    protected boolean isReady = false;
    protected WMNativeAdData nativeAdData;
    protected int subType;

    public View getBannerView() {
        return this.bannerView;
    }

    public Object getChannelObject() {
        WMNativeAdData wMNativeAdData = this.nativeAdData;
        if (wMNativeAdData == null) {
            return null;
        }
        try {
            return wMNativeAdData.getClass().getMethod("getChannelObject", new Class[0]).invoke(this.nativeAdData, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean isReady() {
        return this.isReady;
    }

    protected void loadAd(WMCustomNativeAdapter adapter, final WMAdBaseAdapter baseAdapter, final Context context, final Map<String, Object> localExtra, final Map<String, Object> serverExtra) {
        this.f86980a = baseAdapter;
        adapter.setAdapter(baseAdapter);
        adapter.setLoadNativeAdResponseLoadListener(new NativeAdResponseLoadListener() { // from class: com.windmill.sdk.custom.Native2OtherManger.1
            @Override // com.windmill.sdk.custom.NativeAdResponseLoadListener
            public void onNativeAdResponseLoadFail(int errorCode, String errorMsg) {
                try {
                    WMLogUtil.i(getClass().getSimpleName() + " Fail" + errorCode);
                    WMAdapterError wMAdapterError = new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), errorMsg);
                    WMAdBaseAdapter wMAdBaseAdapter = baseAdapter;
                    if (wMAdBaseAdapter instanceof WMCustomSplashAdapter) {
                        ((WMCustomSplashAdapter) wMAdBaseAdapter).callLoadFail(wMAdapterError);
                    } else if (wMAdBaseAdapter instanceof WMCustomInterstitialAdapter) {
                        ((WMCustomInterstitialAdapter) wMAdBaseAdapter).callLoadFail(wMAdapterError);
                    } else if (wMAdBaseAdapter instanceof WMCustomBannerAdapter) {
                        ((WMCustomBannerAdapter) wMAdBaseAdapter).callLoadFail(wMAdapterError);
                    }
                } catch (Exception unused) {
                }
            }

            @Override // com.windmill.sdk.custom.NativeAdResponseLoadListener
            public void onNativeAdResponseLoadSuccess(WMNativeAdData nativeAdResponse, int bidPrice) {
                try {
                    Native2OtherManger.this.isReady = true;
                    WMLogUtil.i(getClass().getSimpleName() + "---suc" + baseAdapter);
                    Native2OtherManger native2OtherManger = Native2OtherManger.this;
                    native2OtherManger.nativeAdData = nativeAdResponse;
                    WMAdBaseAdapter wMAdBaseAdapter = baseAdapter;
                    if (wMAdBaseAdapter instanceof WMCustomSplashAdapter) {
                        ((WMCustomSplashAdapter) wMAdBaseAdapter).callLoadBiddingSuccess(new BidPrice(String.valueOf(bidPrice)));
                        ((WMCustomSplashAdapter) baseAdapter).callLoadSuccess();
                    } else if (wMAdBaseAdapter instanceof WMCustomInterstitialAdapter) {
                        ((WMCustomInterstitialAdapter) wMAdBaseAdapter).callLoadBiddingSuccess(new BidPrice(String.valueOf(bidPrice)));
                        ((WMCustomInterstitialAdapter) baseAdapter).callLoadSuccess();
                    } else if (wMAdBaseAdapter instanceof WMCustomBannerAdapter) {
                        native2OtherManger.a(context, localExtra, serverExtra);
                        ((WMCustomBannerAdapter) baseAdapter).callLoadBiddingSuccess(new BidPrice(String.valueOf(bidPrice)));
                        ((WMCustomBannerAdapter) baseAdapter).callLoadSuccess();
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void showAd(Activity activity, ViewGroup viewGroup, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            int i10 = this.subType;
            final WMCustomInterstitialAdapter wMCustomInterstitialAdapter = null;
            wMCustomSplashAdapter = null;
            final WMCustomSplashAdapter wMCustomSplashAdapter = null;
            wMCustomInterstitialAdapter = null;
            if (i10 != 1) {
                if (i10 == 2) {
                    WMAdBaseAdapter wMAdBaseAdapter = this.f86980a;
                    if (wMAdBaseAdapter != null && (wMAdBaseAdapter instanceof WMCustomInterstitialAdapter)) {
                        wMCustomInterstitialAdapter = (WMCustomInterstitialAdapter) wMAdBaseAdapter;
                    }
                    InterstitialViewManager interstitialViewManager = new InterstitialViewManager(activity, this.nativeAdData, map2, new ViewInteractionListener() { // from class: com.windmill.sdk.custom.Native2OtherManger.3
                        @Override // com.windmill.sdk.widget.ViewInteractionListener
                        public void onAdClick() {
                        }

                        @Override // com.windmill.sdk.widget.ViewInteractionListener
                        public void onAdClose() {
                            WMCustomInterstitialAdapter wMCustomInterstitialAdapter2 = wMCustomInterstitialAdapter;
                            if (wMCustomInterstitialAdapter2 != null) {
                                wMCustomInterstitialAdapter2.callVideoAdClosed();
                            }
                        }

                        @Override // com.windmill.sdk.widget.ViewInteractionListener
                        public void onAdShow() {
                        }

                        @Override // com.windmill.sdk.widget.ViewInteractionListener
                        public void onAdShowError(WMAdapterError error) {
                        }
                    });
                    if (wMCustomInterstitialAdapter != null) {
                        interstitialViewManager.setTips(wMCustomInterstitialAdapter.getTips());
                    }
                    interstitialViewManager.show();
                    return;
                }
                return;
            }
            WMAdBaseAdapter wMAdBaseAdapter2 = this.f86980a;
            if (wMAdBaseAdapter2 != null && (wMAdBaseAdapter2 instanceof WMCustomSplashAdapter)) {
                wMCustomSplashAdapter = (WMCustomSplashAdapter) wMAdBaseAdapter2;
            }
            int iIntValue = activity.getResources().getDisplayMetrics().widthPixels;
            int iIntValue2 = activity.getResources().getDisplayMetrics().heightPixels;
            try {
                String str = map.get(WMConstants.AD_WIDTH);
                if (str != null && ((Integer) str).intValue() != 0) {
                    iIntValue = WMBidUtil.parseInt(String.valueOf(str)).intValue();
                }
                String str2 = map.get(WMConstants.AD_HEIGHT);
                if (str2 != null && ((Integer) str2).intValue() != 0) {
                    iIntValue2 = WMBidUtil.parseInt(String.valueOf(str2)).intValue();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            new SplashViewManager(iIntValue, iIntValue2, this.nativeAdData, map2, new ViewInteractionListener() { // from class: com.windmill.sdk.custom.Native2OtherManger.2
                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public void onAdClick() {
                }

                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public void onAdClose() {
                    WMCustomSplashAdapter wMCustomSplashAdapter2 = wMCustomSplashAdapter;
                    if (wMCustomSplashAdapter2 != null) {
                        wMCustomSplashAdapter2.callSplashAdClosed();
                    }
                }

                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public void onAdShow() {
                }

                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public void onAdShowError(WMAdapterError error) {
                }
            }).show(viewGroup);
        } catch (Exception e11) {
            SigmobLog.e(getClass().getSimpleName() + "showAd" + e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context activity, Map<String, Object> localExtra, Map<String, Object> serverExtra) {
        int iIntValue;
        int i10;
        int i11;
        int iIntValue2;
        WMAdBaseAdapter wMAdBaseAdapter = this.f86980a;
        final WMCustomBannerAdapter wMCustomBannerAdapter = wMAdBaseAdapter instanceof WMCustomBannerAdapter ? (WMCustomBannerAdapter) wMAdBaseAdapter : null;
        int i12 = 0;
        if (localExtra != null) {
            try {
                Object obj = localExtra.get(WMConstants.AD_WIDTH);
                iIntValue = (obj == null || ((Integer) obj).intValue() == 0) ? 0 : WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                try {
                    Object obj2 = localExtra.get(WMConstants.AD_HEIGHT);
                    if (obj2 == null || ((Integer) obj2).intValue() == 0) {
                        i12 = iIntValue;
                        iIntValue2 = 0;
                    } else {
                        iIntValue2 = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                        i12 = iIntValue;
                    }
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                    i10 = iIntValue;
                    i11 = 0;
                }
            } catch (Exception e11) {
                e = e11;
                iIntValue = 0;
            }
        } else {
            iIntValue2 = 0;
        }
        i11 = iIntValue2;
        i10 = i12;
        new BannerViewManager(activity, i10, i11, this.nativeAdData, serverExtra, new BannerViewInteractionListener() { // from class: com.windmill.sdk.custom.Native2OtherManger.4
            @Override // com.windmill.sdk.widget.ViewInteractionListener
            public void onAdClick() {
                WMCustomBannerAdapter wMCustomBannerAdapter2 = wMCustomBannerAdapter;
                if (wMCustomBannerAdapter2 != null) {
                    wMCustomBannerAdapter2.callBannerAdClick();
                }
            }

            @Override // com.windmill.sdk.widget.ViewInteractionListener
            public void onAdClose() {
                WMCustomBannerAdapter wMCustomBannerAdapter2 = wMCustomBannerAdapter;
                if (wMCustomBannerAdapter2 != null) {
                    wMCustomBannerAdapter2.callBannerAdClosed();
                }
            }

            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
            public void onAdRenderError(WMAdapterError error) {
                WMCustomBannerAdapter wMCustomBannerAdapter2 = wMCustomBannerAdapter;
                if (wMCustomBannerAdapter2 != null) {
                    wMCustomBannerAdapter2.callLoadFail(error);
                }
            }

            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
            public void onAdRenderSuccess(View view) {
                if (view != null) {
                    Native2OtherManger.this.bannerView = view;
                    return;
                }
                WMCustomBannerAdapter wMCustomBannerAdapter2 = wMCustomBannerAdapter;
                if (wMCustomBannerAdapter2 != null) {
                    wMCustomBannerAdapter2.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onAdRenderSuccess view is null  "));
                }
            }

            @Override // com.windmill.sdk.widget.ViewInteractionListener
            public void onAdShow() {
                WMCustomBannerAdapter wMCustomBannerAdapter2 = wMCustomBannerAdapter;
                if (wMCustomBannerAdapter2 != null) {
                    wMCustomBannerAdapter2.callBannerAdShow();
                }
            }

            @Override // com.windmill.sdk.widget.ViewInteractionListener
            public void onAdShowError(WMAdapterError error) {
                WMCustomBannerAdapter wMCustomBannerAdapter2 = wMCustomBannerAdapter;
                if (wMCustomBannerAdapter2 != null) {
                    wMCustomBannerAdapter2.callBannerAdShowError(error);
                }
            }
        }).render();
    }
}
