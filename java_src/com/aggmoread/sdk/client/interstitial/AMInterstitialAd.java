package com.aggmoread.sdk.client.interstitial;

import android.app.Activity;
import com.aggmoread.sdk.client.AMAdInterface;

/* JADX INFO: loaded from: classes7.dex */
public interface AMInterstitialAd extends AMAdInterface {
    void show(Activity activity, AMInterstitialAdInteractionListener aMInterstitialAdInteractionListener);

    void show(AMInterstitialAdInteractionListener aMInterstitialAdInteractionListener);
}
