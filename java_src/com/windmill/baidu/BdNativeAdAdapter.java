package com.windmill.baidu;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class BdNativeAdAdapter extends WMCustomNativeAdapter implements g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f85894a;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        g gVar = this.f85894a;
        if (gVar != null) {
            gVar.b();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        g gVar = this.f85894a;
        if (gVar != null) {
            return gVar.d();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public List<WMNativeAdData> getNativeAdDataList() {
        g gVar = this.f85894a;
        if (gVar != null) {
            return gVar.c();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            g gVar = this.f85894a;
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
        g lVar;
        try {
            String str = (String) map2.get("placementId");
            int nativeType = getNativeType();
            int nativeAdType = getNativeAdType();
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + nativeType + ":" + nativeAdType);
            if (nativeType != 1) {
                if (nativeType != 2) {
                    callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeType"));
                    return;
                } else {
                    if (nativeAdType != 1) {
                        callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeAdType"));
                        return;
                    }
                    lVar = new j(this, this);
                }
            } else if (nativeAdType == 0) {
                lVar = new k(this, this);
            } else {
                if (nativeAdType != 1) {
                    callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeAdType"));
                    return;
                }
                lVar = new l(this, this);
            }
            this.f85894a = lVar;
            this.f85894a.a(context, str, map, map2);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f85894a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                LinkedHashMap<String, Object> linkedHashMapCastBiddingInfo = bidInfoWithChannel != null ? BdAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : BdAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + linkedHashMapCastBiddingInfo);
                if (z10) {
                    this.f85894a.a(String.valueOf(linkedHashMapCastBiddingInfo.get("ecpm")), linkedHashMapCastBiddingInfo);
                    return;
                }
                g gVar = this.f85894a;
                String.valueOf(linkedHashMapCastBiddingInfo.get("ecpm"));
                gVar.b(String.valueOf(linkedHashMapCastBiddingInfo.get(MediationConstant.KEY_REASON)), linkedHashMapCastBiddingInfo);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.baidu.g.a
    public void onNativeAdFailToLoad(WMAdapterError wMAdapterError) {
        SigmobLog.i(getClass().getSimpleName() + " onNativeAdFailToLoad:" + wMAdapterError.toString());
        callLoadFail(wMAdapterError);
    }

    @Override // com.windmill.baidu.g.a
    public void onNativeAdLoadSuccess(List<WMNativeAdData> list, String str, String... strArr) {
        SigmobLog.i(getClass().getSimpleName() + " onNativeAdLoadSuccess:" + str);
        if (getBiddingType() == 1) {
            BidPrice bidPrice = new BidPrice(!TextUtils.isEmpty(str) ? String.valueOf(str) : "0");
            if (strArr != null && strArr.length > 0) {
                bidPrice.pecpm = strArr[0];
            }
            callLoadBiddingSuccess(bidPrice);
        }
        callLoadSuccess(list);
    }
}
