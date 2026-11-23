package com.windmill.sdk.base;

import com.windmill.sdk.custom.WMAdBaseAdapter;
import com.windmill.sdk.strategy.a;

/* JADX INFO: loaded from: classes8.dex */
public interface WMAdBaseConnector<T extends WMAdBaseAdapter> {
    void adapterDidFailToLoadAd(T adapter, a adStrategy, WMAdapterError error);

    void adapterDidFailToPlayingAd(T adapter, a adStrategy, WMAdapterError error);

    void adapterDidLoadBiddingPriceSuccess(T adapter, a adStrategy, String price);
}
