package com.windmill.sdk.splash;

import com.windmill.sdk.WindMillError;
import com.windmill.sdk.models.AdInfo;

/* JADX INFO: loaded from: classes8.dex */
public interface WMSplashAdListener {
    void onSplashAdClicked(AdInfo adInfo);

    void onSplashAdFailToLoad(WindMillError error, String placementId);

    void onSplashAdFailToPresent(WindMillError error, String placementId);

    void onSplashAdSuccessLoad(String placementId);

    void onSplashAdSuccessPresent(AdInfo adInfo);

    void onSplashClosed(AdInfo adInfo, IWMSplashEyeAd splashEyeAd);
}
