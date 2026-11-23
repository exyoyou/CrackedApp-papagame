package com.windmill.sdk.reward;

import com.windmill.sdk.WindMillError;
import com.windmill.sdk.models.AdInfo;

/* JADX INFO: loaded from: classes8.dex */
public interface WMRewardAdListener {
    void onVideoAdClicked(AdInfo adInfo);

    void onVideoAdClosed(AdInfo adInfo);

    void onVideoAdLoadError(WindMillError error, String placementId);

    void onVideoAdLoadSuccess(String placementId);

    void onVideoAdPlayEnd(AdInfo adInfo);

    void onVideoAdPlayError(WindMillError error, String placementId);

    void onVideoAdPlayStart(AdInfo adInfo);

    void onVideoRewarded(AdInfo adInfo, WMRewardInfo rewardInfo);
}
