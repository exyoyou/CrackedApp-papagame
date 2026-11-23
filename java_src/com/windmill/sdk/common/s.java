package com.windmill.sdk.common;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ViewUtil;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdConnector;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMAdBaseAdapter;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.models.FreEntity;
import com.windmill.sdk.point.PointEntityWind;
import com.windmill.sdk.splash.IWMSplashEyeAd;
import com.windmill.sdk.splash.WMSplashAdRequest;
import com.windmill.sdk.strategy.WMSdkConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class s extends l implements WMAdConnector {
    private static WeakReference<ExecutorService> M;
    private ImageView A;
    private int B;
    private a D;
    private boolean E;
    private ViewGroup F;
    private Handler H;
    private long J;
    private com.windmill.sdk.strategy.s.b K;
    private com.windmill.sdk.strategy.l.a L;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private RelativeLayout f86866w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private RelativeLayout f86867x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TextView f86868y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private TextView f86869z;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f86864u = "";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f86865v = true;
    private long C = BaseCloudFileManager.ACK_TIMEOUT;
    private boolean G = false;
    private boolean I = false;

    /* JADX INFO: renamed from: com.windmill.sdk.common.s$9, reason: invalid class name */
    static /* synthetic */ class AnonymousClass9 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f86907a;

        static {
            int[] iArr = new int[l.b.values().length];
            f86907a = iArr;
            try {
                iArr[l.b.WindFilterKeepGoing.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86907a[l.b.WindFilterInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86907a[l.b.WindFilterParameter.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86907a[l.b.WindFilterGdpr.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f86907a[l.b.WindFilterLoadingBreak.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f86907a[l.b.WindFilterLoadInterval.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public interface a {
        void onSplashAdClicked(AdInfo adInfo);

        void onSplashAdFailToLoad(WindMillError error, String placementId, boolean isAutoLoad);

        void onSplashAdFailToPresent(WindMillError error, String placementId);

        void onSplashAdSuccessLoad(String placementId);

        void onSplashAdSuccessPresent(AdInfo adInfo);

        void onSplashClosed(AdInfo adInfo, IWMSplashEyeAd splashEyeAd);
    }

    interface b {
        void a(WindMillError error);

        boolean a(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy);
    }

    public s(Activity activity, WMSplashAdRequest request, a splashListener) {
        a(activity);
        this.f86735o = request;
        this.D = splashListener;
        this.E = request.isDisableAutoHideAd();
        a(WindMillAd.sharedAds().getTobidHandlerLooper());
        this.f86724d = new ArrayList();
        this.f86734n = new HashMap();
        this.f86725e = new HashMap();
        this.J = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        try {
            this.G = false;
            a(new b() { // from class: com.windmill.sdk.common.s.11
                @Override // com.windmill.sdk.common.s.b
                public boolean a(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a adStrategy) {
                    if (adStrategy != null) {
                        try {
                            if (adStrategy.s() == 5) {
                                return false;
                            }
                        } catch (Exception e10) {
                            WindMillError windAdError = WindMillError.getWindAdError(WindMillError.ERROR_AD_PLAY.getErrorCode());
                            if (windAdError != null) {
                                windAdError.setMessage(e10.getMessage());
                                s sVar = s.this;
                                sVar.b(windAdError, sVar.f86735o.getPlacementId());
                            }
                            return false;
                        }
                    }
                    WindMillAdRequest windMillAdRequest = s.this.f86735o;
                    if (!TextUtils.isEmpty(windMillAdRequest instanceof WMSplashAdRequest ? ((WMSplashAdRequest) windMillAdRequest).getAppTitle() : null) || s.this.F == null) {
                        s.this.t();
                    }
                    s.this.s();
                    if (s.this.f86867x != null) {
                        s.this.f86867x.setVisibility(0);
                    }
                    adStrategy.aF();
                    s.this.J = 0L;
                    s.this.a((WMAdBaseAdapter) null, "vopen", adStrategy, (Map<String, String>) null);
                    if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                        s.this.b(adStrategy, adapter);
                    } else {
                        s.this.a(new Runnable() { // from class: com.windmill.sdk.common.s.11.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (s.this.f86866w != null) {
                                    adapter.showInnerAd(s.this.f(), s.this.f86866w, adStrategy);
                                } else {
                                    adapter.showInnerAd(s.this.f(), s.this.f86867x, adStrategy);
                                }
                            }
                        });
                    }
                    s.this.f86721a = AdStatus.AdStatusPlaying;
                    return true;
                }

                @Override // com.windmill.sdk.common.s.b
                public void a(WindMillError error) {
                    s sVar = s.this;
                    sVar.b(error, sVar.f86735o.getPlacementId());
                }
            });
        } catch (Exception e10) {
            WMLogUtil.i("-------WMSplashAdController e " + e10.getMessage());
        }
    }

    private void r() throws Throwable {
        String string = UUID.randomUUID().toString();
        this.f86864u = string;
        this.f86735o.setLoadId(string);
        this.f86726f = false;
        this.L = null;
        this.f86730j = false;
        if (this.f86727g == null) {
            this.f86727g = new com.windmill.sdk.strategy.s(this, new com.windmill.sdk.strategy.s.d() { // from class: com.windmill.sdk.common.s.13
                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.l.a listener) {
                    s.this.L = listener;
                    strategy.f87102l = s.this.I;
                    WMLogUtil.i("----WMSController--adapterPreloadAd: " + s.this.c(strategy) + " " + strategy.aP());
                    if (s.this.c(strategy)) {
                        s.this.b(1, strategy);
                    } else {
                        s.this.a(strategy, false);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void b(com.windmill.sdk.strategy.a strategy) {
                    strategy.f87102l = s.this.I;
                    WMLogUtil.i("-------adapterLoadPassFilterBackup-" + strategy.aP());
                    if (strategy.D() || strategy.C()) {
                        s.this.a(strategy);
                    } else if (s.this.c(strategy)) {
                        s.this.b(3, strategy);
                    } else {
                        s.this.h(strategy);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.s.b listener) {
                    s.this.K = listener;
                    strategy.f87102l = s.this.I;
                    WMLogUtil.i("----WMSController--adapterLoadBiddingPrice: " + s.this.c(strategy) + " " + strategy.aP());
                    if (s.this.c(strategy)) {
                        s.this.b(2, strategy);
                    } else {
                        s.this.a(strategy, true);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.s.a biddingListener) {
                    strategy.f87102l = s.this.I;
                    WMLogUtil.i("----WMSController--adapterLoadBiddingParameter: " + s.this.c(strategy) + " " + strategy.aP());
                    s.this.a(strategy, biddingListener);
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy) {
                    strategy.f87102l = s.this.I;
                    WMLogUtil.i("----WMSController--adapterLoadPassFilter: " + s.this.c(strategy) + " " + strategy.aP());
                    if (strategy.C()) {
                        s.this.a(strategy);
                    } else if (s.this.c(strategy)) {
                        s.this.b(3, strategy);
                    } else {
                        s.this.h(strategy);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, WindMillError windMillError) {
                    s.this.adapterDidFailToLoadAd(null, strategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(List<com.windmill.sdk.strategy.a> adStrategyList, com.windmill.sdk.strategy.q config) {
                    s sVar = s.this;
                    sVar.f86726f = true;
                    sVar.f86724d = adStrategyList;
                    sVar.f86722b = config;
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(WindMillError error, String placementId, List<com.windmill.sdk.strategy.a> failList) {
                    s sVar = s.this;
                    sVar.f86726f = true;
                    if (sVar.K != null) {
                        s.this.K = null;
                    }
                    s sVar2 = s.this;
                    if (sVar2.f86730j) {
                        return;
                    }
                    sVar2.a(failList, sVar2.f86735o);
                    s sVar3 = s.this;
                    sVar3.a(error, sVar3.f86735o.getPlacementId(), (com.windmill.sdk.strategy.a) null, (String) null);
                }
            });
        }
        this.f86727g.a(this.f86735o, this, this.H);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        WindMillAdRequest windMillAdRequest;
        WindMillAdRequest windMillAdRequest2;
        try {
            Activity activityF = f();
            WindMillAdRequest windMillAdRequest3 = this.f86735o;
            if (!TextUtils.isEmpty(windMillAdRequest3 instanceof WMSplashAdRequest ? ((WMSplashAdRequest) windMillAdRequest3).getAppTitle() : null) && activityF != null) {
                c((ViewGroup) activityF.getWindow().getDecorView());
                return;
            }
            if (this.F == null && activityF != null) {
                this.G = true;
                this.F = (ViewGroup) activityF.getWindow().getDecorView();
            }
            if (this.F != null) {
                RelativeLayout relativeLayout = new RelativeLayout(this.F.getContext());
                this.f86867x = relativeLayout;
                relativeLayout.setVisibility(4);
                this.f86867x.setId(ClientMetadata.generateViewId());
                this.F.addView(this.f86867x, new RelativeLayout.LayoutParams(-1, -1));
                this.F.setVisibility(0);
                return;
            }
            WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
            windMillError.copy().setMessage("can't find Activity or ad Container");
            a aVar = this.D;
            if (aVar == null || (windMillAdRequest2 = this.f86735o) == null) {
                return;
            }
            aVar.onSplashAdFailToLoad(windMillError, windMillAdRequest2.getPlacementId(), this.I);
        } catch (Exception unused) {
            a aVar2 = this.D;
            if (aVar2 == null || (windMillAdRequest = this.f86735o) == null) {
                return;
            }
            aVar2.onSplashAdFailToLoad(WindMillError.ERROR_AD_PLAY, windMillAdRequest.getPlacementId(), this.I);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        Activity activityF = f();
        if (activityF != null) {
            Window window = activityF.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.systemUiVisibility = com.umeng.analytics.pro.k.f84752b;
            window.setAttributes(attributes);
            window.addFlags(1024);
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidAdClick(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy, Map<String, String> extra) {
        a(this.f86735o, strategy);
        com.windmill.sdk.utils.m.a("click", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.s.3
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(s.this.f86864u);
                    pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                    Float fL = strategy.l();
                    if (fL != null) {
                        pointEntityWind.setExchange_rate(String.valueOf(fL));
                    }
                    try {
                        pointEntityWind.getOptions().put("request_options", new JSONObject(s.this.f86735o.getOptions()).toString());
                    } catch (Throwable unused) {
                    }
                    pointEntityWind.getOptions().put("active_id", o.d().c());
                    s.this.a(adapter, pointEntityWind);
                }
            }
        });
        a aVar = this.D;
        if (aVar != null) {
            aVar.onSplashAdClicked(this.f86737q);
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidAdClickDownload(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidCloseAd(final WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
        RelativeLayout relativeLayout;
        a(this.f86735o, adStrategy);
        if ((!this.E || this.G) && (relativeLayout = this.f86867x) != null) {
            relativeLayout.setVisibility(8);
        }
        a aVar = this.D;
        if (aVar != null) {
            aVar.onSplashClosed(this.f86737q, adapter.getSplashEyeAd());
        }
        com.windmill.sdk.utils.m.a("close", this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.s.6
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(s.this.f86864u);
                    pointEntityWind.getOptions().put("active_id", o.d().c());
                    s.this.a(adapter, pointEntityWind);
                }
            }
        });
        a(false, adStrategy);
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidFailToLoadAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy, WMAdapterError error) {
        com.windmill.sdk.strategy.l.a aVar;
        WMLogUtil.e("adapterDidFailToLoadAd: strategy = [" + strategy.aP() + "], error = [" + error + "]");
        try {
            com.windmill.sdk.utils.a.a().b(adapter);
        } catch (Exception unused) {
        }
        if (!this.f86726f) {
            if (strategy.F()) {
                com.windmill.sdk.strategy.s.b bVar = this.K;
                if (bVar != null) {
                    bVar.a(strategy, error);
                }
            } else if (strategy.C() && (aVar = this.L) != null) {
                aVar.a(strategy, error, "ready");
            }
            WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            if (wMAdSourceStatusListenerG == null || !strategy.U() || strategy.n() || error.getErrorCode() == WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT.getErrorCode()) {
                return;
            }
            strategy.d(true);
            AdInfo adInfo = new AdInfo(strategy);
            adInfo.fillData(this.f86735o);
            wMAdSourceStatusListenerG.onAdSourceLoadFailed(adInfo, error);
            return;
        }
        WMAdSourceStatusListener wMAdSourceStatusListenerG2 = g();
        if (wMAdSourceStatusListenerG2 != null && strategy.U() && !strategy.n() && error.getErrorCode() != WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT.getErrorCode()) {
            strategy.d(true);
            AdInfo adInfo2 = new AdInfo(strategy);
            adInfo2.fillData(this.f86735o);
            wMAdSourceStatusListenerG2.onAdSourceLoadFailed(adInfo2, error);
        }
        if (!strategy.w()) {
            a(strategy, "ready", error.getErrorCode(), error.getExternalErrorCode(), error.getMessage());
        }
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null && !list.contains(strategy)) {
            WMLogUtil.i(WMLogUtil.TAG, "adapterDidFailToLoadAd but is not current stage");
            return;
        }
        this.H.removeMessages(2000, strategy);
        AdStatus adStatus = this.f86721a;
        if (adStatus == AdStatus.AdStatusReady || adStatus == AdStatus.AdStatusClose) {
            WMLogUtil.i(WMLogUtil.TAG, "splash ad has ready or closed");
            return;
        }
        if (adStatus != AdStatus.AdStatusLoading) {
            WMLogUtil.i("not do splashAd load ad");
            return;
        }
        this.f86734n.put(strategy.aP() + "-" + strategy.aW(), error);
        strategy.a(true, error);
        if (strategy.D()) {
            if (strategy.A()) {
                strategy.h(false);
                return;
            }
        } else if (strategy.C()) {
            com.windmill.sdk.strategy.l.a aVar2 = this.L;
            if (aVar2 != null) {
                aVar2.a(strategy);
            }
            if (strategy.B()) {
                strategy.i(false);
                return;
            }
        }
        com.windmill.sdk.strategy.a aVarB = b(this.f86727g, strategy);
        if (aVarB != null) {
            adapterDidLoadAdSuccessAd(f(aVarB), aVarB);
            return;
        }
        WMLogUtil.i(WMLogUtil.TAG, "loadErrorADStrategy: " + this.f86734n.size());
        if (this.f86734n.size() >= this.f86724d.size()) {
            this.H.removeMessages(2000);
            a(this.H);
            a(WindMillError.ERROR_AD_NO_FILL.copy(), this.f86735o.getPlacementId(), strategy, (String) null);
        } else {
            com.windmill.sdk.strategy.s sVar = this.f86727g;
            if (sVar != null) {
                sVar.b(strategy);
            }
        }
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidFailToPlayingAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, WMAdapterError error) {
        WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
        windMillError.setMessage(String.format("{error_code: %s, message: %s}", Integer.valueOf(error.getErrorCode()), error.getMessage()));
        a(adStrategy, "play", error.getErrorCode(), error.getExternalErrorCode(), error.getMessage());
        b(windMillError, this.f86735o.getPlacementId());
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidLoadAdReady(final WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy) {
        try {
            WMLogUtil.i(WMLogUtil.TAG, "adapterDidLoadAdReady() called with: strategy = [" + strategy.aP() + "] " + strategy.V());
            WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            if (wMAdSourceStatusListenerG != null && strategy.U() && !strategy.n()) {
                strategy.d(true);
                AdInfo adInfo = new AdInfo(strategy);
                adInfo.fillData(this.f86735o);
                wMAdSourceStatusListenerG.onAdSourceLoadSuccess(adInfo);
            }
            com.windmill.sdk.utils.m.a("ready", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.s.4
                @Override // com.windmill.sdk.utils.m.a
                public void onAddExtra(Object pointEntityBase) {
                    if (pointEntityBase instanceof PointEntityWind) {
                        PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                        pointEntityWind.setLoad_id(s.this.f86864u);
                        pointEntityWind.setExecution_scene(s.this.f86726f ? "0" : "1");
                        com.windmill.sdk.strategy.q qVar = s.this.f86722b;
                        if (qVar != null) {
                            pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                            pointEntityWind.setConcurrent_count(String.valueOf(s.this.f86722b.f87239a));
                        }
                        s.this.a(adapter, pointEntityWind);
                    }
                }
            });
            com.windmill.sdk.strategy.d.a().a(0, this.f86735o.getPlacementId(), strategy, b(adapter));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidLoadAdSuccessAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy) {
        WMLogUtil.i("---adapterDidLoadAdSuccessAd() called with: strategy = [" + strategy.aP() + "] " + this.f86726f);
        if (!this.f86726f) {
            com.windmill.sdk.strategy.l.a aVar = this.L;
            if (aVar != null) {
                aVar.a(strategy, adapter);
                return;
            }
            return;
        }
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null && !list.contains(strategy)) {
            WMLogUtil.i(WMLogUtil.TAG, "adapterDidLoadAdSuccessAd but is not current stage");
            return;
        }
        this.H.removeMessages(2000, strategy);
        strategy.g(true);
        if (strategy.D()) {
            if (strategy.A()) {
                strategy.h(false);
                return;
            }
        } else if (strategy.C()) {
            com.windmill.sdk.strategy.l.a aVar2 = this.L;
            if (aVar2 != null) {
                aVar2.a(strategy);
            }
            if (strategy.B()) {
                strategy.i(false);
                return;
            }
        }
        if (adapter != null) {
            strategy.a(adapter.getAdapterReadyTime());
        }
        if (this.f86725e != null) {
            if (strategy.i() == null && adapter != null) {
                strategy.a(adapter.getChannelObject(), com.windmill.sdk.strategy.a.f87082o.contains(Integer.valueOf(strategy.aN())));
            }
            this.f86725e.put(strategy.aD(), strategy);
        }
        if (a(this.f86727g, strategy)) {
            a(adapter, strategy);
        }
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidLoadBiddingPriceSuccess(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, String price) {
        if (adStrategy != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("--Splash--PriceSuccess strategy ");
            sb2.append(adStrategy.aP());
            sb2.append(" P:");
            sb2.append(price);
            sb2.append(" ");
            sb2.append(adStrategy.aW());
            sb2.append(" ");
            sb2.append(this.K != null);
            WMLogUtil.d(sb2.toString());
            adStrategy.f(price);
            adStrategy.h(price);
            com.windmill.sdk.strategy.s.b bVar = this.K;
            if (bVar != null) {
                bVar.a(adStrategy, price);
            }
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidPlayEndAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidRewardAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, boolean isReward) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidShowLangPageAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, Map extra) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidSkipAd(final WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
        com.windmill.sdk.utils.m.a("skip", this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.s.8
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(s.this.f86864u);
                    s.this.a(adapter, pointEntityWind);
                }
            }
        });
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidStartPlayingAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, Map<String, String> extra) {
        b(this.f86735o, adStrategy);
        com.windmill.sdk.strategy.i.a().a(new FreEntity(adStrategy.aN(), this.f86735o.getPlacementId(), adStrategy.aW()));
        a("start", adStrategy, this.f86735o);
        a(adapter, "start", adStrategy, extra);
        com.windmill.sdk.strategy.d.a().a(1, this.f86735o.getPlacementId(), adStrategy, b(adapter));
        a aVar = this.D;
        if (aVar != null) {
            aVar.onSplashAdSuccessPresent(this.f86737q);
        }
    }

    private void g(com.windmill.sdk.strategy.a adStrategy) {
        com.windmill.sdk.utils.m.a("load", this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.s.16
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(s.this.f86864u);
                    pointEntityWind.setLoad_type(s.this.f86865v ? "0" : "1");
                    pointEntityWind.setExecution_scene(s.this.f86726f ? "0" : "1");
                    pointEntityWind.setIs_out_sdk("1");
                    com.windmill.sdk.strategy.q qVar = s.this.f86722b;
                    if (qVar != null) {
                        pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                        pointEntityWind.setConcurrent_count(String.valueOf(s.this.f86722b.f87239a));
                    }
                    HashMap map = new HashMap();
                    map.put(PointParamKey.IS_MINOR, c.a().e() ? "0" : "1");
                    map.put(PointParamKey.IS_UNPERSONALIZED, c.a().f() ? "0" : "1");
                    map.put("active_id", o.d().c());
                    pointEntityWind.setOptions(map);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h(com.windmill.sdk.strategy.a adStrategy) {
        try {
            WMLogUtil.i("----adapterInitAndLoad--name--" + adStrategy.aP() + " isFailToOut: " + this.f86731k + " isC2C: " + adStrategy.F() + " " + Thread.currentThread());
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            if (TextUtils.isEmpty(strA)) {
                WindMillError windMillError = WindMillError.ERROR_NOT_FOUND_ADAPTER;
                adapterDidFailToLoadAd(null, adStrategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                return false;
            }
            WMAdBaseAdapter wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this);
            if (wMAdBaseAdapterA != null) {
                WMAdapterError wMAdapterErrorB = b(wMAdBaseAdapterA, adStrategy);
                if (wMAdapterErrorB != null) {
                    adapterDidFailToLoadAd(wMAdBaseAdapterA, adStrategy, wMAdapterErrorB);
                    return false;
                }
                this.f86735o.setLoadId(this.f86864u);
                adStrategy.n(this.f86864u);
                g(adStrategy);
                b(this.f86735o, adStrategy, this.f86864u);
                if (adStrategy.F()) {
                    if (wMAdBaseAdapterA.isLoadSuccess()) {
                        WMLogUtil.i("Load复用已经Load成功的的adapter:" + adStrategy.aP() + ":" + adStrategy.aW());
                        adapterDidLoadAdSuccessAd(wMAdBaseAdapterA, adStrategy);
                        return true;
                    }
                    if (!this.f86731k) {
                        WMLogUtil.i("----Load复用已经Load成功的的adapter:" + adStrategy.aP() + ":" + adStrategy.aW() + " " + b(adStrategy));
                        if (!b(adStrategy)) {
                            c(adStrategy, wMAdBaseAdapterA);
                        }
                    }
                } else if (!this.f86731k) {
                    c(adStrategy, wMAdBaseAdapterA);
                }
            } else {
                WindMillError windMillError2 = WindMillError.ERROR_NOT_FOUND_ADAPTER;
                adapterDidFailToLoadAd(null, adStrategy, new WMAdapterError(windMillError2.getErrorCode(), windMillError2.getMessage()));
            }
            return false;
        } catch (Throwable th) {
            adapterDidFailToLoadAd(null, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_REQUEST.getErrorCode(), th.getMessage()));
        }
    }

    private void p() throws Throwable {
        this.f86721a = AdStatus.AdStatusLoading;
        ClientMetadata.setUserId(this.f86735o.getUserId());
        this.f86724d.clear();
        this.f86725e.clear();
        this.f86734n.clear();
        this.J = 0L;
        r();
    }

    public AdInfo c() {
        WMAdBaseAdapter wMAdBaseAdapterF;
        if (this.f86721a != AdStatus.AdStatusReady) {
            WMLogUtil.i(" getAdInfo: adStatus is not ready, current status: " + this.f86721a);
            return null;
        }
        Map<String, com.windmill.sdk.strategy.a> map = this.f86725e;
        if (map == null || map.isEmpty()) {
            WMLogUtil.i(" getAdInfo: readyList is empty");
            return null;
        }
        try {
            for (com.windmill.sdk.strategy.a aVar : this.f86724d) {
                u uVarM = m();
                if (com.windmill.sdk.strategy.r.b(aVar, uVarM != null ? uVarM.a() : null) == null && aVar != null && this.f86725e.containsValue(aVar) && !aVar.aG() && (wMAdBaseAdapterF = f(aVar)) != null && wMAdBaseAdapterF.isReady(aVar)) {
                    AdInfo adInfo = new AdInfo(aVar);
                    adInfo.fillData(this.f86735o);
                    WMLogUtil.i(" getAdInfo: found ready ad - " + aVar.aP());
                    return adInfo;
                }
            }
            WMLogUtil.i(" getAdInfo: no valid ready adapter found");
        } catch (Exception e10) {
            WMLogUtil.e(" getAdInfo error: " + e10.getMessage());
            e10.printStackTrace();
        }
        return null;
    }

    public void d() {
        com.windmill.sdk.strategy.e.a().a((WMSplashAdRequest) this.f86735o, this);
    }

    @Override // com.windmill.sdk.common.l
    public List<AdInfo> e() {
        Map<String, com.windmill.sdk.strategy.a> map;
        try {
            if (this.f86721a == AdStatus.AdStatusReady && (map = this.f86725e) != null && map.size() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<Map.Entry<String, com.windmill.sdk.strategy.a>> it2 = this.f86725e.entrySet().iterator();
                while (it2.hasNext()) {
                    AdInfo adInfo = new AdInfo(it2.next().getValue());
                    adInfo.fillData(this.f86735o);
                    arrayList.add(adInfo);
                }
                return arrayList;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    @Override // com.windmill.sdk.common.l
    public Activity f() {
        Activity activityF = super.f();
        return activityF == null ? ViewUtil.getActivityFromView(this.F) : activityF;
    }

    public boolean b() {
        WMAdBaseAdapter wMAdBaseAdapterF;
        try {
            if (this.f86721a != AdStatus.AdStatusReady) {
                return false;
            }
            List<com.windmill.sdk.strategy.a> list = this.f86724d;
            if (list != null) {
                for (com.windmill.sdk.strategy.a aVar : list) {
                    u uVarM = m();
                    WindMillError windMillErrorB = com.windmill.sdk.strategy.r.b(aVar, uVarM != null ? uVarM.a() : null);
                    if (this.f86725e.containsValue(aVar) && !aVar.aG() && windMillErrorB == null && (wMAdBaseAdapterF = f(aVar)) != null && wMAdBaseAdapterF.isReady(aVar)) {
                        this.f86739s = true;
                        return true;
                    }
                }
            }
            a((com.windmill.sdk.strategy.a) null, "ready", WindMillError.ERROR_ALLAD_NOT_READY.getErrorCode(), "", WindMillError.ERROR_AD_PLAY_NETWORK_NOT_READY.getMessage());
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(Looper looper) {
        this.H = new Handler(looper) { // from class: com.windmill.sdk.common.s.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                int i10 = msg.what;
                if (i10 != 1000 && i10 != 1001) {
                    if (i10 == 1003) {
                        s sVar = s.this;
                        sVar.a(sVar.H, msg.arg1);
                        return;
                    }
                    if (i10 == 1004) {
                        s sVar2 = s.this;
                        sVar2.b(sVar2.H, msg.arg1);
                        return;
                    }
                    if (i10 != 2000) {
                        return;
                    }
                    try {
                        WMLogUtil.e("----loadAd--单层超时---" + s.this.f86864u + Thread.currentThread());
                        Object obj = msg.obj;
                        if (obj instanceof com.windmill.sdk.strategy.a) {
                            WindMillError windMillError = WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT;
                            s.this.adapterDidFailToLoadAd(null, (com.windmill.sdk.strategy.a) obj, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
                WMLogUtil.e("----loadAd---动态总超时---超时阶段：" + s.this.f86729i + "  thread:：" + Thread.currentThread() + " loadId：" + s.this.f86864u);
                s sVar3 = s.this;
                String str = sVar3.f86729i;
                sVar3.a(sVar3.H);
                s sVar4 = s.this;
                sVar4.a(sVar4.f86727g);
                com.windmill.sdk.strategy.a aVarJ = s.this.j();
                if (aVarJ != null) {
                    aVarJ.h(1);
                    if (aVarJ.Y() == 1) {
                        if (aVarJ.Z() == 1) {
                            if (s.this.h(aVarJ)) {
                                return;
                            }
                        } else if (aVarJ.Z() == 0 && aVarJ.v()) {
                            s sVar5 = s.this;
                            sVar5.adapterDidLoadAdSuccessAd(sVar5.f(aVarJ), aVarJ);
                            return;
                        }
                    } else if (!aVarJ.C()) {
                        WMAdBaseAdapter wMAdBaseAdapterF = s.this.f(aVarJ);
                        if (wMAdBaseAdapterF != null && wMAdBaseAdapterF.isLoadSuccess()) {
                            s.this.a(wMAdBaseAdapterF, aVarJ);
                            return;
                        }
                    } else if (aVarJ.v()) {
                        aVarJ.i(false);
                        s sVar6 = s.this;
                        sVar6.adapterDidLoadAdSuccessAd(sVar6.f(aVarJ), aVarJ);
                        return;
                    }
                }
                s sVar7 = s.this;
                sVar7.f86721a = AdStatus.AdStatusClose;
                com.windmill.sdk.strategy.s sVar8 = sVar7.f86727g;
                if (sVar8 != null) {
                    sVar8.j();
                }
                s sVar9 = s.this;
                sVar9.a(sVar9.f86735o, sVar9.f86724d, sVar9.f86864u);
                s sVar10 = s.this;
                sVar10.a(WindMillError.ERROR_LOAD_AD_TIME_OUT, sVar10.f86735o.getPlacementId(), (com.windmill.sdk.strategy.a) null, str);
            }
        };
    }

    public void a(ViewGroup adContainer, boolean isAutoLoad) throws Throwable {
        this.f86731k = false;
        this.I = isAutoLoad;
        this.f86739s = false;
        boolean zB = b();
        WMLogUtil.i("-----loadAdAndShow isReady " + b());
        if (adContainer != null) {
            this.F = adContainer;
        }
        if (zB) {
            if (System.currentTimeMillis() - this.J < WMSdkConfig.sharedInstance().getReadyExpired()) {
                c(this.f86735o);
                if (WindMillAd.isMainUI()) {
                    a aVar = this.D;
                    if (aVar != null) {
                        aVar.onSplashAdSuccessLoad(this.f86735o.getPlacementId());
                    }
                    if (this.f86865v) {
                        q();
                        return;
                    }
                    return;
                }
                a(new Runnable() { // from class: com.windmill.sdk.common.s.10
                    @Override // java.lang.Runnable
                    public void run() {
                        if (s.this.D != null) {
                            s.this.D.onSplashAdSuccessLoad(s.this.f86735o.getPlacementId());
                        }
                        if (s.this.f86865v) {
                            s.this.q();
                        }
                    }
                });
            }
        }
        switch (AnonymousClass9.f86907a[a(isAutoLoad, this.f86735o).ordinal()]) {
            case 1:
                WMLogUtil.i("WindFilterKeepGoing");
                p();
                break;
            case 2:
                WMLogUtil.e("WindFilterInit");
                if (TextUtils.isEmpty(WindMillAd.mAppId)) {
                    a(WindMillError.ERROR_NOT_INIT, this.f86735o.getPlacementId());
                } else {
                    a(WindMillError.ERROR_INIT_EXCEPTION, this.f86735o.getPlacementId());
                }
                break;
            case 3:
                WMLogUtil.e("WindFilterParameter");
                a(WindMillError.ERROR_AD_REQUEST, "");
                break;
            case 4:
                WMLogUtil.e("WindFilterGdpr");
                a(WindMillError.ERROR_GDPR_DENIED, this.f86735o.getPlacementId());
                break;
            case 5:
                WMLogUtil.e("WindFilterLoadingBreak " + this.f86735o.getPlacementId());
                a(WindMillError.ERROR_AD_LOAD_FAIL_LOADING, this.f86735o.getPlacementId());
                break;
            case 6:
                WMLogUtil.e("WindFilterLoadInterval " + this.f86735o.getPlacementId());
                a(WindMillError.ERROR_AD_LOAD_FAIL_INTERVAL, this.f86735o.getPlacementId());
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.windmill.sdk.strategy.a adStrategy, WMAdBaseAdapter adapter) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----------showInnerAd ");
            sb2.append(this.f86866w != null);
            WMLogUtil.i(sb2.toString());
            RelativeLayout relativeLayout = this.f86866w;
            if (relativeLayout == null) {
                relativeLayout = this.f86867x;
            }
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
                adapter.showInnerAd(f(), relativeLayout, adStrategy);
            }
        } catch (Exception unused) {
            if (this.D != null) {
                a(WindMillError.ERROR_AD_PLAY, this.f86735o.getPlacementId());
            }
        }
    }

    private void c(final com.windmill.sdk.strategy.a adStrategy, final WMAdBaseAdapter adAdapter) {
        this.H.removeMessages(2000, adStrategy);
        Message messageObtain = Message.obtain(this.H, 2000, adStrategy);
        if (adStrategy.ab() != 0) {
            this.H.sendMessageDelayed(messageObtain, adStrategy.ab());
        } else {
            this.H.sendMessageDelayed(messageObtain, this.C);
        }
        com.windmill.sdk.utils.a.a().a(adAdapter);
        WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
        adStrategy.l(true);
        if (wMAdSourceStatusListenerG != null) {
            AdInfo adInfo = new AdInfo(adStrategy);
            adInfo.fillData(this.f86735o);
            if (adStrategy.F()) {
                if (!this.f86732l.contains(adStrategy.aD())) {
                    wMAdSourceStatusListenerG.onAdSourceBiddingStart(adInfo);
                    wMAdSourceStatusListenerG.onAdSourceLoadStart(adInfo);
                }
            } else {
                wMAdSourceStatusListenerG.onAdSourceLoadStart(adInfo);
            }
        }
        WMLogUtil.i("-----Adapter--loadInnerAd: " + Thread.currentThread().getName() + "  " + this.f86731k);
        if (this.f86731k) {
            return;
        }
        if (d(adStrategy)) {
            a(new Runnable() { // from class: com.windmill.sdk.common.s.17
                @Override // java.lang.Runnable
                public void run() {
                    adAdapter.loadInnerAd(s.this.a(adStrategy.aN()), s.this.F, s.this.f86735o, adStrategy, false);
                    s.this.a(adStrategy, adAdapter);
                }
            });
        } else {
            adAdapter.loadInnerAd(a(adStrategy.aN()), this.F, this.f86735o, adStrategy, false);
            a(adStrategy, adAdapter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int type, com.windmill.sdk.strategy.a strategy) {
        try {
            WeakReference<ExecutorService> weakReference = M;
            if (weakReference == null || weakReference.get() == null || M.get().isShutdown()) {
                M = new WeakReference<>(a("tobid_splash"));
            }
            a(M.get(), type, strategy, this.f86735o);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final WindMillError error, final String placementId) {
        WMLogUtil.e("onSplashShowError: " + error + " :placementId: " + placementId);
        if (this.f86731k) {
            return;
        }
        this.f86731k = true;
        if (WindMillAd.sharedAds().getHandler() != null) {
            WindMillAd.sharedAds().getHandler().post(new Runnable() { // from class: com.windmill.sdk.common.x
                @Override // java.lang.Runnable
                public final void run() {
                    this.f86975b.c(error, placementId);
                }
            });
        }
    }

    public void b(ViewGroup viewGroup) {
        this.F = viewGroup;
        s();
    }

    private void c(ViewGroup viewGroup) {
        float f10;
        this.G = true;
        Context context = viewGroup.getContext();
        RelativeLayout relativeLayout = new RelativeLayout(context.getApplicationContext());
        this.f86867x = relativeLayout;
        relativeLayout.setVisibility(4);
        viewGroup.addView(this.f86867x, new RelativeLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        relativeLayout2.setId(ClientMetadata.generateViewId());
        RelativeLayout relativeLayout3 = new RelativeLayout(context);
        this.f86866w = relativeLayout3;
        relativeLayout3.setId(ClientMetadata.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10);
        layoutParams.addRule(2, relativeLayout2.getId());
        relativeLayout2.setBackgroundColor(-1);
        WMSplashAdRequest wMSplashAdRequest = (WMSplashAdRequest) this.f86735o;
        if (TextUtils.isEmpty(wMSplashAdRequest.getAppDesc())) {
            this.B = 1;
            f10 = 60.0f;
        } else {
            f10 = 80.0f;
        }
        RelativeLayout relativeLayout4 = new RelativeLayout(context.getApplicationContext());
        a(relativeLayout4, f10);
        LinearLayout linearLayout = new LinearLayout(context.getApplicationContext());
        linearLayout.setOrientation(1);
        a(linearLayout, wMSplashAdRequest.getAppTitle());
        int iAsIntPixels = Dips.asIntPixels(10.0f, context);
        if (this.B != 1) {
            a(linearLayout, wMSplashAdRequest.getAppDesc(), iAsIntPixels);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = iAsIntPixels;
        layoutParams2.addRule(1, this.A.getId());
        layoutParams2.addRule(15, this.A.getId());
        relativeLayout4.addView(linearLayout, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, Dips.dipsToIntPixels(f10, context));
        layoutParams3.addRule(13);
        relativeLayout2.addView(relativeLayout4, layoutParams3);
        this.f86867x.addView(this.f86866w, layoutParams);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, Dips.dipsToIntPixels(100.0f, context));
        layoutParams4.addRule(12);
        this.f86867x.addView(relativeLayout2, layoutParams4);
    }

    public void a(ViewGroup adContainer) {
        if (this.f86865v) {
            return;
        }
        if (adContainer != null) {
            this.F = adContainer;
        }
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final WMAdBaseAdapter adapter, final String category, final com.windmill.sdk.strategy.a strategy, Map<String, String> extra) {
        final String str = extra != null ? extra.get(WMConstants.OFFER_ID) : null;
        com.windmill.sdk.utils.m.a(category, this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.s.12
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(s.this.f86864u);
                    pointEntityWind.setEcpm(String.valueOf(strategy.V()));
                    pointEntityWind.setSub_category(String.valueOf(strategy.T()));
                    pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                    Float fL = strategy.l();
                    if (fL != null) {
                        pointEntityWind.setExchange_rate(String.valueOf(fL));
                    }
                    pointEntityWind.setOffer_id(str);
                    try {
                        pointEntityWind.getOptions().put("request_options", new JSONObject(s.this.f86735o.getOptions()).toString());
                    } catch (Throwable unused) {
                    }
                    com.windmill.sdk.strategy.q qVar = s.this.f86722b;
                    if (qVar != null) {
                        pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                        pointEntityWind.setConcurrent_count(String.valueOf(s.this.f86722b.f87239a));
                    }
                    if ("start".equals(category)) {
                        pointEntityWind.getOptions().put("active_id", o.d().c());
                    }
                    s.this.a(adapter, pointEntityWind);
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.l
    protected void a(int type, com.windmill.sdk.strategy.a strategy) {
        if (type == 1) {
            a(strategy, false);
        } else if (type == 2) {
            a(strategy, true);
        } else if (type == 3) {
            h(strategy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.windmill.sdk.strategy.a strategy) {
        if (strategy.v()) {
            adapterDidLoadAdSuccessAd(f(strategy), strategy);
            return;
        }
        if (strategy.w()) {
            WMAdapterError wMAdapterErrorZ = strategy.z();
            if (wMAdapterErrorZ == null) {
                wMAdapterErrorZ = new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "getPreloadAdapterError is null");
            }
            adapterDidFailToLoadAd(f(strategy), strategy, wMAdapterErrorZ);
            return;
        }
        WMLogUtil.i(WMLogUtil.TAG, "------------checkLoadStatus------------isLoading------------" + strategy.aP());
    }

    @Override // com.windmill.sdk.common.l
    public void a(com.windmill.sdk.strategy.a strategy, WMAdapterError error) {
        WMLogUtil.i(WMLogUtil.TAG, "------------notifyPreloadTimeOut------------" + strategy.aP());
        adapterDidFailToLoadAd(f(strategy), strategy, error);
    }

    public void a(final com.windmill.sdk.strategy.a adStrategy, final com.windmill.sdk.strategy.s.a biddingListener) {
        WMAdBaseAdapter wMAdBaseAdapterA;
        try {
            WMLogUtil.i("------------adapterLoadBidToken------------" + adStrategy.aP());
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            if (TextUtils.isEmpty(strA) || (wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this)) == null) {
                return;
            }
            this.f86735o.setLoadId(this.f86864u);
            adStrategy.l(true);
            adStrategy.n(this.f86864u);
            final WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            AdInfo adInfo = new AdInfo(adStrategy);
            adInfo.fillData(this.f86735o);
            if (wMAdSourceStatusListenerG != null) {
                wMAdSourceStatusListenerG.onAdSourceBiddingStart(adInfo);
            }
            wMAdBaseAdapterA.loadBidding(adInfo, a(adStrategy.aN()), this.f86735o, adStrategy, new com.windmill.sdk.strategy.s.a() { // from class: com.windmill.sdk.common.s.14
                @Override // com.windmill.sdk.strategy.s.a
                public void a(AdInfo adInfo2, com.windmill.sdk.strategy.a strategy, Map<String, String> headerBiddingParams) {
                    if (headerBiddingParams != null) {
                        com.windmill.sdk.strategy.s.a aVar = biddingListener;
                        if (aVar != null) {
                            aVar.a(adInfo2, strategy, headerBiddingParams);
                            return;
                        }
                        return;
                    }
                    com.windmill.sdk.strategy.s.a aVar2 = biddingListener;
                    if (aVar2 != null) {
                        aVar2.a(adInfo2, strategy, 1, "adapterLoadBidToken is null");
                    }
                    WMAdSourceStatusListener wMAdSourceStatusListener = wMAdSourceStatusListenerG;
                    if (wMAdSourceStatusListener != null) {
                        wMAdSourceStatusListener.onAdSourceBiddingFailed(adInfo2, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "adapterLoadBidToken is null"));
                    }
                }

                @Override // com.windmill.sdk.strategy.s.a
                public void a(AdInfo adInfo2, com.windmill.sdk.strategy.a strategy, int code, String message) {
                    com.windmill.sdk.strategy.s.a aVar = biddingListener;
                    if (aVar != null) {
                        aVar.a(adInfo2, strategy, code, message);
                    }
                    WMAdSourceStatusListener wMAdSourceStatusListener = wMAdSourceStatusListenerG;
                    if (wMAdSourceStatusListener != null) {
                        wMAdSourceStatusListener.onAdSourceBiddingFailed(adInfo2, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "adapterLoadBidToken is null"));
                    }
                }
            });
        } catch (Throwable th) {
            WMLogUtil.e(th.getMessage());
        }
    }

    private void a(boolean isLoadAdPrice, com.windmill.sdk.strategy.a adStrategy, WMAdapterError error) {
        if (isLoadAdPrice) {
            com.windmill.sdk.strategy.s.b bVar = this.K;
            if (bVar != null) {
                bVar.a(adStrategy, error);
                return;
            }
            return;
        }
        com.windmill.sdk.strategy.l.a aVar = this.L;
        if (aVar != null) {
            aVar.a(adStrategy, error, "ready");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(WindMillError windMillError, String str) {
        a aVar = this.D;
        if (aVar != null) {
            aVar.onSplashAdFailToPresent(windMillError, str);
        }
    }

    public void a(final com.windmill.sdk.strategy.a adStrategy, final boolean isLoadAdPrice) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-----adapterLoadBidPrice--name: ");
            sb2.append(adStrategy != null ? adStrategy.aP() : "name null");
            sb2.append(":");
            sb2.append(isLoadAdPrice);
            WMLogUtil.i(sb2.toString());
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            if (TextUtils.isEmpty(strA)) {
                WindMillError windMillError = WindMillError.ERROR_NOT_FOUND_ADAPTER;
                a(isLoadAdPrice, adStrategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                return;
            }
            final WMAdBaseAdapter wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this);
            if (wMAdBaseAdapterA != null) {
                g(adStrategy);
                this.f86735o.setLoadId(this.f86864u);
                adStrategy.n(this.f86864u);
                adStrategy.l(true);
                this.f86732l.add(adStrategy.aD());
                WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
                if (wMAdSourceStatusListenerG != null) {
                    AdInfo adInfo = new AdInfo(adStrategy);
                    adInfo.fillData(this.f86735o);
                    if (isLoadAdPrice) {
                        wMAdSourceStatusListenerG.onAdSourceBiddingStart(adInfo);
                    }
                    wMAdSourceStatusListenerG.onAdSourceLoadStart(adInfo);
                }
                com.windmill.sdk.utils.a.a().a(wMAdBaseAdapterA);
                WMLogUtil.i("-----adapterLoadBidPrice  isNeedUILoadAd:" + d(adStrategy) + " " + Thread.currentThread());
                if (d(adStrategy)) {
                    a(new Runnable() { // from class: com.windmill.sdk.common.s.15
                        @Override // java.lang.Runnable
                        public void run() {
                            wMAdBaseAdapterA.loadInnerAd(s.this.a(adStrategy.aN()), s.this.F, s.this.f86735o, adStrategy, isLoadAdPrice);
                            s.this.a(adStrategy, wMAdBaseAdapterA);
                        }
                    });
                    return;
                } else {
                    wMAdBaseAdapterA.loadInnerAd(a(adStrategy.aN()), this.F, this.f86735o, adStrategy, isLoadAdPrice);
                    a(adStrategy, wMAdBaseAdapterA);
                    return;
                }
            }
            WindMillError windMillError2 = WindMillError.ERROR_NOT_FOUND_ADAPTER;
            a(isLoadAdPrice, adStrategy, new WMAdapterError(windMillError2.getErrorCode(), windMillError2.getMessage()));
        } catch (Throwable th) {
            a(isLoadAdPrice, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_REQUEST.getErrorCode(), th.getMessage()));
        }
    }

    private Drawable a(Context context) {
        return context.getApplicationInfo().loadIcon(context.getPackageManager());
    }

    private void a(RelativeLayout relativeLayout, float width) {
        ImageView imageView = new ImageView(WindMillAd.sharedAds().getContext());
        this.A = imageView;
        imageView.setId(ClientMetadata.generateViewId());
        this.A.setScaleType(ImageView.ScaleType.FIT_XY);
        Drawable drawableA = a(WindMillAd.sharedAds().getContext());
        if (drawableA != null) {
            this.A.setImageDrawable(drawableA);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(width, f()), Dips.dipsToIntPixels(width, f()));
        layoutParams.addRule(15);
        relativeLayout.addView(this.A, layoutParams);
    }

    private void a(LinearLayout linearLayout, String title) {
        TextView textView = new TextView(WindMillAd.sharedAds().getContext());
        this.f86869z = textView;
        textView.setText(title);
        this.f86869z.setId(ClientMetadata.generateViewId());
        this.f86869z.setGravity(17);
        this.f86869z.setTextColor(Color.parseColor("#535353"));
        this.f86869z.setTextSize(2, 25.0f);
        this.f86869z.setMaxEms(10);
        this.f86869z.setEllipsize(TextUtils.TruncateAt.END);
        this.f86869z.setSingleLine();
        this.f86869z.setPadding(0, 0, 0, 0);
        this.f86869z.setIncludeFontPadding(false);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        linearLayout.addView(this.f86869z, layoutParams);
    }

    private void a(LinearLayout relativeLayout, String desc, int margin) {
        TextView textView = new TextView(WindMillAd.sharedAds().getContext());
        this.f86868y = textView;
        textView.setText(desc);
        this.f86868y.setGravity(17);
        this.f86868y.setTextColor(Color.parseColor("#aaaaaa"));
        this.f86868y.setTextSize(2, 15.0f);
        this.f86868y.setMaxEms(20);
        this.f86868y.setEllipsize(TextUtils.TruncateAt.END);
        this.f86868y.setSingleLine();
        this.f86869z.setPadding(0, 0, 0, 0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = margin;
        layoutParams.addRule(13);
        relativeLayout.addView(this.f86868y, layoutParams);
    }

    public void a(b readyAdapterLister) {
        if (this.f86721a != AdStatus.AdStatusReady) {
            WMLogUtil.e("adStatus not ready  is " + this.f86721a);
            if (readyAdapterLister != null) {
                readyAdapterLister.a(WindMillError.ERROR_AD_NOT_READY);
                return;
            }
            return;
        }
        if (this.f86724d.isEmpty()) {
            WMLogUtil.e("strategies is empty");
            if (readyAdapterLister != null) {
                readyAdapterLister.a(WindMillError.ERROR_NULL_STRATEGY);
                return;
            }
            return;
        }
        if (this.f86725e.isEmpty()) {
            WMLogUtil.e("readyList is empty");
            if (readyAdapterLister != null) {
                readyAdapterLister.a(WindMillError.ERROR_AD_NOT_READY);
                return;
            }
            return;
        }
        WindMillError windMillErrorB = null;
        for (com.windmill.sdk.strategy.a aVar : this.f86724d) {
            u uVarM = m();
            windMillErrorB = com.windmill.sdk.strategy.r.b(aVar, uVarM != null ? uVarM.a() : null);
            if (this.f86725e.containsValue(aVar)) {
                if (!aVar.aG() && windMillErrorB == null) {
                    WMAdBaseAdapter wMAdBaseAdapterF = f(aVar);
                    if (wMAdBaseAdapterF != null && wMAdBaseAdapterF.isReady(aVar)) {
                        WMLogUtil.i(WMLogUtil.TAG, "getReadyStrategy isReady true " + aVar.aP() + " load Id " + this.f86864u);
                        if (readyAdapterLister != null && readyAdapterLister.a(wMAdBaseAdapterF, aVar)) {
                            return;
                        }
                    } else {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY_NETWORK_NOT_READY;
                        a(aVar, "play", windMillError.getErrorCode(), "", windMillError.getMessage());
                    }
                } else if (windMillErrorB == null) {
                    WindMillError windMillError2 = WindMillError.ERROR_AD_PLAY_NETWORK_EXPIRED;
                    a(aVar, "play", windMillError2.getErrorCode(), "", windMillError2.getMessage());
                }
            }
        }
        if (readyAdapterLister != null) {
            if (windMillErrorB != null) {
                readyAdapterLister.a(windMillErrorB);
            } else {
                readyAdapterLister.a(WindMillError.ERROR_AD_NOT_READY);
            }
        }
    }

    private void a(com.windmill.sdk.strategy.a strategy, String event_type, int error_code, String externalErrorCode, String error_msg) {
        com.windmill.sdk.utils.m.a("error", event_type, this.f86735o, strategy, this.f86727g, error_code, externalErrorCode, error_msg, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.s.2
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(s.this.f86864u);
                    pointEntityWind.setExecution_scene(s.this.f86726f ? "0" : "1");
                }
            }
        });
    }

    public void a(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy) {
        a(this.f86735o, this.f86724d, strategy, this.f86864u);
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null) {
            sVar.j();
        }
        AdStatus adStatus = this.f86721a;
        AdStatus adStatus2 = AdStatus.AdStatusReady;
        if (adStatus != adStatus2 && adStatus != AdStatus.AdStatusClose) {
            if (adStatus != AdStatus.AdStatusLoading) {
                WMLogUtil.i("not do splashAd load ad");
                return;
            }
            this.f86721a = adStatus2;
            a(this.H);
            this.J = System.currentTimeMillis();
            a(adapter, strategy, this.f86864u, this.f86735o);
            if (this.D != null) {
                a(new Runnable() { // from class: com.windmill.sdk.common.s.5
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            s.this.D.onSplashAdSuccessLoad(s.this.f86735o.getPlacementId());
                            if (s.this.f86865v) {
                                s.this.q();
                            }
                        } catch (Exception e10) {
                            WindMillError windAdError = WindMillError.getWindAdError(WindMillError.ERROR_AD_PLAY.getErrorCode());
                            if (windAdError != null) {
                                windAdError.setMessage(e10.getMessage());
                                s sVar2 = s.this;
                                sVar2.a(windAdError, sVar2.f86735o.getPlacementId());
                            }
                        }
                    }
                });
                return;
            }
            return;
        }
        WMLogUtil.i("has send notify splashAd load success,F don't do again");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WindMillError error, String placementId, com.windmill.sdk.strategy.a strategy, String timerStage) {
        try {
            com.windmill.sdk.strategy.s sVar = this.f86727g;
            a(strategy, sVar != null ? sVar.l() : null, this.f86864u, this.f86735o, error, timerStage);
            a(error, placementId);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final WindMillError error, final String placementId) {
        WMLogUtil.e("onSplashError: " + error + " :placementId: " + placementId);
        if (this.f86731k) {
            return;
        }
        this.f86731k = true;
        if (WindMillAd.sharedAds().getHandler() != null) {
            WindMillAd.sharedAds().getHandler().post(new Runnable() { // from class: com.windmill.sdk.common.s.7
                @Override // java.lang.Runnable
                public void run() {
                    if (s.this.D != null) {
                        s.this.D.onSplashAdFailToLoad(error, placementId, s.this.I);
                    }
                }
            });
        }
        if ((error != null && error.getErrorCode() == WindMillError.ERROR_AD_LOAD_FAIL_LOADING.getErrorCode()) || (error != null && error.getErrorCode() == WindMillError.ERROR_AD_LOAD_FAIL_INTERVAL.getErrorCode())) {
            this.f86731k = false;
        } else {
            a(this.H);
            a(false, (com.windmill.sdk.strategy.a) null);
        }
    }

    public void a(boolean isOut, com.windmill.sdk.strategy.a strategy) {
        RelativeLayout relativeLayout;
        this.J = 0L;
        this.f86721a = AdStatus.AdStatusNone;
        this.F = null;
        this.f86865v = true;
        if ((!this.E || this.G) && (relativeLayout = this.f86867x) != null) {
            relativeLayout.setVisibility(8);
        }
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null) {
            for (com.windmill.sdk.strategy.a aVar : list) {
                if (aVar != null) {
                    aVar.aF();
                    WMAdBaseAdapter wMAdBaseAdapterF = f(aVar);
                    if (wMAdBaseAdapterF != null) {
                        WMLogUtil.i(WMLogUtil.TAG, "controller destroy adAdapter destroy:" + wMAdBaseAdapterF.getClass().getSimpleName());
                        com.windmill.sdk.utils.a.a().b(wMAdBaseAdapterF);
                        wMAdBaseAdapterF.destroy();
                    }
                }
            }
        }
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null) {
            sVar.m();
        }
        this.f86866w = null;
        this.f86867x = null;
        this.F = null;
        a(isOut, this.f86864u, this.f86735o, strategy);
        h();
    }

    public void a(a splashListener) {
        this.D = splashListener;
    }

    public void a(Activity activity, a splashListener) {
        a(activity);
        if (splashListener != null) {
            this.D = splashListener;
        }
    }

    public void a(boolean isLoadAndShow) {
        this.f86865v = isLoadAndShow;
    }
}
