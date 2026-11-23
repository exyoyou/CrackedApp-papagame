package com.beizi.fusion;

/* JADX INFO: loaded from: classes6.dex */
public interface AdListener extends a {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i10);

    void onAdLoaded();

    void onAdShown();

    void onAdTick(long j10);
}
