package com.windmill.sdk.custom;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdConnector;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.utils.h;
import com.windmill.sdk.widget.SpecialActivity;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WMCustomSplashAdapter extends WMAdBaseAdapter implements IWMCustomSplashEvent {
    public static FrameLayout aPageVGroup = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f87039h = "WMCustomSplashAdapter";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Boolean f87040i = Boolean.FALSE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f87041j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f87042k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private WeakReference<IWMCustomSplashEvent> f87043l;

    /* JADX INFO: renamed from: com.windmill.sdk.custom.WMCustomSplashAdapter$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f87049a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.windmill.sdk.strategy.a f87050b;

        AnonymousClass2(final Activity val$activity, final com.windmill.sdk.strategy.a val$adStrategy) {
            this.f87049a = val$activity;
            this.f87050b = val$adStrategy;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                FrameLayout frameLayout = WMCustomSplashAdapter.aPageVGroup;
                if (frameLayout != null && frameLayout.getTag() != null && (WMCustomSplashAdapter.aPageVGroup.getTag() instanceof IWMCustomSplashEvent)) {
                    WMCustomSplashAdapter.this.f87043l = new WeakReference((IWMCustomSplashEvent) WMCustomSplashAdapter.aPageVGroup.getTag());
                }
                WMCustomSplashAdapter.this.showAd(this.f87049a, WMCustomSplashAdapter.aPageVGroup, this.f87050b.aR());
            } catch (Throwable unused) {
            }
        }
    }

    private IWMCustomSplashEvent f() {
        WeakReference<IWMCustomSplashEvent> weakReference = this.f87043l;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f87041j) {
            return;
        }
        WMAdConnector wMAdConnectorA = a();
        if (h() && getRewardType() == 1 && !this.f87042k && wMAdConnectorA != null) {
            this.f87042k = true;
            wMAdConnectorA.adapterDidRewardAd(this, this.f86993a, true);
        }
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidCloseAd(this, this.f86993a);
        }
        this.f87041j = true;
    }

    private boolean h() {
        com.windmill.sdk.strategy.a aVar = this.f86993a;
        return aVar != null && aVar.aK() == 1;
    }

    @Override // com.windmill.sdk.custom.IWMCustomBaseEvent
    public final void callLoadBiddingSuccess(BidPrice price) {
        if (getBiddingType() == 1) {
            SigmobLog.i(f87039h + "---callLoadBiddingSuccess " + price.getPrice());
            this.f86998f = System.currentTimeMillis();
            this.f86995c = true;
            if (TextUtils.isEmpty(this.f86993a.Q()) && !TextUtils.isEmpty(price.getCurrency())) {
                this.f86993a.e(price.getCurrency());
            }
            if (!TextUtils.isEmpty(price.pecpm)) {
                this.f86993a.g(price.pecpm);
                SigmobLog.i(f87039h + "---callLoadBiddingSuccess  pecpm " + price.pecpm);
            }
            com.windmill.sdk.strategy.a aVar = this.f86993a;
            aVar.f87098h = price.is_pdb;
            aVar.f87099i = price.pdb_priority;
            Map<String, String> saasChannelInfo = getSaasChannelInfo();
            if (saasChannelInfo != null) {
                this.f86993a.b(saasChannelInfo);
            }
            this.f86993a.a(new com.windmill.sdk.strategy.a.C1081a("", "", String.valueOf(hashCode()) + System.currentTimeMillis(), "", null, 0, null));
            WMAdConnector wMAdConnectorA = a();
            if (wMAdConnectorA != null) {
                wMAdConnectorA.adapterDidLoadBiddingPriceSuccess(this, this.f86993a, price.getPrice());
            }
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomBaseEvent
    public final void callLoadFail(WMAdapterError adapterError) {
        SigmobLog.i(f87039h + "---callLoadFail()");
        this.f86997e = true;
        if (this.f86995c || this.f87040i.booleanValue()) {
            return;
        }
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidFailToLoadAd(this, this.f86993a, adapterError);
        }
        this.f87040i = Boolean.TRUE;
    }

    @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
    public final void callLoadSuccess() {
        SigmobLog.i(f87039h + "---callLoadSuccess()");
        this.f86998f = System.currentTimeMillis();
        this.f86996d = true;
        c();
        d();
        Map<String, String> saasChannelInfo = getSaasChannelInfo();
        if (saasChannelInfo != null) {
            this.f86993a.b(saasChannelInfo);
        }
        this.f86993a.a(getChannelObject(), com.windmill.sdk.strategy.a.f87082o.contains(Integer.valueOf(this.f86993a.aN())));
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidLoadAdReady(this, this.f86993a);
        }
        if (this.f86995c || wMAdConnectorA == null) {
            return;
        }
        wMAdConnectorA.adapterDidLoadAdSuccessAd(this, this.f86993a);
    }

    @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
    public final void callSplashAdClick() {
        SigmobLog.i(f87039h + "---callSplashAdClick()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidAdClick(this, this.f86993a, Collections.emptyMap());
        }
        if (h() && getRewardType() == 2 && !this.f87042k && wMAdConnectorA != null) {
            this.f87042k = true;
            wMAdConnectorA.adapterDidRewardAd(this, this.f86993a, true);
        }
        IWMCustomSplashEvent iWMCustomSplashEventF = f();
        if (iWMCustomSplashEventF != null) {
            iWMCustomSplashEventF.callSplashAdClick();
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
    public final void callSplashAdClosed() {
        SigmobLog.i(f87039h + "---callSplashAdClosed()");
        g();
        IWMCustomSplashEvent iWMCustomSplashEventF = f();
        if (iWMCustomSplashEventF != null) {
            iWMCustomSplashEventF.callSplashAdClosed();
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
    public final void callSplashAdShow() {
        SigmobLog.i(f87039h + "---callSplashAdShow()");
        IWMCustomSplashEvent iWMCustomSplashEventF = f();
        if (iWMCustomSplashEventF != null) {
            iWMCustomSplashEventF.callSplashAdShow();
        }
        Map<String, Object> networkOption = getNetworkOption();
        if (networkOption != null) {
            this.f86993a.d(networkOption);
        }
        this.f86993a.a(getChannelObject(), com.windmill.sdk.strategy.a.f87082o.contains(Integer.valueOf(this.f86993a.aN())));
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidStartPlayingAd(this, this.f86993a, Collections.emptyMap());
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
    public void callSplashAdShowError(WMAdapterError adapterError) {
        SigmobLog.i(f87039h + "---callSplashAdShowError()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidFailToPlayingAd(this, this.f86993a, adapterError);
        }
        IWMCustomSplashEvent iWMCustomSplashEventF = f();
        if (iWMCustomSplashEventF != null) {
            iWMCustomSplashEventF.callSplashAdShowError(adapterError);
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
    public void callSplashAdSkipped() {
        SigmobLog.i(f87039h + "---callSplashAdSkipped()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidSkipAd(this, this.f86993a);
        }
        g();
        IWMCustomSplashEvent iWMCustomSplashEventF = f();
        if (iWMCustomSplashEventF != null) {
            iWMCustomSplashEventF.callSplashAdSkipped();
        }
    }

    public int getSplashType() {
        try {
            com.windmill.sdk.strategy.a aVar = this.f86993a;
            if (aVar == null || aVar.aR() == null) {
                return 0;
            }
            return WMBidUtil.parseInt(this.f86993a.aR().get(WMConstants.SPLASH_TYPE)).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public abstract void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> localExtra, Map<String, Object> serverExtra);

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void loadCustomAd(Context context, ViewGroup viewGroup, WindMillAdRequest adRequest, com.windmill.sdk.strategy.a adStrategy) {
        SigmobLog.i(f87039h + "---loadCustomAd---" + adStrategy.aP() + ":" + adStrategy.aW());
        this.f87040i = Boolean.FALSE;
        this.f87041j = false;
        this.f87042k = false;
        loadAd(context, viewGroup, adRequest.getOptions(), adStrategy.aR());
    }

    public abstract void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> serverExtra);

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void showCustomAd(Activity activity, ViewGroup viewGroup, final com.windmill.sdk.strategy.a adStrategy) {
        SigmobLog.i(f87039h + "-----showCustomAd-name: " + adStrategy.aP() + " :" + adStrategy.aW());
        if (!h()) {
            showAd(activity, viewGroup, adStrategy.aR());
            return;
        }
        try {
            if (activity != null) {
                Intent intent = new Intent(activity, (Class<?>) SpecialActivity.class);
                intent.putExtra(MediationConstant.KEY_ADN_NAME, adStrategy.aP());
                SpecialActivity.a(new SpecialActivity.a() { // from class: com.windmill.sdk.custom.WMCustomSplashAdapter.1
                    @Override // com.windmill.sdk.widget.SpecialActivity.a
                    public void a(final Activity splashActivity, final ViewGroup viewGroup2) {
                        if (viewGroup2 != null) {
                            WMLogUtil.i(WMCustomSplashAdapter.f87039h, "----showCustomAd--vg--" + adStrategy.aP() + ":" + adStrategy.aW());
                            viewGroup2.postDelayed(new Runnable() { // from class: com.windmill.sdk.custom.WMCustomSplashAdapter.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        ViewGroup viewGroup3 = viewGroup2;
                                        if (viewGroup3 != null && viewGroup3.getTag() != null && (viewGroup2.getTag() instanceof IWMCustomSplashEvent)) {
                                            WMCustomSplashAdapter.this.f87043l = new WeakReference((IWMCustomSplashEvent) viewGroup2.getTag());
                                        }
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        WMCustomSplashAdapter.this.showAd(splashActivity, viewGroup2, adStrategy.aR());
                                    } catch (Throwable th) {
                                        WMCustomSplashAdapter.this.callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
                                    }
                                }
                            }, 200L);
                        }
                    }

                    @Override // com.windmill.sdk.widget.SpecialActivity.a
                    public void a() {
                        WMCustomSplashAdapter.this.g();
                    }
                });
                activity.startActivity(intent);
            } else {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "showCustomAd activity is null"));
            }
        } catch (Exception e10) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "showCustomAd:" + e10.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void updateAdStrategy(com.windmill.sdk.strategy.a strategy) {
        super.updateAdStrategy(strategy);
    }

    public final void callLoadSuccess(Object adObject) {
        callLoadSuccess();
        h.a(f87039h, adObject, this.f86993a);
    }
}
