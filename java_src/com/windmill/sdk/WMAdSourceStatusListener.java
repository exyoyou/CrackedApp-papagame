package com.windmill.sdk;

import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.models.AdInfo;

/* JADX INFO: loaded from: classes8.dex */
public interface WMAdSourceStatusListener {
    void onAdSourceBiddingFailed(AdInfo adInfo, WMAdapterError errorMessage);

    void onAdSourceBiddingStart(AdInfo adInfo);

    void onAdSourceBiddingSuccess(AdInfo adInfo);

    void onAdSourceLoadFailed(AdInfo adInfo, WMAdapterError errorMessage);

    void onAdSourceLoadStart(AdInfo adInfo);

    void onAdSourceLoadSuccess(AdInfo adInfo);
}
