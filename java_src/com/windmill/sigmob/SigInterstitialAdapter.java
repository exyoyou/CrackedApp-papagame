package com.windmill.sigmob;

import android.app.Activity;
import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class SigInterstitialAdapter extends WMCustomInterstitialAdapter implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f87584a;

    @Override // com.windmill.sigmob.b.a
    public void adapterDidLoadBiddingPriceSuccess(String str) {
        int biddingType = getBiddingType();
        SigmobLog.i("SigInterstitialAdapter#adapterDidLoadBiddingPriceSuccess: price = " + str + ", biddingType = " + biddingType);
        if (this.f87584a == null || biddingType != 1) {
            return;
        }
        callLoadBiddingSuccess(new BidPrice(str));
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        b bVar = this.f87584a;
        if (bVar == null) {
            return;
        }
        bVar.b();
        this.f87584a = null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        b bVar = this.f87584a;
        if (bVar == null) {
            return null;
        }
        return bVar.c();
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, String> getSaasChannelInfo() {
        b bVar = this.f87584a;
        if (bVar == null) {
            return null;
        }
        return bVar.d();
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        b bVar = this.f87584a;
        return bVar != null && bVar.a();
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            String str = (String) map2.get("placementId");
            int interstitialAdType = getInterstitialAdType();
            SigmobLog.i("SigInterstitialAdapter#loadAd: placementId = " + str + ", interstitialAdType = " + interstitialAdType);
            if (interstitialAdType != 6) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "can not support adType."));
                return;
            }
            g gVar = new g(this, this);
            this.f87584a = gVar;
            gVar.a(str, map, map2);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i("SigInterstitialAdapter#notifyBiddingResult: isWin = " + z10 + ", price = " + str + ", referBidInfo = " + map);
        if (this.f87584a == null) {
            return;
        }
        try {
            Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
            SigmobLog.i("SigInterstitialAdapter#notifyBiddingResult: channelId = " + getChannelId() + ", bidInfoToOut = " + bidInfoToOut);
            Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
            SigmobLog.i("SigInterstitialAdapter#notifyBiddingResult: bidInfoWithChannel = ".concat(String.valueOf(bidInfoWithChannel)));
            Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel == null ? SigAdapterProxy.castBiddingInfo(z10, bidInfoToOut) : SigAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel);
            SigmobLog.i("SigInterstitialAdapter#notifyBiddingResult: map = ".concat(String.valueOf(mapCastBiddingInfo)));
            if (z10) {
                this.f87584a.a(mapCastBiddingInfo);
            } else {
                this.f87584a.b(mapCastBiddingInfo);
            }
        } catch (Exception e10) {
            SigmobLog.e("SigInterstitialAdapter#notifyBiddingResult: error = " + e10.getMessage());
        }
    }

    @Override // com.windmill.sigmob.b.a
    public void onInterstitialAdClick() {
        SigmobLog.i("SigInterstitialAdapter#onInterstitialAdClick");
        callVideoAdClick();
    }

    @Override // com.windmill.sigmob.b.a
    public void onInterstitialAdClose() {
        SigmobLog.i("SigInterstitialAdapter#onInterstitialAdClose");
        callVideoAdClosed();
    }

    @Override // com.windmill.sigmob.b.a
    public void onInterstitialAdFailToLoad(WMAdapterError wMAdapterError) {
        SigmobLog.e("SigInterstitialAdapter#onInterstitialAdFailToLoad: error = " + wMAdapterError.toString());
        callLoadFail(new WMAdapterError(wMAdapterError.getErrorCode(), wMAdapterError.getMessage()));
    }

    @Override // com.windmill.sigmob.b.a
    public void onInterstitialAdFailToPlaying(WMAdapterError wMAdapterError) {
        SigmobLog.e("SigInterstitialAdapter#onInterstitialAdFailToPlaying: error = " + wMAdapterError.toString());
        callVideoAdPlayError(new WMAdapterError(wMAdapterError.getErrorCode(), wMAdapterError.getMessage()));
    }

    @Override // com.windmill.sigmob.b.a
    public void onInterstitialAdLoadSuccess() {
        SigmobLog.i("SigInterstitialAdapter#onInterstitialAdLoadSuccess");
        callLoadSuccess();
    }

    public void onInterstitialAdPlayEnd() {
        SigmobLog.i("SigInterstitialAdapter#onInterstitialAdPlayEnd");
        callVideoAdPlayComplete();
    }

    @Override // com.windmill.sigmob.b.a
    public void onInterstitialAdStartPlaying() {
        SigmobLog.i("SigInterstitialAdapter#onInterstitialAdStartPlaying");
        callVideoAdShow();
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            b bVar = this.f87584a;
            if (bVar == null || !bVar.a()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示"));
            } else {
                this.f87584a.a(map, map2);
            }
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }
}
