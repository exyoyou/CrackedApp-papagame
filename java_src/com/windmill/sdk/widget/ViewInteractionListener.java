package com.windmill.sdk.widget;

import com.windmill.sdk.base.WMAdapterError;

/* JADX INFO: loaded from: classes8.dex */
public interface ViewInteractionListener {
    void onAdClick();

    void onAdClose();

    void onAdShow();

    void onAdShowError(WMAdapterError error);
}
