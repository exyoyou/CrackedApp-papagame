package com.kwad.components.offline.api.core.soloader;

/* JADX INFO: loaded from: classes2.dex */
public interface SoLoadListener {
    void onFailed(int i10, Throwable th);

    void onLoaded();

    void onPreUpdate();
}
