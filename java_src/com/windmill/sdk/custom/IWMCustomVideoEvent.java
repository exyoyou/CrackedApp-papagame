package com.windmill.sdk.custom;

import com.windmill.sdk.base.WMAdapterError;

/* JADX INFO: loaded from: classes8.dex */
public interface IWMCustomVideoEvent extends IWMCustomBaseEvent {
    void callLoadSuccess();

    void callVideoAdClick();

    void callVideoAdClickDownload();

    void callVideoAdClosed();

    void callVideoAdPlayComplete();

    void callVideoAdPlayError(WMAdapterError adapterError);

    void callVideoAdReward(boolean isReward);

    void callVideoAdShow();

    void callVideoAdSkipped();
}
