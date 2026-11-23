package com.haima.hmcp.listeners;

import android.widget.FrameLayout;
import com.haima.hmcp.enums.ScreenOrientation;

/* JADX INFO: loaded from: classes5.dex */
public interface TvModelListener {
    boolean isSupportRotate();

    IRenderViewBase onGetRenderView();

    FrameLayout onGetSwitchOrientationTargetView();

    void onMouseRotate(boolean z10);

    ScreenOrientation onScreenOrientation();
}
