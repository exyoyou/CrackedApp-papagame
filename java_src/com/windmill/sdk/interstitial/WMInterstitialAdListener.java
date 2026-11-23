package com.windmill.sdk.interstitial;

import com.windmill.sdk.WindMillError;
import com.windmill.sdk.models.AdInfo;

/* JADX INFO: loaded from: classes8.dex */
public interface WMInterstitialAdListener {
    void onInterstitialAdClicked(AdInfo adInfo);

    void onInterstitialAdClosed(AdInfo adInfo);

    void onInterstitialAdLoadError(WindMillError error, String placementId);

    void onInterstitialAdLoadSuccess(String placementId);

    void onInterstitialAdPlayEnd(AdInfo adInfo);

    void onInterstitialAdPlayError(WindMillError error, String placementId);

    void onInterstitialAdPlayStart(AdInfo adInfo);
}
