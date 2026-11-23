package com.windmill.sdk.custom;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.base.WMAdConnector;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.utils.h;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WMCustomBannerAdapter extends WMAdBaseAdapter implements IWMCustomBannerEvent {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f87026h = "WMCustomBannerAdapter";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.windmill.sdk.strategy.a f87027i;

    private com.windmill.sdk.strategy.a e() {
        com.windmill.sdk.strategy.a aVar = this.f87027i;
        return aVar != null ? aVar : this.f86993a;
    }

    @Override // com.windmill.sdk.custom.IWMCustomBannerEvent
    public final void callBannerAdClick() {
        SigmobLog.i("WMCustomBannerAdapter callBannerAdClick()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidAdClick(this, e(), Collections.emptyMap());
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomBannerEvent
    public final void callBannerAdClosed() {
        SigmobLog.i("WMCustomBannerAdapter callBannerAdClosed()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidCloseAd(this, e());
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomBannerEvent
    public final void callBannerAdShow() {
        SigmobLog.i("WMCustomBannerAdapter callBannerAdShow()");
        Map<String, Object> networkOption = getNetworkOption();
        if (networkOption != null) {
            e().d(networkOption);
        }
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidStartPlayingAd(this, e(), Collections.emptyMap());
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomBannerEvent
    public final void callBannerAdShowError(WMAdapterError adapterError) {
        SigmobLog.i("WMCustomBannerAdapter callBannerAdShowError()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidFailToPlayingAd(this, e(), adapterError);
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomBaseEvent
    public final void callLoadBiddingSuccess(BidPrice price) {
        SigmobLog.i("WMCustomBannerAdapter---callLoadBiddingSuccess " + price.getPrice());
        if (getBiddingType() == 1) {
            this.f86998f = System.currentTimeMillis();
            this.f86995c = true;
            this.f86993a.f(price.getPrice());
            this.f86993a.h(price.getPrice());
            com.windmill.sdk.strategy.a aVar = this.f86993a;
            aVar.f87098h = price.is_pdb;
            aVar.f87099i = price.pdb_priority;
            aVar.g(price.pecpm);
            if (TextUtils.isEmpty(this.f86993a.Q()) && !TextUtils.isEmpty(price.getCurrency())) {
                this.f86993a.e(price.getCurrency());
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
        WMAdConnector wMAdConnectorA;
        SigmobLog.i("WMCustomBannerAdapter---callLoadFail()");
        this.f86997e = true;
        if (this.f86995c || (wMAdConnectorA = a()) == null) {
            return;
        }
        wMAdConnectorA.adapterDidFailToLoadAd(this, this.f86993a, adapterError);
    }

    @Override // com.windmill.sdk.custom.IWMCustomBannerEvent
    public final void callLoadSuccess() {
        SigmobLog.i("WMCustomBannerAdapter---callLoadSuccess()");
        this.f86998f = System.currentTimeMillis();
        this.f86996d = true;
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidLoadAdReady(this, this.f86993a);
        }
        if (this.f86995c || wMAdConnectorA == null) {
            return;
        }
        wMAdConnectorA.adapterDidLoadAdSuccessAd(this, this.f86993a);
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public abstract View getBannerView();

    public abstract void loadAd(Context context, Map<String, Object> localExtra, Map<String, Object> serverExtra);

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void loadCustomAd(Context context, ViewGroup viewGroup, WindMillAdRequest adRequest, com.windmill.sdk.strategy.a adStrategy) {
        SigmobLog.i("WMCustomBannerAdapter-----loadCustomAd---" + adStrategy.aP() + ":" + adStrategy.aW());
        loadAd(context, adRequest.getOptions(), adStrategy.aR());
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void showCustomAd(Activity activity, ViewGroup viewGroup, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void updateAdStrategy(com.windmill.sdk.strategy.a strategy) {
        super.updateAdStrategy(strategy);
        this.f87027i = strategy;
    }

    public final void callLoadSuccess(Object adObject) {
        callLoadSuccess();
        h.a(f87026h, adObject, this.f86993a);
    }
}
