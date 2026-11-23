package com.kwad.components.offline.api.core.api;

import android.app.Activity;

/* JADX INFO: loaded from: classes2.dex */
public interface ILifeCycle {
    Activity getCurrentActivity();

    boolean isAppOnForeground();

    int registerLifeCycleListener(ILifeCycleListener iLifeCycleListener);

    void unregisterLifeCycleListener(int i10);
}
