package com.kwad.sdk.core.videocache.a;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends e {
    private final long maxSize;

    public g(long j10) {
        if (j10 <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.maxSize = j10;
    }

    @Override // com.kwad.sdk.core.videocache.a.e
    protected final boolean aQ(long j10) {
        return j10 <= this.maxSize;
    }
}
