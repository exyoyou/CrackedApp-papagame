package com.kwad.components.offline.api.core.adInnerEc.longconnection;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class LiveLongConnectionServerException extends ServerException {
    private static final long serialVersionUID = -4435167903777863038L;
    public final long mMaxDelayMs;
    public final long mMinDelayMs;

    public LiveLongConnectionServerException(int i10, int i11, String str, long j10, long j11) {
        super(i10, i11, str);
        this.mMinDelayMs = j10;
        this.mMaxDelayMs = j11;
    }
}
