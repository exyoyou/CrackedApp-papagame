package com.windmill.adscope;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.beizi.fusion.AdListener;
import com.beizi.fusion.SplashAd;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class AdScopeSplashAdAdapter extends WMCustomSplashAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SplashAd f85828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f85829b = false;

    private static DisplayMetrics a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        SplashAd splashAd = this.f85828a;
        if (splashAd != null) {
            splashAd.cancel(getContext());
            this.f85828a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f85828a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return this.f85829b && this.f85828a != null;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f85829b = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str);
            int i10 = a(context).widthPixels;
            int i11 = a(context).heightPixels;
            int iPx2dip = px2dip(context, (float) i10);
            int iPx2dip2 = px2dip(context, (float) i11);
            int iIntValue = 5;
            try {
                Object obj = map2.get(WMConstants.LOAD_TIMEOUT);
                iIntValue = obj != null ? WMBidUtil.parseInt(String.valueOf(obj)).intValue() : 5;
                Object obj2 = map.get(WMConstants.AD_WIDTH);
                if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                    iPx2dip = px2dip(context, WMBidUtil.parseInt(String.valueOf(obj2)).intValue());
                }
                Object obj3 = map.get(WMConstants.AD_HEIGHT);
                if (obj3 != null && ((Integer) obj3).intValue() != 0) {
                    iPx2dip2 = px2dip(context, WMBidUtil.parseInt(String.valueOf(obj3)).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            SplashAd splashAd = new SplashAd(context, null, str, new AdListener() { // from class: com.windmill.adscope.AdScopeSplashAdAdapter.1
                @Override // com.beizi.fusion.AdListener
                public final void onAdClicked() {
                    SigmobLog.i(AdScopeSplashAdAdapter.this.getClass().getSimpleName() + " onAdClicked");
                    AdScopeSplashAdAdapter.this.callSplashAdClick();
                }

                @Override // com.beizi.fusion.AdListener
                public final void onAdClosed() {
                    SigmobLog.i(AdScopeSplashAdAdapter.this.getClass().getSimpleName() + " onAdClosed");
                    AdScopeSplashAdAdapter.this.callSplashAdClosed();
                }

                @Override // com.beizi.fusion.AdListener
                public final void onAdFailedToLoad(int i12) {
                    SigmobLog.i(AdScopeSplashAdAdapter.this.getClass().getSimpleName() + " onAdFailedToLoad: " + i12);
                    AdScopeSplashAdAdapter.this.callLoadFail(new WMAdapterError(i12, "no message"));
                }

                @Override // com.beizi.fusion.AdListener
                public final void onAdLoaded() {
                    SigmobLog.i(AdScopeSplashAdAdapter.this.getClass().getSimpleName() + " onAdLoaded");
                    AdScopeSplashAdAdapter.a(AdScopeSplashAdAdapter.this);
                    int ecpm = AdScopeSplashAdAdapter.this.f85828a != null ? AdScopeSplashAdAdapter.this.f85828a.getECPM() : 0;
                    if (AdScopeSplashAdAdapter.this.getBiddingType() == 1) {
                        AdScopeSplashAdAdapter.this.callLoadBiddingSuccess(new BidPrice(String.valueOf(ecpm)));
                    }
                    AdScopeSplashAdAdapter.this.callLoadSuccess();
                }

                @Override // com.beizi.fusion.AdListener
                public final void onAdShown() {
                    SigmobLog.i(AdScopeSplashAdAdapter.this.getClass().getSimpleName() + " onAdShown");
                    AdScopeSplashAdAdapter.this.callSplashAdShow();
                }

                @Override // com.beizi.fusion.AdListener
                public final void onAdTick(long j10) {
                }
            }, 1000 * ((long) iIntValue));
            this.f85828a = splashAd;
            splashAd.loadAd(iPx2dip, iPx2dip2);
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    public int px2dip(Context context, float f10) {
        float f11 = context.getResources().getDisplayMetrics().density;
        if (f11 <= 0.0f) {
            f11 = 1.0f;
        }
        return (int) ((f10 / f11) + 0.5f);
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        try {
            SplashAd splashAd = this.f85828a;
            if (splashAd != null) {
                splashAd.show(viewGroup);
            } else {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "mSplashAD is null"));
            }
            this.f85829b = false;
        } catch (Exception e10) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e10.getMessage()));
        }
    }

    static /* synthetic */ boolean a(AdScopeSplashAdAdapter adScopeSplashAdAdapter) {
        adScopeSplashAdAdapter.f85829b = true;
        return true;
    }
}
