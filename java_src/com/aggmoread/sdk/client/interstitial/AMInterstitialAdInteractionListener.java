package com.aggmoread.sdk.client.interstitial;

import com.aggmoread.sdk.client.IAMAdInteractionListener;

/* JADX INFO: loaded from: classes7.dex */
public interface AMInterstitialAdInteractionListener extends IAMAdInteractionListener {
    void onADLeftApplication();

    void onAdClicked();

    void onAdClosed();

    void onAdExposed();

    void onAdVideoCompleted();
}
