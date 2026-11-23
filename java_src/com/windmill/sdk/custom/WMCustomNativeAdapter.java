package com.windmill.sdk.custom;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.base.WMAdConnector;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.utils.h;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WMCustomNativeAdapter extends WMAdBaseAdapter implements IWMCustomNativeEvent {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f87032h = "WMCustomNativeAdapter";
    protected WMAdBaseAdapter baseAdapter;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AdInfo f87034j;
    protected NativeAdResponseLoadListener loadListener;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Boolean f87033i = Boolean.FALSE;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Map<WMNativeAdData, com.windmill.sdk.strategy.a> f87035k = new HashMap();

    private com.windmill.sdk.strategy.a a(WMNativeAdData adData) {
        com.windmill.sdk.strategy.a aVar;
        return (adData == null || this.f87035k.size() <= 0 || (aVar = this.f87035k.get(adData)) == null) ? this.f86993a : aVar;
    }

    @Override // com.windmill.sdk.custom.IWMCustomBaseEvent
    public final void callLoadBiddingSuccess(BidPrice price) {
        SigmobLog.i(f87032h + " callLoadBiddingSuccess " + price.getPrice());
        if (getBiddingType() == 1) {
            this.f86998f = System.currentTimeMillis();
            this.f86995c = true;
            WMAdConnector wMAdConnectorA = a();
            if (wMAdConnectorA != null) {
                this.f86993a.f(price.getPrice());
                this.f86993a.h(price.getPrice());
                this.f86993a.g(price.pecpm);
                if (TextUtils.isEmpty(this.f86993a.Q()) && !TextUtils.isEmpty(price.getCurrency())) {
                    this.f86993a.e(price.getCurrency());
                }
                this.f86993a.a(new com.windmill.sdk.strategy.a.C1081a("", "", String.valueOf(hashCode()) + System.currentTimeMillis(), "", null, 0, null));
                wMAdConnectorA.adapterDidLoadBiddingPriceSuccess(this, this.f86993a, price.getPrice());
            }
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomBaseEvent
    public final void callLoadFail(WMAdapterError adapterError) {
        SigmobLog.i(f87032h + " callLoadFail()");
        this.f86997e = true;
        if (this.f86995c || this.f87033i.booleanValue()) {
            return;
        }
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidFailToLoadAd(this, this.f86993a, adapterError);
        }
        this.f87033i = Boolean.TRUE;
    }

    @Override // com.windmill.sdk.custom.IWMCustomNativeEvent
    public final void callLoadSuccess(List<WMNativeAdData> list) {
        SigmobLog.i(f87032h + " callLoadSuccess()");
        this.f86996d = true;
        this.f86998f = System.currentTimeMillis();
        c();
        d();
        if (list != null) {
            try {
                if (list.size() > 0) {
                    WMNativeAdData wMNativeAdData = list.get(0);
                    if (wMNativeAdData != null) {
                        this.f86993a.b(wMNativeAdData.getMediaExtraOption());
                    }
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        WMNativeAdData wMNativeAdData2 = list.get(i10);
                        if (wMNativeAdData2 != null && !this.f87035k.containsKey(wMNativeAdData2)) {
                            this.f87035k.put(wMNativeAdData2, this.f86993a);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidLoadAdReady(this, this.f86993a);
        }
        if (this.f86995c || wMAdConnectorA == null) {
            return;
        }
        wMAdConnectorA.adapterDidLoadAdSuccessAd(this, this.f86993a);
    }

    @Override // com.windmill.sdk.custom.IWMCustomNativeEvent
    public void callNativeAdClick(WMNativeAdData adData) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f87032h);
        sb2.append(" callNativeAdClick() ");
        sb2.append(b() != null);
        sb2.append(" ");
        sb2.append(adData != null);
        SigmobLog.i(sb2.toString());
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            HashMap map = new HashMap();
            map.put(WMConstants.OFFER_ID, String.valueOf(adData.hashCode()));
            wMAdConnectorA.adapterDidAdClick(this, a(adData), map);
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomNativeEvent
    public void callNativeAdLangPageShow(WMNativeAdData adData) {
        SigmobLog.i(f87032h + " callNativeAdLangPageShow()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            HashMap map = new HashMap();
            map.put(WMConstants.OFFER_ID, String.valueOf(adData.hashCode()));
            wMAdConnectorA.adapterDidShowLangPageAd(this, a(adData), map);
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomNativeEvent
    public void callNativeAdShow(WMNativeAdData adData) {
        SigmobLog.i(f87032h + "---callNativeAdShow()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            HashMap map = new HashMap();
            map.put(WMConstants.OFFER_ID, String.valueOf(adData.hashCode()));
            wMAdConnectorA.adapterDidStartPlayingAd(this, a(adData), map);
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomNativeEvent
    public final void callNativeAdShowError(WMNativeAdData adData, WMAdapterError adapterError) {
        SigmobLog.i(f87032h + " callNativeAdShowError()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidFailToPlayingAd(this, a(adData), adapterError);
        }
    }

    public final int getAdCount() {
        WindMillAdRequest windMillAdRequest = this.f86994b;
        if (windMillAdRequest != null) {
            return windMillAdRequest.getAdCount();
        }
        return 1;
    }

    @Deprecated
    public final AdInfo getAdInFo() {
        if (this.f87034j == null) {
            AdInfo adInfo = new AdInfo(this.f86993a);
            this.f87034j = adInfo;
            adInfo.fillData(this.f86994b);
        }
        return this.f87034j;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public abstract List<WMNativeAdData> getNativeAdDataList();

    public final int getNativeAdType() {
        try {
            com.windmill.sdk.strategy.a aVar = this.f86993a;
            if (aVar == null || aVar.aR() == null) {
                return -1;
            }
            return WMBidUtil.parseInt(this.f86993a.aR().get("templateType")).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public final int getNativeType() {
        try {
            com.windmill.sdk.strategy.a aVar = this.f86993a;
            if (aVar == null || aVar.aR() == null) {
                return -1;
            }
            return WMBidUtil.parseInt(this.f86993a.aR().get(WMConstants.SUBTYPE)).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public abstract void loadAd(Context context, Map<String, Object> localExtra, Map<String, Object> serverExtra);

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void loadCustomAd(Context context, ViewGroup viewGroup, WindMillAdRequest adRequest, com.windmill.sdk.strategy.a adStrategy) {
        SigmobLog.i(f87032h + "------------loadCustomAd------------" + adStrategy.aP() + ":" + adStrategy.aW());
        this.f87034j = null;
        this.f87033i = Boolean.FALSE;
        loadAd(context, adRequest.getOptions(), adStrategy.aR());
    }

    public void setAdapter(WMAdBaseAdapter adapter) {
        this.baseAdapter = adapter;
    }

    public void setLoadNativeAdResponseLoadListener(NativeAdResponseLoadListener listener) {
        this.loadListener = listener;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void showCustomAd(Activity activity, ViewGroup viewGroup, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void updateAdStrategy(com.windmill.sdk.strategy.a strategy) {
        try {
            super.updateAdStrategy(strategy);
            AdInfo adInfo = new AdInfo(strategy);
            this.f87034j = adInfo;
            adInfo.fillData(this.f86994b);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final AdInfo getAdInFo(WMNativeAdData nativeAdData) {
        if (this.f87034j == null) {
            AdInfo adInfo = new AdInfo(a(nativeAdData));
            this.f87034j = adInfo;
            adInfo.fillData(this.f86994b);
        }
        return this.f87034j;
    }

    public final void callLoadSuccess(Object adObject) {
        h.a(f87032h, adObject, this.f86993a);
    }
}
