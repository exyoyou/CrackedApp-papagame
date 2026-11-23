package com.beizi.fusion;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public interface NativeAdListener extends a {
    void onAdClick();

    void onAdClosed();

    void onAdClosed(View view);

    void onAdFailed(int i10);

    void onAdLoaded(View view);

    void onAdShown();
}
