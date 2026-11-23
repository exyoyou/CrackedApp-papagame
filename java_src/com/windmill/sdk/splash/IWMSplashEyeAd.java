package com.windmill.sdk.splash;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public interface IWMSplashEyeAd {
    void destroy();

    View getSplashView();

    int[] getSuggestedSize(Context context);

    void onFinished();

    void show(Context context, Rect rect, WMSplashEyeAdListener splashEyeAdListener);
}
