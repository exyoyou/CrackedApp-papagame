package com.windmill.gdt;

import com.czhj.sdk.logger.SigmobLog;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.windmill.sdk.base.BiddingConstant;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMAdBaseAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GdtNotifyBiddingResult {
    public static void notifyBiddingResult(boolean z10, Map<String, Object> map, LiteAbstractAD liteAbstractAD, WMAdBaseAdapter wMAdBaseAdapter) {
        try {
            if (WMLogUtil.isEnableLog && wMAdBaseAdapter.getServerExtra() != null) {
                SigmobLog.i(wMAdBaseAdapter.getClass().getSimpleName() + "-----notifyBiddingResult id:1  isReady:" + wMAdBaseAdapter.isReady() + " isWin:" + z10 + ": " + map);
            }
            if (z10) {
                HashMap<String, Object> mapNotifyMap = notifyMap(z10, map, wMAdBaseAdapter);
                SigmobLog.i(wMAdBaseAdapter.getClass().getSimpleName() + wMAdBaseAdapter.getServerExtra().get("placementId") + "---notifyBiddingResult:2 map " + mapNotifyMap);
                liteAbstractAD.sendWinNotification(mapNotifyMap);
                return;
            }
            if (wMAdBaseAdapter.isReady()) {
                HashMap<String, Object> mapNotifyMap2 = notifyMap(z10, map, wMAdBaseAdapter);
                SigmobLog.i(wMAdBaseAdapter.getClass().getSimpleName() + wMAdBaseAdapter.getServerExtra().get("placementId") + "---notifyBiddingResult:2 map " + mapNotifyMap2);
                if (z10) {
                    liteAbstractAD.sendWinNotification(mapNotifyMap2);
                    return;
                } else {
                    liteAbstractAD.sendLossNotification(mapNotifyMap2);
                    return;
                }
            }
            WMLogUtil.i("---------notifyBiddingResult NoAd ");
            HashMap<String, Object> mapNotifyMap3 = notifyMap(false, map, wMAdBaseAdapter);
            mapNotifyMap3.putAll(map);
            if (wMAdBaseAdapter.getServerExtra() != null) {
                mapNotifyMap3.put("placementId", wMAdBaseAdapter.getServerExtra().get("placementId"));
            }
            mapNotifyMap3.put(WMBidUtil.IS_WIN, "0");
            mapNotifyMap3.put("loadId", wMAdBaseAdapter.getLoadId());
            if (map.get(BiddingConstant.noAdUrl) == null) {
                WMLogUtil.i("---------notifyBiddingResult Map noAdUrl ");
                return;
            }
            WMLogUtil.i("---------notifyBiddingResult  noAdUrl 000" + map.get(BiddingConstant.noAdUrl).toString());
            GdtUtil.noAdReplace(map.get(BiddingConstant.noAdUrl).toString(), mapNotifyMap3);
        } catch (Exception unused) {
        }
    }

    public static HashMap<String, Object> notifyMap(boolean z10, Map<String, Object> map, WMAdBaseAdapter wMAdBaseAdapter) {
        HashMap map2 = (HashMap) WMBidUtil.getBidInfoToOut(z10, map);
        HashMap map3 = (HashMap) WMBidUtil.getBidInfoWithChannel(wMAdBaseAdapter.getChannelId(), z10, map, map2);
        return (HashMap) (map3 != null ? GDTAdapterProxy.castBiddingInfo(z10, map3) : GDTAdapterProxy.castBiddingInfo(z10, map2));
    }

    public static void notifyNativeBiddingResult(boolean z10, Map<String, Object> map, NativeUnifiedADData nativeUnifiedADData, WMAdBaseAdapter wMAdBaseAdapter) {
        try {
            if (WMLogUtil.isEnableLog) {
                SigmobLog.i(wMAdBaseAdapter.getClass().getSimpleName() + "---notifyNativeResult:1 " + (wMAdBaseAdapter.getServerExtra() != null ? (String) wMAdBaseAdapter.getServerExtra().get("placementId") : "") + " isReady:" + wMAdBaseAdapter.isReady() + " isWin:" + z10 + ": " + map);
            }
            if (!wMAdBaseAdapter.isReady()) {
                HashMap<String, Object> mapNotifyMap = notifyMap(z10, map, wMAdBaseAdapter);
                if (wMAdBaseAdapter.getServerExtra() != null) {
                    mapNotifyMap.put("placementId", wMAdBaseAdapter.getServerExtra().get("placementId"));
                }
                mapNotifyMap.put(WMBidUtil.IS_WIN, "0");
                WMLogUtil.i("--------notifyNativeResult noad  " + wMAdBaseAdapter.getServerExtra());
                mapNotifyMap.put("loadId", wMAdBaseAdapter.getLoadId());
                if (map.get(BiddingConstant.noAdUrl) != null) {
                    GdtUtil.noAdReplace(map.get(BiddingConstant.noAdUrl).toString(), mapNotifyMap);
                    return;
                }
                WMLogUtil.i("--------notifyNativeResult noAdUrl  " + wMAdBaseAdapter.getServerExtra());
                return;
            }
            HashMap<String, Object> mapNotifyMap2 = notifyMap(z10, map, wMAdBaseAdapter);
            if (wMAdBaseAdapter.getServerExtra() != null) {
                SigmobLog.i(wMAdBaseAdapter.getClass().getSimpleName() + " " + wMAdBaseAdapter.getServerExtra().get("placementId") + "---notifyNativeResult: 2 " + mapNotifyMap2);
            }
            if (nativeUnifiedADData == null) {
                try {
                    List<WMNativeAdData> nativeAdDataList = wMAdBaseAdapter.getNativeAdDataList();
                    if (nativeAdDataList != null && !nativeAdDataList.isEmpty()) {
                        nativeUnifiedADData = (NativeUnifiedADData) nativeAdDataList.get(0).getOriginNativeAdData();
                    }
                } catch (Throwable unused) {
                }
            }
            if (nativeUnifiedADData == null) {
                WMLogUtil.e("--------notifyNativeResult  NativeUnifiedADData is null");
            } else if (z10) {
                nativeUnifiedADData.sendWinNotification(mapNotifyMap2);
            } else {
                nativeUnifiedADData.sendLossNotification(mapNotifyMap2);
            }
        } catch (Exception unused2) {
        }
    }
}
