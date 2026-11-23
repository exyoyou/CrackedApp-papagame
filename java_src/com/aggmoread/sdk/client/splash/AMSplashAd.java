package com.aggmoread.sdk.client.splash;

import android.view.ViewGroup;
import com.aggmoread.sdk.client.AMAdInterface;

/* JADX INFO: loaded from: classes7.dex */
public interface AMSplashAd extends AMAdInterface {
    void show(AMSplashInteractionListener aMSplashInteractionListener);

    void showViewGroup(ViewGroup viewGroup, AMSplashInteractionListener aMSplashInteractionListener);
}
