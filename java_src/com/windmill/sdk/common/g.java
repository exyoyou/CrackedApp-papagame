package com.windmill.sdk.common;

import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.models.AdInfo;

/* JADX INFO: loaded from: classes8.dex */
public class g implements WMAdSourceStatusListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WMAdSourceStatusListener f86657a;

    public void a(WMAdSourceStatusListener mAdSourceStatusListener) {
        this.f86657a = mAdSourceStatusListener;
    }

    @Override // com.windmill.sdk.WMAdSourceStatusListener
    public void onAdSourceBiddingFailed(AdInfo adInfo, WMAdapterError errorMessage) {
        WMAdSourceStatusListener wMAdSourceStatusListener = this.f86657a;
        if (wMAdSourceStatusListener != null) {
            wMAdSourceStatusListener.onAdSourceBiddingFailed(adInfo, errorMessage);
        }
    }

    @Override // com.windmill.sdk.WMAdSourceStatusListener
    public void onAdSourceBiddingStart(AdInfo adInfo) {
        WMAdSourceStatusListener wMAdSourceStatusListener = this.f86657a;
        if (wMAdSourceStatusListener != null) {
            wMAdSourceStatusListener.onAdSourceBiddingStart(adInfo);
        }
    }

    @Override // com.windmill.sdk.WMAdSourceStatusListener
    public void onAdSourceBiddingSuccess(AdInfo adInfo) {
        WMAdSourceStatusListener wMAdSourceStatusListener = this.f86657a;
        if (wMAdSourceStatusListener != null) {
            wMAdSourceStatusListener.onAdSourceBiddingSuccess(adInfo);
        }
    }

    @Override // com.windmill.sdk.WMAdSourceStatusListener
    public void onAdSourceLoadFailed(AdInfo adInfo, WMAdapterError errorMessage) {
        WMAdSourceStatusListener wMAdSourceStatusListener = this.f86657a;
        if (wMAdSourceStatusListener != null) {
            wMAdSourceStatusListener.onAdSourceLoadFailed(adInfo, errorMessage);
        }
    }

    @Override // com.windmill.sdk.WMAdSourceStatusListener
    public void onAdSourceLoadStart(AdInfo adInfo) {
        WMAdSourceStatusListener wMAdSourceStatusListener = this.f86657a;
        if (wMAdSourceStatusListener != null) {
            wMAdSourceStatusListener.onAdSourceLoadStart(adInfo);
        }
    }

    @Override // com.windmill.sdk.WMAdSourceStatusListener
    public void onAdSourceLoadSuccess(AdInfo adInfo) {
        WMAdSourceStatusListener wMAdSourceStatusListener = this.f86657a;
        if (wMAdSourceStatusListener != null) {
            wMAdSourceStatusListener.onAdSourceLoadSuccess(adInfo);
        }
    }
}
