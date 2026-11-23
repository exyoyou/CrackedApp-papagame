package com.aggmoread.sdk.client.banner;

import com.aggmoread.sdk.client.IAMAdInteractionListener;

/* JADX INFO: loaded from: classes7.dex */
public interface AMBannerAdInteractionListener extends IAMAdInteractionListener {
    void onADCloseOverlay();

    void onADLeftApplication();

    void onADOpenOverlay();

    void onAdClicked();

    void onAdClosed();

    void onAdExposed();
}
