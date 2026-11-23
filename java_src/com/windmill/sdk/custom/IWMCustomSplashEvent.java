package com.windmill.sdk.custom;

import com.windmill.sdk.base.WMAdapterError;

/* JADX INFO: loaded from: classes8.dex */
public interface IWMCustomSplashEvent extends IWMCustomBaseEvent {
    void callLoadSuccess();

    void callSplashAdClick();

    void callSplashAdClosed();

    void callSplashAdShow();

    void callSplashAdShowError(WMAdapterError adapterError);

    void callSplashAdSkipped();
}
