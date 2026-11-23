package com.windmill.gromore;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GroNativeAdAdapter extends WMCustomNativeAdapter implements i.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f86202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f86203b = 0;
    public q reflectionGetPriceEntity;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        i iVar = this.f86202a;
        if (iVar != null) {
            iVar.b();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        TTNativeAd tTNativeAd;
        i iVar = this.f86202a;
        if (iVar == null) {
            return null;
        }
        if (iVar.c().get(0) instanceof d) {
            tTNativeAd = ((d) this.f86202a.c().get(0)).f86234a;
        } else if (this.f86202a.c().get(0) instanceof e) {
            tTNativeAd = ((e) this.f86202a.c().get(0)).f86244a;
        } else {
            if (!(this.f86202a.c().get(0) instanceof j)) {
                WMLogUtil.i("-------getMediaExtraOption clz: " + this.f86202a.c().get(0).getClass());
                return null;
            }
            tTNativeAd = ((j) this.f86202a.c().get(0)).f86283a;
        }
        return GroAdapterProxy.getRequestId(tTNativeAd.getMediaExtraInfo());
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public List<WMNativeAdData> getNativeAdDataList() {
        i iVar = this.f86202a;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        try {
            i iVar = this.f86202a;
            if (iVar != null) {
                return iVar.a();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        i kVar;
        try {
            String str = (String) map2.get("placementId");
            this.f86203b = n.a(map2);
            int nativeType = getNativeType();
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str + ":" + nativeType);
            if (nativeType == 1) {
                kVar = new l(this, this.f86203b);
            } else {
                if (nativeType != 2) {
                    callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "not support nativeType"));
                    return;
                }
                kVar = new k(this, this.f86203b);
            }
            this.f86202a = kVar;
            this.f86202a.a(context, this, str, map);
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f86202a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? GroAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : GroAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (z10) {
                    this.f86202a.a(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin"))));
                } else {
                    this.f86202a.a(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice"))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.gromore.i.a
    public void onNativeAdFailToLoad(WMAdapterError wMAdapterError) {
        SigmobLog.i(getClass().getSimpleName() + " onNativeAdFailToLoad:" + wMAdapterError.toString());
        callLoadFail(wMAdapterError);
    }

    @Override // com.windmill.gromore.i.a
    public void onNativeAdLoadSuccess(List<WMNativeAdData> list, Object obj) {
        BidPrice bidPrice;
        SigmobLog.i(getClass().getSimpleName() + " onNativeAdLoadSuccess:" + obj);
        if (getBiddingType() == 1) {
            if (obj == null || !(obj instanceof q)) {
                bidPrice = new BidPrice("0.0");
            } else {
                q qVar = (q) obj;
                this.reflectionGetPriceEntity = qVar;
                bidPrice = new BidPrice(String.valueOf(qVar.f86346a));
                q qVar2 = this.reflectionGetPriceEntity;
                setGroC2sPriceInfo(qVar2.f86346a, qVar2.f86350e, qVar2.f86349d, qVar2.f86353h, qVar2.f86351f, qVar2.f86354i);
            }
            callLoadBiddingSuccess(bidPrice);
        }
        callLoadSuccess(list);
    }
}
