package com.windmill.baidu;

import android.content.Context;
import com.baidu.mobads.sdk.api.FullScreenVideoAd;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.czhj.sdk.logger.SigmobLog;
import com.sdk.base.module.manager.SDKManager;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidInfo;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class d extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    e.a f85953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    WMCustomInterstitialAdapter f85954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FullScreenVideoAd f85955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f85956d = false;

    public d(WMCustomInterstitialAdapter wMCustomInterstitialAdapter, e.a aVar) {
        this.f85954b = wMCustomInterstitialAdapter;
        this.f85953a = aVar;
    }

    @Override // com.windmill.baidu.e
    public final Object a() {
        return this.f85955c;
    }

    @Override // com.windmill.baidu.e
    public final void b(String str, LinkedHashMap<String, Object> linkedHashMap) {
        FullScreenVideoAd fullScreenVideoAd = this.f85955c;
        if (fullScreenVideoAd != null) {
            a.b(fullScreenVideoAd, str, linkedHashMap);
        }
    }

    @Override // com.windmill.baidu.e
    public final void c() {
        if (this.f85955c != null) {
            this.f85955c = null;
        }
    }

    @Override // com.windmill.baidu.e
    public final Map<String, Object> d() {
        return null;
    }

    @Override // com.windmill.baidu.e
    public final void a(Context context) {
        try {
            FullScreenVideoAd fullScreenVideoAd = this.f85955c;
            if (fullScreenVideoAd != null) {
                fullScreenVideoAd.show(context);
            } else {
                a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "mFullScreenVideoAd is null when show"));
            }
        } catch (Throwable th) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "bd catch error when show " + th.getMessage()));
        }
    }

    @Override // com.windmill.baidu.e
    public final boolean b() {
        if (!this.f85954b.isUseChannelIsReady()) {
            return this.f85956d;
        }
        FullScreenVideoAd fullScreenVideoAd = this.f85955c;
        if (fullScreenVideoAd != null) {
            return fullScreenVideoAd.isReady();
        }
        return false;
    }

    @Override // com.windmill.baidu.e
    public final void a(Context context, String str, Map<String, Object> map) {
        try {
            this.f85956d = false;
            this.f85955c = new FullScreenVideoAd(context, str, new FullScreenVideoAd.FullScreenVideoAdListener() { // from class: com.windmill.baidu.BdFullScreenVideoAd$1
                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdClick() {
                    e.a aVar = this.f85853a.f85953a;
                    if (aVar != null) {
                        aVar.onInterstitialAdClick();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdClose(float f10) {
                    e.a aVar = this.f85853a.f85953a;
                    if (aVar != null) {
                        aVar.onInterstitialAdClose();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdFailed(String str2) {
                    d.a(this.f85853a, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), str2));
                }

                @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdLoaded() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f85853a.getClass().getSimpleName());
                    sb2.append(" onAdLoaded:");
                    FullScreenVideoAd fullScreenVideoAd = this.f85853a.f85955c;
                    sb2.append(fullScreenVideoAd != null ? Boolean.valueOf(fullScreenVideoAd.isReady()) : "null");
                    SigmobLog.i(sb2.toString());
                    d dVar = this.f85853a;
                    if (dVar.f85955c != null && dVar.f85954b.getBiddingType() == 1) {
                        String eCPMLevel = this.f85853a.f85955c.getECPMLevel();
                        d dVar2 = this.f85853a;
                        e.a aVar = dVar2.f85953a;
                        if (aVar != null) {
                            aVar.adapterDidLoadBiddingPriceSuccess(eCPMLevel, dVar2.f85955c.getPECPM());
                        }
                    }
                    if (this.f85853a.f85954b.getFillType() == 1) {
                        e.a aVar2 = this.f85853a.f85953a;
                        if (aVar2 != null) {
                            aVar2.onInterstitialAdLoadSuccess();
                        }
                        this.f85853a.f85956d = true;
                    }
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdShow() {
                    e.a aVar = this.f85853a.f85953a;
                    if (aVar != null) {
                        aVar.onInterstitialAdStartPlaying();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdSkip(float f10) {
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onVideoDownloadFailed() {
                    d.a(this.f85853a, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onVideoDownloadFailed"));
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onVideoDownloadSuccess() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f85853a.getClass().getSimpleName());
                    sb2.append(" onVideoDownloadSuccess:");
                    FullScreenVideoAd fullScreenVideoAd = this.f85853a.f85955c;
                    sb2.append(fullScreenVideoAd != null ? Boolean.valueOf(fullScreenVideoAd.isReady()) : "null");
                    SigmobLog.i(sb2.toString());
                    if (this.f85853a.f85954b.getFillType() == 0) {
                        e.a aVar = this.f85853a.f85953a;
                        if (aVar != null) {
                            aVar.onInterstitialAdLoadSuccess();
                        }
                        this.f85853a.f85956d = true;
                    }
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void playCompletion() {
                    SigmobLog.i(this.f85853a.getClass().getSimpleName() + " playCompletion()");
                    e.a aVar = this.f85853a.f85953a;
                    if (aVar != null) {
                        aVar.onInterstitialAdPlayComplete();
                    }
                }
            });
            try {
                Object obj = map.get(WMConstants.BID_FLOOR);
                if (obj != null) {
                    this.f85955c.setBidFloor(((Integer) obj).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            BidInfo lastBidInfo = this.f85954b.getLastBidInfo();
            if (lastBidInfo != null) {
                SigmobLog.i(d.class.getSimpleName() + " bidInfo:" + lastBidInfo.toString());
                this.f85955c.setRequestParameters(new RequestParameters.Builder().addCustExt("A", lastBidInfo.getWinner()).addCustExt(SDKManager.ALGO_B_AES_SHA256_RSA, lastBidInfo.getECpm()).addCustExt(SDKManager.ALGO_C_RFU, lastBidInfo.getBidType()).addCustExt("S", lastBidInfo.getExposureStatus()).addCustExt(SDKManager.ALGO_D_RFU, lastBidInfo.getClickStatus()).addCustExt("H", lastBidInfo.getFailReason()).addCustExt("I", lastBidInfo.getSecondPrice()).addCustExt("J", lastBidInfo.getBidTime()).addCustExt("K", lastBidInfo.getRequestId()).build());
            }
            this.f85955c.load();
        } catch (Throwable th) {
            e.a aVar = this.f85953a;
            if (aVar != null) {
                aVar.onInterstitialAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "bd catch error load " + th.getMessage()));
            }
        }
    }

    static /* synthetic */ void a(d dVar, WMAdapterError wMAdapterError) {
        e.a aVar = dVar.f85953a;
        if (aVar != null) {
            aVar.onInterstitialAdFailToLoad(wMAdapterError);
        }
    }

    private void a(WMAdapterError wMAdapterError) {
        e.a aVar = this.f85953a;
        if (aVar != null) {
            aVar.onInterstitialAdFailToPlaying(wMAdapterError);
        }
    }

    @Override // com.windmill.baidu.e
    public final void a(String str, LinkedHashMap<String, Object> linkedHashMap) {
        FullScreenVideoAd fullScreenVideoAd = this.f85955c;
        if (fullScreenVideoAd != null) {
            a.a(fullScreenVideoAd, str, linkedHashMap);
        }
    }
}
