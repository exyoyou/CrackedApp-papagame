package com.windmill.sdk.base;

import com.windmill.sdk.WindMillError;

/* JADX INFO: loaded from: classes8.dex */
public interface AutoAdLoadListener {
    void onAutoAdLoadFail(WindMillError error, String placementId);

    void onAutoAdLoadSuccess(String placementId);
}
