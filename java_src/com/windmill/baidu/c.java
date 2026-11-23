package com.windmill.baidu;

import android.app.Activity;
import android.content.Context;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.baidu.mobads.sdk.api.ExpressInterstitialListener;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.czhj.sdk.logger.SigmobLog;
import com.sdk.base.module.manager.SDKManager;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidInfo;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class c extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    e.a f85948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    WMCustomInterstitialAdapter f85949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ExpressInterstitialAd f85950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Boolean f85951d = Boolean.FALSE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f85952e = false;

    public c(WMCustomInterstitialAdapter wMCustomInterstitialAdapter, e.a aVar) {
        this.f85949b = wMCustomInterstitialAdapter;
        this.f85948a = aVar;
    }

    @Override // com.windmill.baidu.e
    public final Object a() {
        return this.f85950c;
    }

    @Override // com.windmill.baidu.e
    public final void b(String str, LinkedHashMap<String, Object> linkedHashMap) {
        ExpressInterstitialAd expressInterstitialAd = this.f85950c;
        if (expressInterstitialAd != null) {
            a.b(expressInterstitialAd, str, linkedHashMap);
        }
    }

    @Override // com.windmill.baidu.e
    public final void c() {
        ExpressInterstitialAd expressInterstitialAd = this.f85950c;
        if (expressInterstitialAd != null) {
            expressInterstitialAd.destroy();
            this.f85950c = null;
        }
    }

    @Override // com.windmill.baidu.e
    public final Map<String, Object> d() {
        Object adDataForKey;
        ExpressInterstitialAd expressInterstitialAd = this.f85950c;
        if (expressInterstitialAd == null || (adDataForKey = expressInterstitialAd.getAdDataForKey("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", adDataForKey);
        return map;
    }

    @Override // com.windmill.baidu.e
    public final void a(Context context) {
        try {
            ExpressInterstitialAd expressInterstitialAd = this.f85950c;
            if (expressInterstitialAd == null) {
                a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "expressInterstitialAd is null when show"));
            } else if (context instanceof Activity) {
                expressInterstitialAd.show();
            } else {
                expressInterstitialAd.show((Activity) context);
            }
        } catch (Throwable th) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "bd catch error when show " + th.getMessage()));
        }
    }

    @Override // com.windmill.baidu.e
    public final boolean b() {
        if (!this.f85949b.isUseChannelIsReady()) {
            return this.f85952e;
        }
        ExpressInterstitialAd expressInterstitialAd = this.f85950c;
        if (expressInterstitialAd != null) {
            return expressInterstitialAd.isReady();
        }
        return false;
    }

    @Override // com.windmill.baidu.e
    public final void a(Context context, String str, Map<String, Object> map) {
        try {
            this.f85952e = false;
            this.f85951d = Boolean.FALSE;
            ExpressInterstitialAd expressInterstitialAd = new ExpressInterstitialAd(context, str);
            this.f85950c = expressInterstitialAd;
            expressInterstitialAd.setLoadListener(new ExpressInterstitialListener() { // from class: com.windmill.baidu.BdExpressInterstitialAd$1
                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onADExposed() {
                    e.a aVar = this.f85852a.f85948a;
                    if (aVar != null) {
                        aVar.onInterstitialAdStartPlaying();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onADExposureFailed() {
                }

                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onADLoaded() {
                    SigmobLog.i(this.f85852a.getClass().getSimpleName() + " onAdLoaded:" + this.f85852a.f85950c.isReady());
                    c cVar = this.f85852a;
                    cVar.f85951d = Boolean.TRUE;
                    if (cVar.f85950c != null && cVar.f85949b.getBiddingType() == 1) {
                        String eCPMLevel = this.f85852a.f85950c.getECPMLevel();
                        c cVar2 = this.f85852a;
                        e.a aVar = cVar2.f85948a;
                        if (aVar != null) {
                            aVar.adapterDidLoadBiddingPriceSuccess(eCPMLevel, cVar2.f85950c.getPECPM());
                        }
                    }
                    if (this.f85852a.f85949b.getFillType() == 1) {
                        e.a aVar2 = this.f85852a.f85948a;
                        if (aVar2 != null) {
                            aVar2.onInterstitialAdLoadSuccess();
                        }
                        this.f85852a.f85952e = true;
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onAdCacheFailed() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f85852a.getClass().getSimpleName());
                    sb2.append(" onAdCacheFailed:");
                    ExpressInterstitialAd expressInterstitialAd2 = this.f85852a.f85950c;
                    sb2.append(expressInterstitialAd2 != null ? Boolean.valueOf(expressInterstitialAd2.isReady()) : "null");
                    SigmobLog.i(sb2.toString());
                    c.a(this.f85852a, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onAdCacheFailed"));
                }

                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onAdCacheSuccess() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f85852a.getClass().getSimpleName());
                    sb2.append(" onAdCacheSuccess:");
                    ExpressInterstitialAd expressInterstitialAd2 = this.f85852a.f85950c;
                    sb2.append(expressInterstitialAd2 != null ? Boolean.valueOf(expressInterstitialAd2.isReady()) : "null");
                    SigmobLog.i(sb2.toString());
                    if (this.f85852a.f85949b.getFillType() == 0) {
                        c cVar = this.f85852a;
                        cVar.f85952e = true;
                        e.a aVar = cVar.f85948a;
                        if (aVar != null) {
                            aVar.onInterstitialAdLoadSuccess();
                        }
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onAdClick() {
                    e.a aVar = this.f85852a.f85948a;
                    if (aVar != null) {
                        aVar.onInterstitialAdClick();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onAdClose() {
                    e.a aVar = this.f85852a.f85948a;
                    if (aVar != null) {
                        aVar.onInterstitialAdClose();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onAdFailed(int i10, String str2) {
                    c.a(this.f85852a, new WMAdapterError(i10, str2));
                }

                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onLpClosed() {
                }

                @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
                public void onNoAd(int i10, String str2) {
                    c.a(this.f85852a, new WMAdapterError(i10, str2));
                }

                public void onVideoDownloadFailed() {
                }

                public void onVideoDownloadSuccess() {
                }
            });
            try {
                Object obj = map.get(WMConstants.BID_FLOOR);
                if (obj != null) {
                    this.f85950c.setBidFloor(((Integer) obj).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            BidInfo lastBidInfo = this.f85949b.getLastBidInfo();
            if (lastBidInfo != null) {
                SigmobLog.i(c.class.getSimpleName() + " bidInfo:" + lastBidInfo.toString());
                this.f85950c.setRequestParameters(new RequestParameters.Builder().addCustExt("A", lastBidInfo.getWinner()).addCustExt(SDKManager.ALGO_B_AES_SHA256_RSA, lastBidInfo.getECpm()).addCustExt(SDKManager.ALGO_C_RFU, lastBidInfo.getBidType()).addCustExt("S", lastBidInfo.getExposureStatus()).addCustExt(SDKManager.ALGO_D_RFU, lastBidInfo.getClickStatus()).addCustExt("H", lastBidInfo.getFailReason()).addCustExt("I", lastBidInfo.getSecondPrice()).addCustExt("J", lastBidInfo.getBidTime()).addCustExt("K", lastBidInfo.getRequestId()).build());
            }
            this.f85950c.load();
        } catch (Throwable th) {
            e.a aVar = this.f85948a;
            if (aVar != null) {
                aVar.onInterstitialAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "bd catch error load " + th.getMessage()));
            }
        }
    }

    static /* synthetic */ void a(c cVar, WMAdapterError wMAdapterError) {
        e.a aVar = cVar.f85948a;
        if (aVar != null) {
            aVar.onInterstitialAdFailToLoad(wMAdapterError);
        }
    }

    private void a(WMAdapterError wMAdapterError) {
        e.a aVar = this.f85948a;
        if (aVar != null) {
            aVar.onInterstitialAdFailToPlaying(wMAdapterError);
        }
    }

    @Override // com.windmill.baidu.e
    public final void a(String str, LinkedHashMap<String, Object> linkedHashMap) {
        ExpressInterstitialAd expressInterstitialAd = this.f85950c;
        if (expressInterstitialAd != null) {
            a.a(expressInterstitialAd, str, linkedHashMap);
        }
    }
}
