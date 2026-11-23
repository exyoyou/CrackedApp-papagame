package com.windmill.sigmob;

import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.natives.WindNativeAdData;
import com.sigmob.windad.natives.WindNativeAdRequest;
import com.sigmob.windad.natives.WindNativeUnifiedAd;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class SigNativeAdAdapter extends WMCustomNativeAdapter implements d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f87613a;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        f fVar = this.f87613a;
        if (fVar == null) {
            return;
        }
        if (fVar.f87638a != null) {
            List<WMNativeAdData> list = fVar.f87639b;
            if (list != null) {
                Iterator<WMNativeAdData> it2 = list.iterator();
                while (it2.hasNext()) {
                    it2.next().destroy();
                }
                fVar.f87639b.clear();
            }
            fVar.f87638a.destroy();
            fVar.f87638a = null;
        }
        this.f87613a = null;
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public List<WMNativeAdData> getNativeAdDataList() {
        f fVar = this.f87613a;
        if (fVar == null) {
            return null;
        }
        return fVar.f87639b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        f fVar = this.f87613a;
        return fVar != null && (fVar.f87639b.isEmpty() ^ true);
    }

    @Override // com.windmill.sdk.custom.WMCustomNativeAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            String str = (String) map2.get("placementId");
            SigmobLog.i("SigNativeAdAdapter#loadAd: placementId = " + str + ", nativeAdType = " + getNativeAdType());
            f fVar = new f(this, this);
            this.f87613a = fVar;
            try {
                fVar.f87639b.clear();
                Map<String, Object> mapA = a.a("SigNativeUnifiedAd#", fVar.f87641d);
                WindNativeAdRequest windNativeAdRequest = new WindNativeAdRequest(str, fVar.f87641d.getUserId(), map);
                windNativeAdRequest.setExtOptions(mapA);
                WindNativeUnifiedAd windNativeUnifiedAd = new WindNativeUnifiedAd(windNativeAdRequest);
                fVar.f87638a = windNativeUnifiedAd;
                windNativeUnifiedAd.setNativeAdLoadListener(new WindNativeUnifiedAd.WindNativeAdLoadListener() { // from class: com.windmill.sigmob.f.1
                    AnonymousClass1() {
                    }

                    @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
                    public final void onAdError(WindAdError windAdError, String str2) {
                        d.a aVar = f.this.f87640c;
                        if (aVar == null) {
                            return;
                        }
                        aVar.onNativeAdFailToLoad(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
                    }

                    @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
                    public final void onAdLoad(List<WindNativeAdData> list, String str2) {
                        if (list == null || list.isEmpty()) {
                            if (f.this.f87640c != null) {
                                f.this.f87640c.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "list is null or size be 0 ".concat(String.valueOf(str2))));
                                return;
                            }
                            return;
                        }
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            f.this.f87639b.add(new e(f.this.f87641d, list.get(i10)));
                        }
                        f fVar2 = f.this;
                        d.a aVar = fVar2.f87640c;
                        if (aVar != null) {
                            aVar.onNativeAdLoadSuccess(fVar2.f87639b, fVar2.f87638a.getEcpm());
                        }
                    }
                });
                int biddingType = fVar.f87641d.getBiddingType();
                if (biddingType == 0) {
                    fVar.f87638a.loadAd(fVar.f87641d.getHbResponseStr());
                    return;
                }
                if (biddingType != 1) {
                    fVar.f87638a.loadAd(fVar.f87641d.getAdCount());
                    return;
                }
                try {
                    Object obj = map2.get(WMConstants.BID_FLOOR);
                    if (obj != null) {
                        fVar.f87638a.setBidFloor(((Integer) obj).intValue());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                fVar.f87638a.setCurrency(WindAds.CNY);
                fVar.f87638a.loadAd(fVar.f87641d.getAdCount());
            } catch (Throwable th) {
                d.a aVar = fVar.f87640c;
                if (aVar != null) {
                    aVar.onNativeAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
                }
            }
        } catch (Throwable th2) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th2.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i("SigNativeAdAdapter#notifyBiddingResult: isWin = " + z10 + ", price = " + str + ", referBidInfo = " + map);
        if (this.f87613a == null) {
            return;
        }
        try {
            Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
            int channelId = getChannelId();
            SigmobLog.i("SigNativeAdAdapter#notifyBiddingResult: channelId = " + channelId + ", bidInfoToOut = " + bidInfoToOut);
            Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(channelId, z10, map, bidInfoToOut);
            SigmobLog.i("SigNativeAdAdapter#notifyBiddingResult: bidInfoWithChannel = ".concat(String.valueOf(bidInfoWithChannel)));
            Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel == null ? SigAdapterProxy.castBiddingInfo(z10, bidInfoToOut) : SigAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel);
            SigmobLog.i("SigNativeAdAdapter#notifyBiddingResult: map = ".concat(String.valueOf(mapCastBiddingInfo)));
            if (z10) {
                WindNativeUnifiedAd windNativeUnifiedAd = this.f87613a.f87638a;
                if (windNativeUnifiedAd != null) {
                    windNativeUnifiedAd.sendWinNotificationWithInfo(mapCastBiddingInfo);
                    return;
                }
                return;
            }
            WindNativeUnifiedAd windNativeUnifiedAd2 = this.f87613a.f87638a;
            if (windNativeUnifiedAd2 != null) {
                windNativeUnifiedAd2.sendLossNotificationWithInfo(mapCastBiddingInfo);
            }
        } catch (Exception e10) {
            SigmobLog.e("SigNativeAdAdapter#notifyBiddingResult: error = " + e10.getMessage());
        }
    }

    @Override // com.windmill.sigmob.d.a
    public void onNativeAdFailToLoad(WMAdapterError wMAdapterError) {
        SigmobLog.e("SigNativeAdAdapter#onNativeAdFailToLoad: error = " + wMAdapterError.toString());
        callLoadFail(wMAdapterError);
    }

    @Override // com.windmill.sigmob.d.a
    public void onNativeAdLoadSuccess(List<WMNativeAdData> list, String str) {
        int biddingType = getBiddingType();
        SigmobLog.i("SigNativeAdAdapter#onNativeAdLoadSuccess: price = " + str + ", biddingType = " + biddingType);
        if (this.f87613a != null && biddingType == 1) {
            callLoadBiddingSuccess(new BidPrice(str));
        }
        callLoadSuccess(list);
    }
}
