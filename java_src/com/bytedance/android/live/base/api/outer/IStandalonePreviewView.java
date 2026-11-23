package com.bytedance.android.live.base.api.outer;

import android.view.View;

/* JADX INFO: loaded from: classes9.dex */
public interface IStandalonePreviewView {
    View getView();

    void release();

    void setLiveStatusListener(ILiveStatusListener iLiveStatusListener);

    void setMute(boolean z10);

    void show();

    void stream();
}
