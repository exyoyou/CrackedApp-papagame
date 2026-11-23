package com.kwad.components.offline.api.core.adInnerEc.fullAdLive;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface IPlayerReconnect {
    void fetchDataSource(int i10, String str, String str2, ILiveFetchCallback iLiveFetchCallback);

    void stopReconnect();
}
