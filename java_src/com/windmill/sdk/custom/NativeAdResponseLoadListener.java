package com.windmill.sdk.custom;

import com.windmill.sdk.natives.WMNativeAdData;

/* JADX INFO: loaded from: classes8.dex */
public interface NativeAdResponseLoadListener {
    void onNativeAdResponseLoadFail(int errorCode, String errorMsg);

    void onNativeAdResponseLoadSuccess(WMNativeAdData nativeAdData, int biddingEcpm);
}
