package com.beizi.fusion.unified;

import com.beizi.fusion.a;

/* JADX INFO: loaded from: classes6.dex */
public interface BZUnifiedAdListener extends a {
    void onAdClick();

    void onAdFailed(int i10);

    void onAdLoaded(BZUnifiedAdResponse bZUnifiedAdResponse);

    void onAdShown();
}
