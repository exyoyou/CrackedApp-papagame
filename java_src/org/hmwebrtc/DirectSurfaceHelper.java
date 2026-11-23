package org.hmwebrtc;

import android.view.Surface;

/* JADX INFO: loaded from: classes10.dex */
public interface DirectSurfaceHelper {
    int getRotateDegree();

    Surface getSurface();

    void releaseFromDirectSurface();

    void setRenderDelayMs(long j10);
}
