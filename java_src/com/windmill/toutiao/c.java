package com.windmill.toutiao;

import android.app.Activity;
import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class c extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WMCustomInterstitialAdapter f87733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TTFullScreenVideoAd f87734b;

    public c(WMCustomInterstitialAdapter wMCustomInterstitialAdapter) {
        this.f87733a = wMCustomInterstitialAdapter;
    }

    private void b(WMAdapterError wMAdapterError) {
        WMCustomInterstitialAdapter wMCustomInterstitialAdapter = this.f87733a;
        if (wMCustomInterstitialAdapter != null) {
            wMCustomInterstitialAdapter.callVideoAdPlayError(wMAdapterError);
        }
    }

    @Override // com.windmill.toutiao.d
    public final Object a() {
        return this.f87734b;
    }

    @Override // com.windmill.toutiao.d
    public final Map<String, Object> c() {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f87734b;
        if (tTFullScreenVideoAd != null) {
            return tTFullScreenVideoAd.getMediaExtraInfo();
        }
        return null;
    }

    @Override // com.windmill.toutiao.d
    public final void d() {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f87734b;
        if (tTFullScreenVideoAd != null) {
            tTFullScreenVideoAd.getMediationManager().destroy();
            this.f87734b = null;
        }
        this.f87733a = null;
    }

    @Override // com.windmill.toutiao.d
    public final void a(double d10) {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f87734b;
        if (tTFullScreenVideoAd != null) {
            tTFullScreenVideoAd.win(Double.valueOf(d10));
        }
    }

    @Override // com.windmill.toutiao.d
    public final boolean b() {
        return this.f87734b != null && SystemClock.elapsedRealtime() < this.f87734b.getExpirationTimestamp();
    }

    @Override // com.windmill.toutiao.d
    public final void a(double d10, String str, String str2) {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f87734b;
        if (tTFullScreenVideoAd != null) {
            tTFullScreenVideoAd.loss(Double.valueOf(d10), str, str2);
        }
    }

    @Override // com.windmill.toutiao.d
    public final void a(Activity activity, Map<String, Object> map) {
        Object obj;
        try {
            if (this.f87734b == null) {
                b(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "mTTFullScreenVideoAd is null when show"));
                return;
            }
            if (this.f87733a.getBiddingType() == 1 && (obj = map.get("eCpm")) != null) {
                this.f87734b.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
            }
            this.f87734b.setDownloadListener(new TTAppDownloadListener() { // from class: com.windmill.toutiao.c.2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private boolean f87738b = false;

                @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                public final void onDownloadActive(long j10, long j11, String str, String str2) {
                    WMCustomInterstitialAdapter wMCustomInterstitialAdapter;
                    if (this.f87738b || (wMCustomInterstitialAdapter = c.this.f87733a) == null) {
                        return;
                    }
                    this.f87738b = true;
                    wMCustomInterstitialAdapter.callVideoAdClickDownload();
                }

                @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                public final void onDownloadFailed(long j10, long j11, String str, String str2) {
                }

                @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                public final void onDownloadFinished(long j10, String str, String str2) {
                }

                @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                public final void onDownloadPaused(long j10, long j11, String str, String str2) {
                }

                @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                public final void onIdle() {
                }

                @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                public final void onInstalled(String str, String str2) {
                }
            });
            this.f87734b.showFullScreenVideoAd(activity);
        } catch (Throwable th) {
            b(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "TT catch error when show " + th.getMessage()));
        }
    }

    final void a(WMAdapterError wMAdapterError) {
        WMCustomInterstitialAdapter wMCustomInterstitialAdapter = this.f87733a;
        if (wMCustomInterstitialAdapter != null) {
            wMCustomInterstitialAdapter.callLoadFail(wMAdapterError);
        }
    }

    @Override // com.windmill.toutiao.d
    public final void a(String str, Map<String, Object> map) {
        try {
            TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener = new TTAdNative.FullScreenVideoAdListener() { // from class: com.windmill.toutiao.c.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
                public final void onError(int i10, String str2) {
                    c.this.a(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
                public final void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
                    WMCustomInterstitialAdapter wMCustomInterstitialAdapter;
                    Object obj;
                    c.this.f87734b = tTFullScreenVideoAd;
                    tTFullScreenVideoAd.setFullScreenVideoAdInteractionListener(new TTFullScreenVideoAd.FullScreenVideoAdInteractionListener() { // from class: com.windmill.toutiao.c.1.1
                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onAdClose() {
                            WMCustomInterstitialAdapter wMCustomInterstitialAdapter2 = c.this.f87733a;
                            if (wMCustomInterstitialAdapter2 != null) {
                                wMCustomInterstitialAdapter2.callVideoAdClosed();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onAdShow() {
                            WMCustomInterstitialAdapter wMCustomInterstitialAdapter2 = c.this.f87733a;
                            if (wMCustomInterstitialAdapter2 != null) {
                                wMCustomInterstitialAdapter2.callVideoAdShow();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onAdVideoBarClick() {
                            WMCustomInterstitialAdapter wMCustomInterstitialAdapter2 = c.this.f87733a;
                            if (wMCustomInterstitialAdapter2 != null) {
                                wMCustomInterstitialAdapter2.callVideoAdClick();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onSkippedVideo() {
                            WMCustomInterstitialAdapter wMCustomInterstitialAdapter2 = c.this.f87733a;
                            if (wMCustomInterstitialAdapter2 != null) {
                                wMCustomInterstitialAdapter2.callVideoAdSkipped();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onVideoComplete() {
                            WMCustomInterstitialAdapter wMCustomInterstitialAdapter2 = c.this.f87733a;
                            if (wMCustomInterstitialAdapter2 != null) {
                                wMCustomInterstitialAdapter2.callVideoAdPlayComplete();
                            }
                        }
                    });
                    c cVar = c.this;
                    if (cVar.f87734b != null && (wMCustomInterstitialAdapter = cVar.f87733a) != null && wMCustomInterstitialAdapter.getBiddingType() == 1) {
                        Map<String, Object> mediaExtraInfo = c.this.f87734b.getMediaExtraInfo();
                        c.this.f87733a.callLoadBiddingSuccess(new BidPrice((mediaExtraInfo == null || (obj = mediaExtraInfo.get("price")) == null) ? "0" : String.valueOf(obj)));
                    }
                    WMCustomInterstitialAdapter wMCustomInterstitialAdapter2 = c.this.f87733a;
                    if (wMCustomInterstitialAdapter2 == null || wMCustomInterstitialAdapter2.getFillType() != 1) {
                        return;
                    }
                    c.this.f87733a.callLoadSuccess(tTFullScreenVideoAd);
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
                public final void onFullScreenVideoCached() {
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
                public final void onFullScreenVideoCached(TTFullScreenVideoAd tTFullScreenVideoAd) {
                    WMCustomInterstitialAdapter wMCustomInterstitialAdapter = c.this.f87733a;
                    if (wMCustomInterstitialAdapter == null || wMCustomInterstitialAdapter.getFillType() != 0) {
                        return;
                    }
                    c.this.f87733a.callLoadSuccess(tTFullScreenVideoAd);
                }
            };
            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setSupportDeepLink(true).setUserID("");
            Object obj = map.get("templateType");
            if (obj == null || obj.equals("") || obj.equals("0")) {
                userID.setExpressViewAcceptedSize(500.0f, 500.0f);
            }
            if (this.f87733a.getBiddingType() == 0) {
                userID.withBid(this.f87733a.getHbResponseStr());
            }
            tTAdNative.loadFullScreenVideoAd(userID.build(), fullScreenVideoAdListener);
        } catch (Throwable th) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "TT catch error load " + th.getMessage()));
        }
    }
}
