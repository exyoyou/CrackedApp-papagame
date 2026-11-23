package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.model;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface PBHelper {
    PbClientStat getPbClientStat();

    PbPayloadType getPbPayloadType();

    <T> T parseFrom(byte[] bArr, Class<T> cls);
}
