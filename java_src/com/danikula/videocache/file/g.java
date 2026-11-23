package com.danikula.videocache.file;

import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public class g extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f26034b;

    public g(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.f26034b = i10;
    }

    @Override // com.danikula.videocache.file.e
    protected boolean b(File file, long j10, int i10) {
        return i10 <= this.f26034b;
    }
}
