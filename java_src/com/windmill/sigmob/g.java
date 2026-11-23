package com.windmill.sigmob;

import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAd;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAdRequest;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class g extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WindNewInterstitialAd f87643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b.a f87644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WMCustomInterstitialAdapter f87645c;

    public g(WMCustomInterstitialAdapter wMCustomInterstitialAdapter, b.a aVar) {
        this.f87645c = wMCustomInterstitialAdapter;
        this.f87644b = aVar;
    }

    @Override // com.windmill.sigmob.b
    public final void a(String str, Map<String, Object> map, Map<String, Object> map2) {
        try {
            Map<String, Object> mapA = a.a("SigNewInterstitialAd#", this.f87645c);
            WindNewInterstitialAdRequest windNewInterstitialAdRequest = new WindNewInterstitialAdRequest(str, this.f87645c.getUserId(), map);
            windNewInterstitialAdRequest.setExtOptions(mapA);
            WindNewInterstitialAd windNewInterstitialAd = new WindNewInterstitialAd(windNewInterstitialAdRequest);
            this.f87643a = windNewInterstitialAd;
            windNewInterstitialAd.setWindNewInterstitialAdListener(new WindNewInterstitialAdListener() { // from class: com.windmill.sigmob.g.1
                @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
                public final void onInterstitialAdClicked(String str2) {
                    b.a aVar = g.this.f87644b;
                    if (aVar == null) {
                        return;
                    }
                    aVar.onInterstitialAdClick();
                }

                @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
                public final void onInterstitialAdClosed(String str2) {
                    b.a aVar = g.this.f87644b;
                    if (aVar == null) {
                        return;
                    }
                    aVar.onInterstitialAdClose();
                }

                @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
                public final void onInterstitialAdLoadError(WindAdError windAdError, String str2) {
                    b.a aVar = g.this.f87644b;
                    if (aVar == null) {
                        return;
                    }
                    aVar.onInterstitialAdFailToLoad(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
                }

                @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
                public final void onInterstitialAdLoadSuccess(String str2) {
                    b.a aVar = g.this.f87644b;
                    if (aVar == null) {
                        return;
                    }
                    aVar.onInterstitialAdLoadSuccess();
                }

                @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
                public final void onInterstitialAdPreLoadFail(String str2) {
                }

                @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
                public final void onInterstitialAdPreLoadSuccess(String str2) {
                    WindNewInterstitialAd windNewInterstitialAd2;
                    g gVar = g.this;
                    b.a aVar = gVar.f87644b;
                    if (aVar == null || (windNewInterstitialAd2 = gVar.f87643a) == null) {
                        return;
                    }
                    aVar.adapterDidLoadBiddingPriceSuccess(windNewInterstitialAd2.getEcpm());
                }

                @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
                public final void onInterstitialAdShow(String str2) {
                    b.a aVar = g.this.f87644b;
                    if (aVar == null) {
                        return;
                    }
                    aVar.onInterstitialAdStartPlaying();
                }

                @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
                public final void onInterstitialAdShowError(WindAdError windAdError, String str2) {
                    b.a aVar = g.this.f87644b;
                    if (aVar == null) {
                        return;
                    }
                    aVar.onInterstitialAdFailToPlaying(new WMAdapterError(windAdError.getErrorCode(), windAdError.getMessage()));
                }
            });
            int biddingType = this.f87645c.getBiddingType();
            if (biddingType == 0) {
                this.f87643a.loadAd(this.f87645c.getHbResponseStr());
                return;
            }
            if (biddingType != 1) {
                this.f87643a.loadAd();
                return;
            }
            try {
                Object obj = map2.get(WMConstants.BID_FLOOR);
                if (obj != null) {
                    this.f87643a.setBidFloor(((Integer) obj).intValue());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f87643a.setCurrency(WindAds.CNY);
            this.f87643a.loadAd();
        } catch (Throwable th) {
            b.a aVar = this.f87644b;
            if (aVar != null) {
                aVar.onInterstitialAdFailToLoad(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.sigmob.b
    public final void b() {
        WindNewInterstitialAd windNewInterstitialAd = this.f87643a;
        if (windNewInterstitialAd == null) {
            return;
        }
        windNewInterstitialAd.destroy();
        this.f87643a = null;
    }

    @Override // com.windmill.sigmob.b
    public final Object c() {
        return this.f87643a;
    }

    @Override // com.windmill.sigmob.b
    public final Map<String, String> d() {
        WindNewInterstitialAd windNewInterstitialAd = this.f87643a;
        if (windNewInterstitialAd != null) {
            return windNewInterstitialAd.getSaasOptions();
        }
        return null;
    }

    @Override // com.windmill.sigmob.b
    public final void a(HashMap<String, String> map, Map<String, Object> map2) {
        try {
            WindNewInterstitialAd windNewInterstitialAd = this.f87643a;
            if (windNewInterstitialAd == null || !windNewInterstitialAd.isReady()) {
                b.a aVar = this.f87644b;
                if (aVar != null) {
                    aVar.onInterstitialAdFailToPlaying(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "windInterstitialAd is not ready"));
                    return;
                }
                return;
            }
            if (this.f87645c.getBiddingType() == 1) {
                try {
                    Object obj = map2.get("eCpm");
                    if (obj != null) {
                        this.f87643a.setBidEcpm(WMBidUtil.parseInt(obj).intValue());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f87643a.show(map);
        } catch (Throwable th) {
            b.a aVar2 = this.f87644b;
            if (aVar2 != null) {
                aVar2.onInterstitialAdFailToPlaying(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
            }
        }
    }

    @Override // com.windmill.sigmob.b
    public final void b(Map<String, Object> map) {
        WindNewInterstitialAd windNewInterstitialAd = this.f87643a;
        if (windNewInterstitialAd == null) {
            return;
        }
        windNewInterstitialAd.sendLossNotificationWithInfo(map);
    }

    @Override // com.windmill.sigmob.b
    public final void a(Map<String, Object> map) {
        WindNewInterstitialAd windNewInterstitialAd = this.f87643a;
        if (windNewInterstitialAd == null) {
            return;
        }
        windNewInterstitialAd.sendWinNotificationWithInfo(map);
    }

    @Override // com.windmill.sigmob.b
    public final boolean a() {
        WindNewInterstitialAd windNewInterstitialAd = this.f87643a;
        if (windNewInterstitialAd == null) {
            return false;
        }
        return windNewInterstitialAd.isReady();
    }
}
