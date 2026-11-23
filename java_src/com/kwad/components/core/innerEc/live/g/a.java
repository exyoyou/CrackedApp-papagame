package com.kwad.components.core.innerEc.live.g;

import androidx.annotation.NonNull;
import com.kwad.components.offline.api.core.adInnerEc.longconnection.listener.SCMessageListener;
import com.kwad.sdk.service.ServiceProvider;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> implements SCMessageListener {
    private final String TAG = "BaseSCMessageListener";

    abstract T e(byte[] bArr);

    protected abstract void g(@NonNull T t10);

    @Override // com.kwad.components.offline.api.core.adInnerEc.longconnection.listener.SCMessageListener
    public boolean isSticky() {
        return false;
    }

    @Override // com.kwad.components.offline.api.core.adInnerEc.longconnection.listener.SCMessageListener
    public void onMessageReceived(byte[] bArr) {
        try {
            com.kwad.sdk.core.d.c.d("BaseSCMessageListener", "onMessageReceived" + getPayloadType());
            T tE = e(bArr);
            if (tE != null) {
                g(tE);
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
