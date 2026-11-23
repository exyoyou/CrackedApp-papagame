package com.windmill.toutiao;

import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class TouTiaoNativeAdAdapter extends WMCustomNativeAdapter implements f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f87696a;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        f fVar = this.f87696a;
        if (fVar != null) {
            fVar.b();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Map<String, Object> mapD;
        Object obj;
        f fVar = this.f87696a;
        if (fVar == null || (mapD = fVar.d()) == null || (obj = mapD.get("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", obj);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public List<WMNativeAdData> getNativeAdDataList() {
        f fVar = this.f87696a;
        if (fVar != null) {
            return fVar.c();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            f fVar = this.f87696a;
            if (fVar != null) {
                return fVar.a();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        f lVar;
        try {
            String str = (String) map2.get("placementId");
            int nativeType = getNativeType();
            int nativeAdType = getNativeAdType();
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + nativeType + ":" + nativeAdType);
            if (nativeType != 1) {
                if (nativeType != 2) {
                    callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeType"));
                    return;
                } else if (nativeAdType == 0) {
                    lVar = new i(this);
                } else {
                    if (nativeAdType != 1) {
                        callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeAdType"));
                        return;
                    }
                    lVar = new j(this);
                }
            } else if (nativeAdType == 0) {
                lVar = new k(this);
            } else {
                if (nativeAdType != 1) {
                    callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeAdType"));
                    return;
                }
                lVar = new l(this);
            }
            this.f87696a = lVar;
            this.f87696a.a(context, this, str, map, map2);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f87696a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (z10) {
                    this.f87696a.a(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin"))));
                } else {
                    this.f87696a.a(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice"))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.toutiao.f.a
    public void onNativeAdFailToLoad(WMAdapterError wMAdapterError) {
        SigmobLog.i(getClass().getSimpleName() + " onNativeAdFailToLoad:" + wMAdapterError.toString());
        callLoadFail(wMAdapterError);
    }

    @Override // com.windmill.toutiao.f.a
    public void onNativeAdLoadSuccess(List<WMNativeAdData> list, Object obj) {
        SigmobLog.i(getClass().getSimpleName() + " onNativeAdLoadSuccess:" + obj);
        if (getBiddingType() == 1) {
            callLoadBiddingSuccess(new BidPrice(obj != null ? String.valueOf(obj) : "0"));
        }
        callLoadSuccess(list);
    }
}
