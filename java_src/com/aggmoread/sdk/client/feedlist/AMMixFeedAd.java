package com.aggmoread.sdk.client.feedlist;

import android.app.Activity;
import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public interface AMMixFeedAd extends AMNativeAd {
    View getExpressView();

    boolean isExpressAd();

    void renderExpressAd();

    void renderExpressAd(Activity activity);

    void setExpressInteractionListener(AMExpressInteractionListener aMExpressInteractionListener);

    void setExpressMediaListener(AMExpressAd.ExpressMediaListener expressMediaListener);
}
