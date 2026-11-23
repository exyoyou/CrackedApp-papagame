package com.kwad.sdk.api.core.lifecycle;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public abstract class KsGenericLifecycleObserver extends KsLifecycleObserver {
    @Keep
    public abstract void onStateChanged(KsLifecycle.KsLifeEvent ksLifeEvent);
}
