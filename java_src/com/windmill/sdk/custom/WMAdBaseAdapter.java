package com.windmill.sdk.custom;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.BiddingConstant;
import com.windmill.sdk.base.WMAdBaseConnector;
import com.windmill.sdk.base.WMAdConnector;
import com.windmill.sdk.base.WMAdNativeConnector;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.models.BidInfo;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.models.ChannelConfig;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.point.PointEntityWind;
import com.windmill.sdk.splash.IWMSplashEyeAd;
import com.windmill.sdk.strategy.d;
import com.windmill.sdk.strategy.g;
import com.windmill.sdk.strategy.s;
import com.windmill.sdk.utils.l;
import com.windmill.sdk.utils.m;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WMAdBaseAdapter implements com.windmill.sdk.utils.a.InterfaceC1083a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f86992h = "WMAdBaseAdapter";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.windmill.sdk.strategy.a f86993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    WindMillAdRequest f86994b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Map<String, Object> f86999g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private WMCustomAdapterProxy f87000i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private WMAdBaseConnector f87001j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f87002k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<String, Object> f87003l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f86995c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f86996d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f86997e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f86998f = 0;
    public boolean isGdtLoadSuc = false;

    private void e() {
        try {
            if (l.c(this.f86993a.aN())) {
                if (!TextUtils.isEmpty(this.f86993a.aY())) {
                    this.f86993a.aR().put(BiddingConstant.strategyId, this.f86993a.aY());
                }
                this.f86993a.aR().put(BiddingConstant.experimentId, this.f86993a.bb() + "");
                this.f86993a.aR().put(BiddingConstant.tobidId, this.f86994b.getPlacementId());
                this.f86993a.aR().put("loadId", this.f86994b.getLoadId());
                this.f86993a.aR().put(BiddingConstant.noAdUrl, this.f86993a.f87106q);
            }
        } catch (Exception unused) {
        }
    }

    private void f() {
        this.f86998f = 0L;
        this.f86995c = false;
        this.f86996d = false;
        this.f86997e = false;
    }

    void c() {
        Map<String, Object> mediaExtraOption = getMediaExtraOption();
        if (mediaExtraOption != null) {
            Object obj = mediaExtraOption.get(WMConstants.ADID);
            if (obj instanceof String) {
                this.f86993a.m((String) obj);
            }
        }
    }

    void d() {
        Map<String, Object> mediaExtraOption = getMediaExtraOption();
        if (mediaExtraOption != null) {
            Object obj = mediaExtraOption.get(WMConstants.CRID);
            if (obj instanceof String) {
                this.f86993a.l((String) obj);
            }
        }
    }

    public final void destroy() {
        WMCustomAdapterProxy wMCustomAdapterProxy = this.f87000i;
        if (wMCustomAdapterProxy != null) {
            wMCustomAdapterProxy.removeInitListener(this);
        }
        this.f87001j = null;
        f();
        destroyAd();
    }

    public abstract void destroyAd();

    public void gdtNoadNotify(String url, HashMap<String, Object> map) {
    }

    public final String getAdapterPluginVersion() {
        WMCustomAdapterProxy wMCustomAdapterProxy = this.f87000i;
        return wMCustomAdapterProxy != null ? wMCustomAdapterProxy.getAdapterPluginVersion() : WMConstants.TIMER_STAGE_NONE;
    }

    public final long getAdapterReadyTime() {
        return this.f86998f;
    }

    public final int getAdapterVersion() {
        WMCustomAdapterProxy wMCustomAdapterProxy = this.f87000i;
        if (wMCustomAdapterProxy != null) {
            return wMCustomAdapterProxy.getAdapterSdkVersion();
        }
        return 0;
    }

    public List<String> getBanPkgNames() {
        return this.f86993a.y();
    }

    public View getBannerView() {
        return null;
    }

    public int getBaseOnToBidCustomVersion() {
        WMCustomAdapterProxy wMCustomAdapterProxy = this.f87000i;
        if (wMCustomAdapterProxy != null) {
            return wMCustomAdapterProxy.baseOnToBidCustomAdapterVersion();
        }
        return 0;
    }

    public int getBidFloor() {
        return this.f86993a.ah();
    }

    public String getBidFloorCurrency() {
        String strAp = this.f86993a.ap();
        return TextUtils.isEmpty(strAp) ? BidPrice.CNY : strAp;
    }

    public int getBidTimeout() {
        return 3000;
    }

    public Map<String, String> getBiddingToken(Context context, Map<String, Object> localExtra, Map<String, Object> serverExtra) {
        return null;
    }

    public final int getBiddingType() {
        com.windmill.sdk.strategy.a aVar = this.f86993a;
        if (aVar == null || aVar.Y() != 1) {
            return -1;
        }
        return this.f86993a.Z();
    }

    public ChannelConfig getChannelConfigByChannel(int channelId) {
        return g.b().a(channelId);
    }

    public int getChannelId() {
        com.windmill.sdk.strategy.a aVar = this.f86993a;
        if (aVar != null) {
            return aVar.aN();
        }
        return -1;
    }

    public Object getChannelObject() {
        return null;
    }

    public final String getChannelSdkVersion() {
        WMCustomAdapterProxy wMCustomAdapterProxy = this.f87000i;
        return wMCustomAdapterProxy != null ? wMCustomAdapterProxy.getNetworkSdkVersion() : "";
    }

    public Context getContext() {
        return this.f87002k;
    }

    public String getCurrency() {
        String strQ = this.f86993a.Q();
        return TextUtils.isEmpty(strQ) ? BidPrice.CNY : strQ;
    }

    public final Map<String, Object> getExtraOption() {
        try {
            if (this.f87003l == null) {
                this.f87003l = getMediaExtraOption();
            }
        } catch (Exception e10) {
            WMLogUtil.e("getExtraOption:" + e10.getMessage());
        }
        return this.f87003l;
    }

    public final int getFillType() {
        com.windmill.sdk.strategy.a aVar = this.f86993a;
        if (aVar != null) {
            return aVar.P();
        }
        return 0;
    }

    public String getGroEcpm() {
        com.windmill.sdk.strategy.a aVar = this.f86993a;
        return aVar != null ? aVar.f() : "";
    }

    public final byte[] getHbResponseBytes() {
        com.windmill.sdk.strategy.a aVar = this.f86993a;
        if (aVar == null || aVar.af() == null) {
            return null;
        }
        return this.f86993a.af().e();
    }

    public final String getHbResponseStr() {
        com.windmill.sdk.strategy.a aVar = this.f86993a;
        return (aVar == null || aVar.af() == null) ? "" : this.f86993a.af().c();
    }

    public BidInfo getLastBidInfo() {
        WindMillAdRequest windMillAdRequest = this.f86994b;
        if (windMillAdRequest == null || TextUtils.isEmpty(windMillAdRequest.getPlacementId())) {
            return null;
        }
        return d.a().c(this.f86994b.getPlacementId());
    }

    public final String getLoadId() {
        WindMillAdRequest windMillAdRequest = this.f86994b;
        return windMillAdRequest != null ? windMillAdRequest.getLoadId() : "";
    }

    public Map<String, Object> getMediaExtraOption() {
        return null;
    }

    public List<WMNativeAdData> getNativeAdDataList() {
        return null;
    }

    public Map<String, Object> getNetworkOption() {
        return null;
    }

    public Map<String, Object> getRewardExtraOption() {
        return null;
    }

    public final int getRewardType() {
        com.windmill.sdk.strategy.a aVar = this.f86993a;
        if (aVar != null) {
            return aVar.t();
        }
        return 1;
    }

    public String getS2sResultUrl(boolean isWin, String originalUrl, HashMap<String, String> replaceMap) {
        return "";
    }

    public Map<String, String> getSaasChannelInfo() {
        return null;
    }

    public Map<String, String> getSaasOptions() {
        return this.f86993a.x();
    }

    public Map<String, Object> getServerExtra() {
        return this.f86999g;
    }

    public IWMSplashEyeAd getSplashEyeAd() {
        return null;
    }

    public String getTobidId() {
        WindMillAdRequest windMillAdRequest = this.f86994b;
        return windMillAdRequest != null ? windMillAdRequest.getPlacementId() : "";
    }

    public final String getUserId() {
        WindMillAdRequest windMillAdRequest = this.f86994b;
        return windMillAdRequest != null ? windMillAdRequest.getUserId() : "";
    }

    public final void initWithAdConnector(WMCustomAdapterProxy adapterProxy, WMAdBaseConnector connector) {
        this.f87000i = adapterProxy;
        this.f87001j = connector;
    }

    public final synchronized void initializeSdk(Context context, com.windmill.sdk.strategy.a adStrategy, WMCustomAdapterProxy.a initListener) {
        synchronized (this) {
            this.f87002k = context;
            this.f86993a = adStrategy;
            WMCustomAdapterProxy wMCustomAdapterProxy = this.f87000i;
            if (wMCustomAdapterProxy != null && adStrategy != null) {
                int initStatus = wMCustomAdapterProxy.getInitStatus();
                SigmobLog.i("WMAdBaseAdapter initializeSdk: " + initStatus);
                if (initStatus == -1 || initStatus == 1) {
                    this.f87000i.initializeInnerADN(context, adStrategy.aU(), adStrategy.aN(), initListener);
                    this.f87000i.notifyPrivacyStatusChange();
                }
            }
        }
    }

    public final synchronized boolean isInitSuccess() {
        synchronized (this) {
            WMCustomAdapterProxy wMCustomAdapterProxy = this.f87000i;
            if (wMCustomAdapterProxy != null) {
                return wMCustomAdapterProxy.getInitStatus() == 0;
            }
            return false;
        }
    }

    public final synchronized boolean isInitializing() {
        synchronized (this) {
            WMCustomAdapterProxy wMCustomAdapterProxy = this.f87000i;
            if (wMCustomAdapterProxy != null) {
                return wMCustomAdapterProxy.getInitStatus() == 2;
            }
            return false;
        }
    }

    public final boolean isLoadSuccess() {
        return this.f86996d && isReady();
    }

    protected boolean isNativeRender(Map serverExtra) {
        return serverExtra != null && serverExtra.containsKey("nativeRenderType");
    }

    public abstract boolean isReady();

    public final boolean isReady(com.windmill.sdk.strategy.a adStrategy) {
        return isReady();
    }

    public boolean isSucWithoutLoad() {
        return this.isGdtLoadSuc;
    }

    public final boolean isSupportRepeatInit(int channelId) {
        return g.b().b(channelId);
    }

    public final boolean isUseChannelIsReady() {
        com.windmill.sdk.strategy.a aVar = this.f86993a;
        if (aVar != null) {
            return aVar.d();
        }
        return true;
    }

    public final void loadBidding(AdInfo adInfo, Context context, WindMillAdRequest adRequest, com.windmill.sdk.strategy.a adStrategy, s.a biddingListener) {
        this.f86994b = adRequest;
        this.f87003l = null;
        f();
        destroyAd();
        if (this.f87000i == null || adStrategy == null) {
            return;
        }
        WMLogUtil.i("------loadBidding:  context: " + context + " channel id:" + adStrategy.aN());
        Map<String, Object> options = adRequest.getOptions();
        if (options != null && (l.d(adStrategy.aN()) || adStrategy.aN() == 13)) {
            options.put("TB_UserId", getUserId());
        }
        try {
            e();
            WMLogUtil.i("------getAdType:  adtype: " + adStrategy.aK() + " subType:" + adStrategy.s());
            a(adRequest, adStrategy, options);
            a(adInfo, context, adStrategy, biddingListener, options);
        } catch (Exception e10) {
            WMLogUtil.e(e10.getMessage());
            WMAdBaseConnector wMAdBaseConnector = this.f87001j;
            if (wMAdBaseConnector != null) {
                wMAdBaseConnector.adapterDidFailToLoadAd(this, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "init fail:" + e10.getMessage()));
            }
        }
    }

    abstract void loadCustomAd(Context context, ViewGroup viewGroup, WindMillAdRequest adRequest, com.windmill.sdk.strategy.a adStrategy);

    public final void loadInnerAd(final Context context, final ViewGroup viewGroup, final WindMillAdRequest adRequest, final com.windmill.sdk.strategy.a adStrategy, final boolean isLoadAdPrice) {
        this.f86993a = adStrategy;
        this.f86994b = adRequest;
        this.f87003l = null;
        WMLogUtil.i("------loadInnerAd:  context: " + context + " channel id:" + adStrategy.aN());
        if (adStrategy.Y() == 1) {
            adStrategy.aR().put(WMConstants.BID_FLOOR, Integer.valueOf(adStrategy.ah()));
        }
        Map<String, String> mapH = adStrategy.h();
        if (mapH != null && !mapH.isEmpty()) {
            adStrategy.aR().putAll(mapH);
        }
        try {
            if (this.f87000i != null) {
                setAdapterServerExtra(adStrategy.aR());
                int initStatus = this.f87000i.getInitStatus();
                final boolean z10 = adRequest.isLoadToOut;
                SigmobLog.i("---loadInnerAd:initStatus " + initStatus + ":isLoadToOut " + z10 + " " + Thread.currentThread() + "----hashcode: " + adStrategy.hashCode());
                if (initStatus == 0) {
                    if (z10) {
                        return;
                    }
                    if (context == null) {
                        context = getContext();
                    }
                    a(context, viewGroup, adRequest, isLoadAdPrice);
                    return;
                }
                if (initStatus == 2) {
                    this.f87000i.addInitListener(this, new WMCustomAdapterProxy.a() { // from class: com.windmill.sdk.custom.WMAdBaseAdapter.3
                        @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
                        public /* synthetic */ void a() {
                            b.a(this);
                        }

                        @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
                        public void b() {
                            if (z10) {
                                return;
                            }
                            WMAdBaseAdapter wMAdBaseAdapter = WMAdBaseAdapter.this;
                            Context context2 = context;
                            if (context2 == null) {
                                context2 = wMAdBaseAdapter.getContext();
                            }
                            wMAdBaseAdapter.a(context2, viewGroup, adRequest, isLoadAdPrice);
                        }

                        @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
                        public void a(int code, String message) {
                            if (WMAdBaseAdapter.this.f87001j != null) {
                                WMAdBaseAdapter.this.f87001j.adapterDidFailToLoadAd(WMAdBaseAdapter.this, adStrategy, new WMAdapterError(code, "init fail:" + message));
                            }
                        }
                    });
                    return;
                }
                WMAdBaseConnector wMAdBaseConnector = this.f87001j;
                if (wMAdBaseConnector != null) {
                    wMAdBaseConnector.adapterDidFailToLoadAd(this, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "init fail:initStatus " + initStatus));
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void notifyAdapterBiddingResult(boolean isWin, String price, Map<String, Object> referBidInfo) {
        if (isWin) {
            Map<String, String> mapAs = this.f86993a.as();
            if ("0".equals(mapAs != null ? mapAs.get("win_notice") : "")) {
                return;
            }
        } else {
            Map<String, String> mapAs2 = this.f86993a.as();
            if ("0".equals(mapAs2 != null ? mapAs2.get("lose_notice") : "")) {
                return;
            }
        }
        if (getServerExtra() != null && getServerExtra().containsKey(BiddingConstant.noAdUrl)) {
            referBidInfo.put(BiddingConstant.noAdUrl, getServerExtra().get(BiddingConstant.noAdUrl));
        }
        referBidInfo.put("AdInfo", new AdInfo(this.f86993a));
        notifyBiddingResult(isWin, price, referBidInfo);
    }

    @Deprecated
    public void notifyBiddingResult(boolean isWin, String price) {
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onPause(Activity activity) {
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onResume(Activity activity) {
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onStart(Activity activity) {
    }

    @Override // com.windmill.sdk.utils.a.InterfaceC1083a
    public void onStop(Activity activity) {
    }

    public void setAdapterServerExtra(Map<String, Object> serverExtraMap) {
        this.f86999g = serverExtraMap;
    }

    public void setGroC2sPriceInfo(double highestPrice, String groVersion, String pluginVersion, String priceSource, String adRootObjectClasspath, String groPkgName) {
        if (this.f86993a != null) {
            WMLogUtil.i("-----setGroC2sPriceInfo: set placementId = " + this.f86993a.aW() + " highestPrice = " + highestPrice + " groVersion = " + groVersion + " pluginVersion = " + pluginVersion + " priceSource = " + priceSource + " adRootObjectClasspath = " + adRootObjectClasspath + " groPkgName = " + groPkgName);
            this.f86993a.a(highestPrice, groVersion, pluginVersion, priceSource, adRootObjectClasspath, groPkgName);
        }
    }

    public void setGroEcpm(String ecpm) {
        if (this.f86993a != null) {
            WMLogUtil.i("-----GroEcpm: set " + ecpm);
            this.f86993a.b(ecpm);
        }
    }

    abstract void showCustomAd(Activity activity, ViewGroup viewGroup, com.windmill.sdk.strategy.a adStrategy);

    public final void showInnerAd(Activity activity, ViewGroup viewGroup, com.windmill.sdk.strategy.a adStrategy) {
        this.f86993a = adStrategy;
        this.isGdtLoadSuc = false;
        if (adStrategy != null) {
            if (adStrategy.Y() == 1) {
                adStrategy.aR().put("eCpm", adStrategy.V());
            }
            Map<String, String> mapH = adStrategy.h();
            if (mapH != null && !mapH.isEmpty()) {
                adStrategy.aR().putAll(mapH);
            }
            SigmobLog.i("WMAdBaseAdapter---showInnerAd:" + adStrategy.aa().toString() + ":" + adStrategy.aR().toString());
        }
        showCustomAd(activity, viewGroup, adStrategy);
        f();
    }

    public void track(final String pointType, String category, final Map<String, String> onPointEntityExtraInfo) {
        if (this.f86994b == null || this.f86993a == null) {
            SigmobLog.e("WMAdBaseAdapter track: adRequest or adStrategy is null, cannot track point entity");
        } else if (TextUtils.isEmpty(category)) {
            SigmobLog.e("WMAdBaseAdapter track: category is empty, cannot track point entity");
        } else {
            m.a(category, this.f86994b, this.f86993a, null, new m.a() { // from class: com.windmill.sdk.custom.a
                @Override // com.windmill.sdk.utils.m.a
                public final void onAddExtra(Object obj) {
                    this.f87052a.a(pointType, onPointEntityExtraInfo, obj);
                }
            });
        }
    }

    public void updateAdStrategy(com.windmill.sdk.strategy.a strategy) {
        this.f86993a = strategy;
    }

    final WMAdNativeConnector b() {
        WMAdBaseConnector wMAdBaseConnector = this.f87001j;
        if (wMAdBaseConnector == null || !(wMAdBaseConnector instanceof WMAdNativeConnector)) {
            return null;
        }
        return (WMAdNativeConnector) wMAdBaseConnector;
    }

    public void notifyBiddingResult(boolean isWin, String price, Map<String, Object> referBidInfo) {
    }

    private void b(final AdInfo adInfo, final Context context, final com.windmill.sdk.strategy.a adStrategy, final s.a biddingListener, final Map<String, Object> options) {
        int initStatus = this.f87000i.getInitStatus();
        if (initStatus != 0) {
            if (initStatus == 2) {
                this.f87000i.addInitListener(this, new WMCustomAdapterProxy.a() { // from class: com.windmill.sdk.custom.WMAdBaseAdapter.1
                    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
                    public /* synthetic */ void a() {
                        b.a(this);
                    }

                    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
                    public void b() {
                        if (biddingListener != null) {
                            WMAdBaseAdapter wMAdBaseAdapter = WMAdBaseAdapter.this;
                            Context context2 = context;
                            if (context2 == null) {
                                context2 = wMAdBaseAdapter.getContext();
                            }
                            Map<String, String> biddingToken = wMAdBaseAdapter.getBiddingToken(context2, options, adStrategy.aR());
                            if (biddingToken != null && !biddingToken.isEmpty()) {
                                biddingListener.a(adInfo, adStrategy, biddingToken);
                                return;
                            }
                            biddingListener.a(adInfo, adStrategy, 3, "bidding token is null");
                            if (WMAdBaseAdapter.this.f87001j != null) {
                                WMAdBaseAdapter.this.f87001j.adapterDidFailToLoadAd(WMAdBaseAdapter.this, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadBidding init fail"));
                            }
                        }
                    }

                    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
                    public void a(int code, String message) {
                        s.a aVar = biddingListener;
                        if (aVar != null) {
                            aVar.a(adInfo, adStrategy, 2, "init fail: " + code + " " + message);
                        }
                        if (WMAdBaseAdapter.this.f87001j != null) {
                            WMAdBaseAdapter.this.f87001j.adapterDidFailToLoadAd(WMAdBaseAdapter.this, adStrategy, new WMAdapterError(code, "init fail:" + message));
                        }
                    }
                });
                return;
            }
            if (biddingListener != null) {
                biddingListener.a(adInfo, adStrategy, 2, "init fail");
            }
            WMAdBaseConnector wMAdBaseConnector = this.f87001j;
            if (wMAdBaseConnector != null) {
                wMAdBaseConnector.adapterDidFailToLoadAd(this, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadBidding init fail"));
                return;
            }
            return;
        }
        if (biddingListener != null) {
            if (context == null) {
                context = getContext();
            }
            Map<String, String> biddingToken = getBiddingToken(context, options, adStrategy.aR());
            if (biddingToken != null && !biddingToken.isEmpty()) {
                biddingListener.a(adInfo, adStrategy, biddingToken);
                return;
            }
            biddingListener.a(adInfo, adStrategy, 3, "bidding token is null");
            WMAdBaseConnector wMAdBaseConnector2 = this.f87001j;
            if (wMAdBaseConnector2 != null) {
                wMAdBaseConnector2.adapterDidFailToLoadAd(this, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadBidding init fail"));
            }
        }
    }

    final WMAdConnector a() {
        WMAdBaseConnector wMAdBaseConnector = this.f87001j;
        if (wMAdBaseConnector == null || !(wMAdBaseConnector instanceof WMAdConnector)) {
            return null;
        }
        return (WMAdConnector) wMAdBaseConnector;
    }

    private void c(final AdInfo adInfo, final Context context, final com.windmill.sdk.strategy.a adStrategy, final s.a biddingListener, final Map<String, Object> options) {
        this.f87000i.addInitListener(this, new WMCustomAdapterProxy.a() { // from class: com.windmill.sdk.custom.WMAdBaseAdapter.2
            @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
            public /* synthetic */ void a() {
                b.a(this);
            }

            @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
            public void b() {
                if (biddingListener != null) {
                    WMCustomAdapterProxy wMCustomAdapterProxy = WMAdBaseAdapter.this.f87000i;
                    Context context2 = context;
                    if (context2 == null) {
                        context2 = WMAdBaseAdapter.this.getContext();
                    }
                    Map<String, String> biddingToken = wMCustomAdapterProxy.getBiddingToken(context2, options, adStrategy.aR());
                    if (biddingToken != null && !biddingToken.isEmpty()) {
                        biddingListener.a(adInfo, adStrategy, biddingToken);
                        return;
                    }
                    biddingListener.a(adInfo, adStrategy, 3, "bidding token is null");
                    if (WMAdBaseAdapter.this.f87001j != null) {
                        WMAdBaseAdapter.this.f87001j.adapterDidFailToLoadAd(WMAdBaseAdapter.this, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "bidding token is null"));
                    }
                }
            }

            @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
            public void a(int code, String message) {
                s.a aVar = biddingListener;
                if (aVar != null) {
                    aVar.a(adInfo, adStrategy, 2, "init fail: " + code + " " + message);
                }
                if (WMAdBaseAdapter.this.f87001j != null) {
                    WMAdBaseAdapter.this.f87001j.adapterDidFailToLoadAd(WMAdBaseAdapter.this, adStrategy, new WMAdapterError(code, "init fail:" + message));
                }
            }
        });
    }

    private void d(AdInfo adInfo, Context context, com.windmill.sdk.strategy.a adStrategy, s.a biddingListener, Map<String, Object> options) {
        if (biddingListener != null) {
            WMCustomAdapterProxy wMCustomAdapterProxy = this.f87000i;
            if (context == null) {
                context = getContext();
            }
            Map<String, String> biddingToken = wMCustomAdapterProxy.getBiddingToken(context, options, adStrategy.aR());
            if (biddingToken != null && !biddingToken.isEmpty()) {
                biddingListener.a(adInfo, adStrategy, biddingToken);
                return;
            }
            biddingListener.a(adInfo, adStrategy, 3, "bidding token is null");
            WMAdBaseConnector wMAdBaseConnector = this.f87001j;
            if (wMAdBaseConnector != null) {
                wMAdBaseConnector.adapterDidFailToLoadAd(this, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "bidding token is null"));
            }
        }
    }

    private static void a(WindMillAdRequest adRequest, com.windmill.sdk.strategy.a adStrategy, Map<String, Object> options) {
        if (adStrategy.aN() == 13) {
            int i10 = 5;
            if (adStrategy.r() != 1) {
                if (adRequest.getAdType() == 2 || (adStrategy.aK() == 1 && adStrategy.s() == 2)) {
                    i10 = 3;
                } else if (adRequest.getAdType() == 4 || (adStrategy.aK() == 1 && adStrategy.s() == 4)) {
                    i10 = 8;
                } else if (adRequest.getAdType() == 7) {
                    i10 = 1;
                } else if (adRequest.getAdType() == 5 && "2".equals(adStrategy.aT())) {
                    i10 = 9;
                } else if (adRequest.getAdType() != 5 || !"1".equals(adStrategy.aT())) {
                    i10 = 7;
                }
            }
            if (options != null) {
                options.put("adtype", Integer.valueOf(i10));
            }
        }
    }

    private void a(AdInfo adInfo, Context context, com.windmill.sdk.strategy.a adStrategy, s.a biddingListener, Map<String, Object> options) {
        if (adStrategy == null) {
            if (biddingListener != null) {
                biddingListener.a(adInfo, adStrategy, 1, "adStrategy is null");
            }
        } else {
            if (adStrategy.aN() == 42) {
                b(adInfo, context, adStrategy, biddingListener, options);
                return;
            }
            int initStatus = this.f87000i.getInitStatus();
            if (initStatus == 0) {
                d(adInfo, context, adStrategy, biddingListener, options);
            } else if (initStatus == 2) {
                c(adInfo, context, adStrategy, biddingListener, options);
            } else {
                a(adInfo, adStrategy, biddingListener);
            }
        }
    }

    private void a(AdInfo adInfo, com.windmill.sdk.strategy.a adStrategy, s.a biddingListener) {
        if (biddingListener != null) {
            biddingListener.a(adInfo, adStrategy, 2, "init fail");
        }
        WMAdBaseConnector wMAdBaseConnector = this.f87001j;
        if (wMAdBaseConnector != null) {
            wMAdBaseConnector.adapterDidFailToLoadAd(this, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadBidding init fail"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, ViewGroup viewGroup, WindMillAdRequest adRequest, boolean isLoadAdPrice) {
        if (!isLoadAdPrice && this.f86993a.F()) {
            if (this.f86995c) {
                WMAdConnector wMAdConnectorA = a();
                if (this.f86996d) {
                    if (wMAdConnectorA != null) {
                        wMAdConnectorA.adapterDidLoadAdSuccessAd(this, this.f86993a);
                        return;
                    }
                    return;
                } else {
                    this.f86995c = false;
                    if (!this.f86997e || wMAdConnectorA == null) {
                        return;
                    }
                    wMAdConnectorA.adapterDidFailToLoadAd(this, this.f86993a, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "bid after load fail immediately"));
                    return;
                }
            }
            if (this.f86993a.f87101k) {
                return;
            }
        }
        f();
        e();
        loadCustomAd(context, viewGroup, adRequest, this.f86993a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Map map, Object obj) {
        if (obj instanceof PointEntityWind) {
            PointEntityWind pointEntityWind = (PointEntityWind) obj;
            if (!TextUtils.isEmpty(str)) {
                pointEntityWind.setAc_type(str);
            }
            pointEntityWind.setLoad_id(this.f86994b.getLoadId());
            if (map != null) {
                pointEntityWind.getOptions().putAll(map);
            }
        }
    }
}
