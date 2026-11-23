package com.windmill.sdk.common;

import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.AutoAdLoadListener;

/* JADX INFO: loaded from: classes8.dex */
public class i implements AutoAdLoadListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AutoAdLoadListener f86671a;

    public void a(AutoAdLoadListener autoLoadListener) {
        this.f86671a = autoLoadListener;
    }

    @Override // com.windmill.sdk.base.AutoAdLoadListener
    public void onAutoAdLoadFail(WindMillError error, String placementId) {
        AutoAdLoadListener autoAdLoadListener = this.f86671a;
        if (autoAdLoadListener != null) {
            autoAdLoadListener.onAutoAdLoadFail(error, placementId);
        }
    }

    @Override // com.windmill.sdk.base.AutoAdLoadListener
    public void onAutoAdLoadSuccess(String placementId) {
        AutoAdLoadListener autoAdLoadListener = this.f86671a;
        if (autoAdLoadListener != null) {
            autoAdLoadListener.onAutoAdLoadSuccess(placementId);
        }
    }
}
