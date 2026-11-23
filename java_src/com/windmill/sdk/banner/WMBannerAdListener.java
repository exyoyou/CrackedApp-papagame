package com.windmill.sdk.banner;

import com.windmill.sdk.WindMillError;
import com.windmill.sdk.models.AdInfo;

/* JADX INFO: loaded from: classes8.dex */
public interface WMBannerAdListener {
    void onAdAutoRefreshFail(WindMillError error, String placementId);

    void onAdAutoRefreshed(AdInfo adInfo);

    void onAdClicked(AdInfo adInfo);

    void onAdClosed(AdInfo adInfo);

    void onAdLoadError(WindMillError error, String placementId);

    void onAdLoadSuccess(String placementId);

    void onAdShown(AdInfo adInfo);
}
