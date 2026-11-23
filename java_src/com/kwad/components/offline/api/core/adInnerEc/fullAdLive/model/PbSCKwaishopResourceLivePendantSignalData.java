package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.model;

import androidx.annotation.Keep;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface PbSCKwaishopResourceLivePendantSignalData {
    String getLiveStreamId();

    List<PbKwaishopResourceLivePendantInfo> getPendantInfo();

    long getSellerId();
}
