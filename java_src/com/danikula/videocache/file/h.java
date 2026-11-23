package com.danikula.videocache.file;

import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public class h extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f26035b;

    public h(long j10) {
        if (j10 <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.f26035b = j10;
    }

    @Override // com.danikula.videocache.file.e
    protected boolean b(File file, long j10, int i10) {
        return j10 <= this.f26035b;
    }
}
