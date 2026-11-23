package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.model;

import androidx.annotation.Keep;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface PbKwaishopResourceLivePendantInfo {
    int getAction();

    String getAreaCode();

    String getCallbackApi();

    String getCallbackPath();

    String getEventData();

    String getPendantCode();

    long getPendantResourceId();

    long getRandomRangeMillis();

    Map<String, String> getThroughInfo();

    boolean isNeedBusinessHandle();

    boolean isNeedRandomCall();

    boolean isNeedServerProcess();

    boolean isNeedSignalFallback();
}
