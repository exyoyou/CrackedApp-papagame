package com.windmill.gromore;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdSlot;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationAdEcpmInfo;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationFullScreenManager;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class f extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WMCustomInterstitialAdapter f86255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TTFullScreenVideoAd f86256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f86257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    q f86258d;

    public f(WMCustomInterstitialAdapter wMCustomInterstitialAdapter, int i10) {
        this.f86255a = wMCustomInterstitialAdapter;
        this.f86257c = i10;
    }

    @Override // com.windmill.gromore.g
    public final Object a() {
        return this.f86256b;
    }

    @Override // com.windmill.gromore.g
    public final Map<String, Object> b() {
        MediationFullScreenManager mediationManager;
        MediationAdEcpmInfo showEcpm;
        HashMap map = new HashMap();
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f86256b;
        if (tTFullScreenVideoAd != null && (mediationManager = tTFullScreenVideoAd.getMediationManager()) != null && (showEcpm = mediationManager.getShowEcpm()) != null) {
            map.put(MediationConstant.KEY_ADN_NAME, showEcpm.getSdkName());
            map.put("adnNetworkRitId", showEcpm.getSlotId());
            map.put("adnEcpm", showEcpm.getEcpm());
        }
        return map;
    }

    @Override // com.windmill.gromore.g
    public final boolean c() {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f86256b;
        return (tTFullScreenVideoAd == null || tTFullScreenVideoAd.getMediationManager() == null || !this.f86256b.getMediationManager().isReady()) ? false : true;
    }

    @Override // com.windmill.gromore.g
    public final void d() {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f86256b;
        if (tTFullScreenVideoAd != null) {
            tTFullScreenVideoAd.getMediationManager().destroy();
            this.f86256b = null;
        }
        this.f86255a = null;
    }

    private void b(WMAdapterError wMAdapterError) {
        WMCustomInterstitialAdapter wMCustomInterstitialAdapter = this.f86255a;
        if (wMCustomInterstitialAdapter != null) {
            wMCustomInterstitialAdapter.callVideoAdPlayError(wMAdapterError);
        }
    }

    @Override // com.windmill.gromore.g
    public final void a(double d10) {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f86256b;
        if (tTFullScreenVideoAd != null) {
            tTFullScreenVideoAd.win(Double.valueOf(d10));
        }
    }

    @Override // com.windmill.gromore.g
    public final void a(double d10, String str, String str2) {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f86256b;
        if (tTFullScreenVideoAd != null) {
            tTFullScreenVideoAd.loss(Double.valueOf(d10), str, str2);
        }
    }

    @Override // com.windmill.gromore.g
    public final void a(Activity activity, Map<String, Object> map) {
        Object obj;
        try {
            if (this.f86256b == null) {
                b(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "mTTFullScreenVideoAd is null when show"));
                return;
            }
            if (this.f86255a.getBiddingType() == 1 && (obj = map.get("eCpm")) != null) {
                this.f86256b.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
            }
            this.f86256b.setDownloadListener(new TTAppDownloadListener() { // from class: com.windmill.gromore.f.2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private boolean f86263b = false;

                @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                public final void onDownloadActive(long j10, long j11, String str, String str2) {
                    WMCustomInterstitialAdapter wMCustomInterstitialAdapter;
                    if (this.f86263b || (wMCustomInterstitialAdapter = f.this.f86255a) == null) {
                        return;
                    }
                    this.f86263b = true;
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
            this.f86256b.showFullScreenVideoAd(activity);
        } catch (Throwable th) {
            b(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "TT catch error when show " + th.getMessage()));
        }
    }

    final void a(WMAdapterError wMAdapterError) {
        WMCustomInterstitialAdapter wMCustomInterstitialAdapter = this.f86255a;
        if (wMCustomInterstitialAdapter != null) {
            wMCustomInterstitialAdapter.callLoadFail(wMAdapterError);
        }
    }

    @Override // com.windmill.gromore.g
    public final void a(final String str, Map<String, Object> map) {
        try {
            TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener = new TTAdNative.FullScreenVideoAdListener() { // from class: com.windmill.gromore.f.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
                public final void onError(int i10, String str2) {
                    WMLogUtil.i(AnonymousClass1.class.getSimpleName() + "-----Gro-message: " + str2);
                    f.this.a(new WMAdapterError(i10, GroAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
                public final void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
                    WMCustomInterstitialAdapter wMCustomInterstitialAdapter;
                    f.this.f86256b = tTFullScreenVideoAd;
                    tTFullScreenVideoAd.setFullScreenVideoAdInteractionListener(new TTFullScreenVideoAd.FullScreenVideoAdInteractionListener() { // from class: com.windmill.gromore.f.1.1
                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onAdClose() {
                            f fVar = f.this;
                            if (fVar.f86255a != null) {
                                TTFullScreenVideoAd tTFullScreenVideoAd2 = fVar.f86256b;
                                if (tTFullScreenVideoAd2 != null && tTFullScreenVideoAd2.getMediationManager() != null) {
                                    f fVar2 = f.this;
                                    fVar2.f86255a.setGroEcpm(n.a(fVar2.f86256b.getMediationManager().getShowEcpm()));
                                }
                                f.this.f86255a.callVideoAdClosed();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onAdShow() {
                            f fVar = f.this;
                            if (fVar.f86255a != null) {
                                TTFullScreenVideoAd tTFullScreenVideoAd2 = fVar.f86256b;
                                if (tTFullScreenVideoAd2 != null && tTFullScreenVideoAd2.getMediationManager() != null) {
                                    f fVar2 = f.this;
                                    fVar2.f86255a.setGroEcpm(n.a(fVar2.f86256b.getMediationManager().getShowEcpm()));
                                }
                                f.this.f86255a.callVideoAdShow();
                                f fVar3 = f.this;
                                c.a(fVar3.f86255a, fVar3.f86258d);
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onAdVideoBarClick() {
                            f fVar = f.this;
                            if (fVar.f86255a != null) {
                                TTFullScreenVideoAd tTFullScreenVideoAd2 = fVar.f86256b;
                                if (tTFullScreenVideoAd2 != null && tTFullScreenVideoAd2.getMediationManager() != null) {
                                    f fVar2 = f.this;
                                    fVar2.f86255a.setGroEcpm(n.a(fVar2.f86256b.getMediationManager().getShowEcpm()));
                                }
                                f.this.f86255a.callVideoAdClick();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onSkippedVideo() {
                            f fVar = f.this;
                            if (fVar.f86255a != null) {
                                TTFullScreenVideoAd tTFullScreenVideoAd2 = fVar.f86256b;
                                if (tTFullScreenVideoAd2 != null && tTFullScreenVideoAd2.getMediationManager() != null) {
                                    f fVar2 = f.this;
                                    fVar2.f86255a.setGroEcpm(n.a(fVar2.f86256b.getMediationManager().getShowEcpm()));
                                }
                                f.this.f86255a.callVideoAdSkipped();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
                        public final void onVideoComplete() {
                            f fVar = f.this;
                            if (fVar.f86255a != null) {
                                TTFullScreenVideoAd tTFullScreenVideoAd2 = fVar.f86256b;
                                if (tTFullScreenVideoAd2 != null && tTFullScreenVideoAd2.getMediationManager() != null) {
                                    f fVar2 = f.this;
                                    fVar2.f86255a.setGroEcpm(n.a(fVar2.f86256b.getMediationManager().getShowEcpm()));
                                }
                                f.this.f86255a.callVideoAdPlayComplete();
                            }
                        }
                    });
                    f fVar = f.this;
                    if (fVar.f86256b != null && (wMCustomInterstitialAdapter = fVar.f86255a) != null && wMCustomInterstitialAdapter.getBiddingType() == 1) {
                        f fVar2 = f.this;
                        fVar2.f86258d = n.a(fVar2.f86256b, fVar2.f86257c, str, 0);
                        BidPrice bidPrice = new BidPrice(String.valueOf(f.this.f86258d.f86346a));
                        f fVar3 = f.this;
                        WMCustomInterstitialAdapter wMCustomInterstitialAdapter2 = fVar3.f86255a;
                        q qVar = fVar3.f86258d;
                        wMCustomInterstitialAdapter2.setGroC2sPriceInfo(qVar.f86346a, qVar.f86350e, qVar.f86349d, qVar.f86353h, qVar.f86351f, qVar.f86354i);
                        f.this.f86255a.callLoadBiddingSuccess(bidPrice);
                    }
                    WMCustomInterstitialAdapter wMCustomInterstitialAdapter3 = f.this.f86255a;
                    if (wMCustomInterstitialAdapter3 == null || wMCustomInterstitialAdapter3.getFillType() != 1) {
                        return;
                    }
                    f.this.f86255a.callLoadSuccess();
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
                public final void onFullScreenVideoCached() {
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
                public final void onFullScreenVideoCached(TTFullScreenVideoAd tTFullScreenVideoAd) {
                    WMLogUtil.i(AnonymousClass1.class.getSimpleName() + "---Gro---onFullScreenVideoCached ");
                    WMCustomInterstitialAdapter wMCustomInterstitialAdapter = f.this.f86255a;
                    if (wMCustomInterstitialAdapter == null || wMCustomInterstitialAdapter.getFillType() != 0) {
                        return;
                    }
                    f.this.f86255a.callLoadSuccess();
                }
            };
            TTAdNative tTAdNative = GroAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setSupportDeepLink(true).setUserID("");
            Object obj = map.get("templateType");
            if (obj == null || obj.equals("") || obj.equals("0")) {
                userID.setExpressViewAcceptedSize(500.0f, 500.0f);
            }
            userID.setMediationAdSlot(new MediationAdSlot.Builder().setExtraObject("show_adn_load_error_detail", Boolean.TRUE).build());
            tTAdNative.loadFullScreenVideoAd(userID.build(), fullScreenVideoAdListener);
        } catch (Throwable th) {
            a(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "TT catch error load " + th.getMessage()));
        }
    }
}
