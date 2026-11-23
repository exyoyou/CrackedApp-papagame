package com.windmill.sdk.custom;

import com.windmill.sdk.base.WMAdapterError;

/* JADX INFO: loaded from: classes8.dex */
public interface IWMCustomBannerEvent extends IWMCustomBaseEvent {
    void callBannerAdClick();

    void callBannerAdClosed();

    void callBannerAdShow();

    void callBannerAdShowError(WMAdapterError adapterError);

    void callLoadSuccess();
}
