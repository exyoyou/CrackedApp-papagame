package com.windmill.adscope;

import android.app.Activity;
import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class AdScopeInterstitialAdapter extends WMCustomInterstitialAdapter implements c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f85826a;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        c cVar = this.f85826a;
        if (cVar != null) {
            cVar.b();
            this.f85826a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            c cVar = this.f85826a;
            if (cVar != null) {
                return cVar.a();
            }
            return false;
        } catch (Throwable th) {
            SigmobLog.e("adScope isReady catch error", th);
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            String str = (String) map2.get("placementId");
            int interstitialAdType = getInterstitialAdType();
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + interstitialAdType);
            if (interstitialAdType != 0 && interstitialAdType != 2) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support adType"));
                return;
            }
            b bVar = new b(this);
            this.f85826a = bVar;
            bVar.a(context, str, map2);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch adScope loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.adscope.c.a
    public void onInterstitialAdClick() {
        callVideoAdClick();
    }

    @Override // com.windmill.adscope.c.a
    public void onInterstitialAdClose() {
        callVideoAdClosed();
    }

    @Override // com.windmill.adscope.c.a
    public void onInterstitialAdFailToLoad(WMAdapterError wMAdapterError) {
        callLoadFail(wMAdapterError);
    }

    @Override // com.windmill.adscope.c.a
    public void onInterstitialAdFailToPlaying(WMAdapterError wMAdapterError) {
        callVideoAdPlayError(wMAdapterError);
    }

    @Override // com.windmill.adscope.c.a
    public void onInterstitialAdLoadSuccess(int i10) {
        if (getBiddingType() == 1) {
            callLoadBiddingSuccess(new BidPrice(String.valueOf(i10)));
        }
        callLoadSuccess();
    }

    @Override // com.windmill.adscope.c.a
    public void onInterstitialAdStartPlaying() {
        callVideoAdShow();
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            c cVar = this.f85826a;
            if (cVar == null || !cVar.a()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                this.f85826a.a(activity);
            }
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "catch adScope presentVideoAd error " + th.getMessage()));
        }
    }
}
