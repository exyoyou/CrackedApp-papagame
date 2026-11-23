package com.kwad.components.offline.api.core.adInnerEc.longconnection.listener;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface SCMessageListener {
    int getPayloadType();

    boolean isSticky();

    void onMessageReceived(byte[] bArr);
}
