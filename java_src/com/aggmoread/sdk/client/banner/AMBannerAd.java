package com.aggmoread.sdk.client.banner;

import android.view.ViewGroup;
import com.aggmoread.sdk.client.AMAdInterface;

/* JADX INFO: loaded from: classes7.dex */
public interface AMBannerAd extends AMAdInterface {
    void show(AMBannerAdInteractionListener aMBannerAdInteractionListener);

    void showInContainer(ViewGroup viewGroup, AMBannerAdInteractionListener aMBannerAdInteractionListener);
}
