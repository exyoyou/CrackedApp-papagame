package com.windmill.sdk.widget;

import android.view.View;
import com.windmill.sdk.base.WMAdapterError;

/* JADX INFO: loaded from: classes8.dex */
public interface BannerViewInteractionListener extends ViewInteractionListener {
    void onAdRenderError(WMAdapterError error);

    void onAdRenderSuccess(View view);
}
