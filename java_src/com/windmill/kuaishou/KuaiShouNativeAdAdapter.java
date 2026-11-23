package com.windmill.kuaishou;

import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.kuaishou.weapon.p0.t;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class KuaiShouNativeAdAdapter extends WMCustomNativeAdapter implements g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f86403a;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        g gVar = this.f86403a;
        if (gVar != null) {
            gVar.b();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        g gVar = this.f86403a;
        if (gVar != null) {
            return gVar.d();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public List<WMNativeAdData> getNativeAdDataList() {
        g gVar = this.f86403a;
        if (gVar != null) {
            return gVar.c();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            g gVar = this.f86403a;
            if (gVar != null) {
                return gVar.a();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        g kVar;
        try {
            String strSubstring = (String) map2.get("placementId");
            if (strSubstring.endsWith("L") || strSubstring.endsWith(t.f74879d)) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
            }
            int nativeType = getNativeType();
            int nativeAdType = getNativeAdType();
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + strSubstring + ":" + nativeAdType + ":" + nativeType);
            if (nativeAdType == 0) {
                if (nativeType == 1) {
                    kVar = new j(this);
                } else {
                    if (nativeType != 2) {
                        callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeType"));
                        return;
                    }
                    kVar = new i(this);
                }
            } else {
                if (nativeAdType != 1) {
                    callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeAdType"));
                    return;
                }
                kVar = new k(this);
            }
            this.f86403a = kVar;
            this.f86403a.a(this, strSubstring, map, map2);
        } catch (Throwable th) {
            SigmobLog.e("ks load ", th);
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f86403a != null) {
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
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo.size() + " " + mapCastBiddingInfo);
                this.f86403a.a(z10, mapCastBiddingInfo);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.kuaishou.g.a
    public void onNativeAdFailToLoad(WMAdapterError wMAdapterError) {
        callLoadFail(wMAdapterError);
    }

    @Override // com.windmill.kuaishou.g.a
    public void onNativeAdLoadSuccess(List<WMNativeAdData> list, String str) {
        if (this.f86403a != null && getBiddingType() == 1) {
            callLoadBiddingSuccess(new BidPrice(str));
        }
        callLoadSuccess(list);
    }
}
