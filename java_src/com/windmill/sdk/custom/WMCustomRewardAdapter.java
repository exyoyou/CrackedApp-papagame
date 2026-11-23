package com.windmill.sdk.custom;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.base.WMAdConnector;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.utils.h;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WMCustomRewardAdapter extends WMAdBaseAdapter implements IWMCustomVideoEvent {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected static String f87036h = "WMCustomRewardAdapter";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f87037i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Boolean f87038j = Boolean.FALSE;

    @Override // com.windmill.sdk.custom.IWMCustomBaseEvent
    public final void callLoadBiddingSuccess(BidPrice price) {
        SigmobLog.i(f87036h + "---callLoadBiddingSuccess " + price.getPrice());
        if (getBiddingType() == 1) {
            this.f86995c = true;
            this.f86998f = System.currentTimeMillis();
            this.f86993a.f(price.getPrice());
            this.f86993a.g(price.pecpm);
            this.f86993a.h(price.getPrice());
            com.windmill.sdk.strategy.a aVar = this.f86993a;
            aVar.f87098h = price.is_pdb;
            aVar.f87099i = price.pdb_priority;
            if (TextUtils.isEmpty(aVar.Q()) && !TextUtils.isEmpty(price.getCurrency())) {
                this.f86993a.e(price.getCurrency());
            }
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
        SigmobLog.i(f87036h + "---callLoadFail()");
        this.f86997e = true;
        if (this.f86995c || this.f87038j.booleanValue()) {
            return;
        }
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidFailToLoadAd(this, this.f86993a, adapterError);
        }
        this.f87038j = Boolean.TRUE;
    }

    @Override // com.windmill.sdk.custom.IWMCustomVideoEvent
    public final void callLoadSuccess() {
        SigmobLog.i(f87036h + "---callLoadSuccess()");
        this.f86996d = true;
        this.f86998f = System.currentTimeMillis();
        this.f86993a.a(getChannelObject(), com.windmill.sdk.strategy.a.f87082o.contains(Integer.valueOf(this.f86993a.aN())));
        Map<String, String> saasChannelInfo = getSaasChannelInfo();
        if (saasChannelInfo != null) {
            this.f86993a.b(saasChannelInfo);
        }
        c();
        d();
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidLoadAdReady(this, this.f86993a);
        }
        if (this.f86995c || wMAdConnectorA == null) {
            return;
        }
        wMAdConnectorA.adapterDidLoadAdSuccessAd(this, this.f86993a);
    }

    @Override // com.windmill.sdk.custom.IWMCustomVideoEvent
    public final void callVideoAdClick() {
        SigmobLog.i(f87036h + "---callVideoAdClick()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidAdClick(this, this.f86993a, Collections.emptyMap());
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomVideoEvent
    public void callVideoAdClickDownload() {
        SigmobLog.i(f87036h + "---callVideoAdClickDownload()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidAdClickDownload(this, this.f86993a);
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomVideoEvent
    public final void callVideoAdClosed() {
        SigmobLog.i(f87036h + "---callVideoAdClosed()");
        if (this.f87037i) {
            return;
        }
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidCloseAd(this, this.f86993a);
        }
        this.f87037i = true;
    }

    @Override // com.windmill.sdk.custom.IWMCustomVideoEvent
    public final void callVideoAdPlayComplete() {
        SigmobLog.i(f87036h + "---callVideoAdPlayComplete()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidPlayEndAd(this, this.f86993a);
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomVideoEvent
    public final void callVideoAdPlayError(WMAdapterError adapterError) {
        SigmobLog.i(f87036h + "---callVideoAdPlayError()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidFailToPlayingAd(this, this.f86993a, adapterError);
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomVideoEvent
    public final void callVideoAdReward(boolean isReward) {
        SigmobLog.i(f87036h + "---callVideoAdReward()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidRewardAd(this, this.f86993a, isReward);
        }
    }

    public final void callVideoAdRewardWithData(boolean isReward, Map<String, Object> customData) {
        SigmobLog.i(f87036h + "---callVideoAdRewardWithData()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            if (customData != null) {
                this.f86993a.e(customData);
            }
            wMAdConnectorA.adapterDidRewardAd(this, this.f86993a, isReward);
        }
    }

    @Override // com.windmill.sdk.custom.IWMCustomVideoEvent
    public final void callVideoAdShow() {
        SigmobLog.i(f87036h + "---callVideoAdShow()");
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

    @Override // com.windmill.sdk.custom.IWMCustomVideoEvent
    public final void callVideoAdSkipped() {
        SigmobLog.i(f87036h + "---callVideoAdSkipped()");
        WMAdConnector wMAdConnectorA = a();
        if (wMAdConnectorA != null) {
            wMAdConnectorA.adapterDidSkipAd(this, this.f86993a);
        }
    }

    public abstract void loadAd(Context context, Map<String, Object> localExtra, Map<String, Object> serverExtra);

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void loadCustomAd(Context context, ViewGroup viewGroup, WindMillAdRequest adRequest, com.windmill.sdk.strategy.a adStrategy) {
        SigmobLog.i(f87036h + "-----loadCustomAd---" + adStrategy.aP() + ":" + adStrategy.aW());
        this.f87037i = false;
        this.f87038j = Boolean.FALSE;
        loadAd(context, adRequest.getOptions(), adStrategy.aR());
    }

    public abstract void showAd(Activity activity, HashMap<String, String> localExtra, Map<String, Object> serverExtra);

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void showCustomAd(Activity activity, ViewGroup viewGroup, com.windmill.sdk.strategy.a adStrategy) {
        SigmobLog.i(f87036h + "----showCustomAd--" + adStrategy.aP() + ":" + adStrategy.aW());
        showAd(activity, adStrategy.aa(), adStrategy.aR());
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public final void updateAdStrategy(com.windmill.sdk.strategy.a strategy) {
        super.updateAdStrategy(strategy);
    }

    public final void callLoadSuccess(Object adObject) {
        callLoadSuccess();
        h.a(f87036h, adObject, this.f86993a);
    }
}
