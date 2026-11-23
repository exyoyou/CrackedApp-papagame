package com.windmill.kuaishou;

import android.app.Activity;
import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.kuaishou.weapon.p0.t;
import com.kwad.sdk.api.BaseKSAd;
import com.kwad.sdk.api.KsFullScreenVideoAd;
import com.kwad.sdk.api.KsInterstitialAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class KuaiShouInterstitialAdapter extends WMCustomInterstitialAdapter implements e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f86370a;

    @Override // com.windmill.kuaishou.e.a
    public void adapterDidLoadBiddingPriceSuccess(String str) {
        callLoadBiddingSuccess(new BidPrice(str));
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        e eVar = this.f86370a;
        if (eVar != null) {
            eVar.c();
            this.f86370a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        e eVar = this.f86370a;
        return eVar != null ? eVar.a() : super.getChannelObject();
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        BaseKSAd baseKSAd;
        if (this.f86370a.a() instanceof KsFullScreenVideoAd) {
            baseKSAd = (KsFullScreenVideoAd) this.f86370a.a();
        } else {
            if (!(this.f86370a.a() instanceof KsInterstitialAd)) {
                return null;
            }
            baseKSAd = (KsInterstitialAd) this.f86370a.a();
        }
        return KuaiShouAdapterProxy.getRequestId(baseKSAd.getMediaExtraInfo());
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            e eVar = this.f86370a;
            if (eVar != null) {
                return eVar.b();
            }
            return false;
        } catch (Throwable th) {
            SigmobLog.e("ks isReady fail:", th);
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        e dVar;
        try {
            String strSubstring = (String) map2.get("placementId");
            int interstitialAdType = getInterstitialAdType();
            if (strSubstring.endsWith("L") || strSubstring.endsWith(t.f74879d)) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
            }
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + strSubstring + ":" + interstitialAdType);
            if (interstitialAdType == 1) {
                dVar = new c(this, this);
            } else {
                if (interstitialAdType != 0 && interstitialAdType != 2) {
                    callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "can not get ks adType"));
                    return;
                }
                dVar = new d(this, this);
            }
            this.f86370a = dVar;
            this.f86370a.a(strSubstring);
        } catch (Throwable th) {
            SigmobLog.e("ks loadAd fail:", th);
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch TT loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f86370a != null) {
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
                this.f86370a.a(z10, mapCastBiddingInfo);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.kuaishou.e.a
    public void onInterstitialAdClick() {
        callVideoAdClick();
    }

    @Override // com.windmill.kuaishou.e.a
    public void onInterstitialAdClose() {
        callVideoAdClosed();
    }

    @Override // com.windmill.kuaishou.e.a
    public void onInterstitialAdFailToLoad(WMAdapterError wMAdapterError) {
        callLoadFail(wMAdapterError);
    }

    @Override // com.windmill.kuaishou.e.a
    public void onInterstitialAdFailToPlaying(WMAdapterError wMAdapterError) {
        callVideoAdPlayError(wMAdapterError);
    }

    @Override // com.windmill.kuaishou.e.a
    public void onInterstitialAdLoadSuccess(Object obj) {
        callLoadSuccess(obj);
    }

    @Override // com.windmill.kuaishou.e.a
    public void onInterstitialAdPlayEnd() {
        callVideoAdPlayComplete();
    }

    @Override // com.windmill.kuaishou.e.a
    public void onInterstitialAdPreLoadSuccess() {
    }

    @Override // com.windmill.kuaishou.e.a
    public void onInterstitialAdStartPlaying() {
        callVideoAdShow();
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        try {
            e eVar = this.f86370a;
            if (eVar == null || !eVar.b()) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                this.f86370a.a(activity, map2);
            }
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "catch ks presentVideoAd error " + th.getMessage()));
        }
    }
}
