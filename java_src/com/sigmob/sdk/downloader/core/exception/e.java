package com.sigmob.sdk.downloader.core.exception;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class e extends IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f80627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f80628b;

    public e(long requireSpace, long freeSpace) {
        super("There is Free space less than Require space: " + freeSpace + " < " + requireSpace);
        this.f80627a = requireSpace;
        this.f80628b = freeSpace;
    }

    public long a() {
        return this.f80627a;
    }

    public long b() {
        return this.f80628b;
    }
}
