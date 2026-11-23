package com.aggmoread.sdk.client.fullscreen;

import com.aggmoread.sdk.client.IAMAdInteractionListener;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public interface AMFullScreenAdInteractionListener extends IAMAdInteractionListener {
    void onADLeftApplication();

    void onAdClicked();

    void onAdClosed();

    void onAdExposed();

    void onAdVideoCompleted();
}
