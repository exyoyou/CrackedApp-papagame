package com.windmill.sdk.custom;

import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.models.BidPrice;

/* JADX INFO: loaded from: classes8.dex */
public interface IWMCustomBaseEvent {
    void callLoadBiddingSuccess(BidPrice price);

    void callLoadFail(WMAdapterError adapterError);
}
