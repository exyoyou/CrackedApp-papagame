package com.windmill.sdk.natives;

import android.content.Context;
import android.view.View;
import com.windmill.sdk.natives.WMNativeAdData;

/* JADX INFO: loaded from: classes8.dex */
public interface WMNativeAdRender<T extends WMNativeAdData> {
    View createView(Context context, int adPatternType);

    void renderAdView(View view, T adData);
}
