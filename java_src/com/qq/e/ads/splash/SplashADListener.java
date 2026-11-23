package com.qq.e.ads.splash;

import com.qq.e.comm.util.AdError;

/* JADX INFO: loaded from: classes2.dex */
public interface SplashADListener {
    void onADClicked();

    void onADDismissed();

    void onADExposure();

    void onADLoaded(long j10);

    void onADPresent();

    void onADTick(long j10);

    void onNoAD(AdError adError);
}
