package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.info;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class HostLiveUrlSwitchReason {
    public long mEmptyDataDurationMs;
    public int mReleaseReason;
    public int mRetryReason;

    @NonNull
    public String toString() {
        return "LiveUrlSwitchReason{mReleaseReason=" + this.mReleaseReason + ", mRetryReason=" + this.mRetryReason + ", mEmptyDataDurationMs=" + this.mEmptyDataDurationMs + '}';
    }
}
