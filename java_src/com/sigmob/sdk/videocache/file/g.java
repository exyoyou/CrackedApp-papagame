package com.sigmob.sdk.videocache.file;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class g extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f81924a;

    public g(int maxCount) {
        if (maxCount <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.f81924a = maxCount;
    }

    @Override // com.sigmob.sdk.videocache.file.e
    protected boolean a(File file, long totalSize, int totalCount) {
        return totalCount <= this.f81924a;
    }
}
