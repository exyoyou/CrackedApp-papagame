package com.sigmob.sdk.videocache.file;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class h extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f81925a;

    public h(long maxSize) {
        if (maxSize <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.f81925a = maxSize;
    }

    @Override // com.sigmob.sdk.videocache.file.e
    protected boolean a(File file, long totalSize, int totalCount) {
        return totalSize <= this.f81925a;
    }
}
