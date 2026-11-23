package com.aggmoread.sdk.client.fullscreen;

import android.app.Activity;
import com.aggmoread.sdk.client.AMAdInterface;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public interface AMFullScreenAd extends AMAdInterface {
    void show(Activity activity, AMFullScreenAdInteractionListener aMFullScreenAdInteractionListener);

    void show(AMFullScreenAdInteractionListener aMFullScreenAdInteractionListener);
}
