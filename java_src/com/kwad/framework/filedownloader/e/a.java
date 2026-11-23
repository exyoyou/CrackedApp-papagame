package com.kwad.framework.filedownloader.e;

import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
public interface a extends Closeable {
    void Du();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void seek(long j10);

    void setLength(long j10);

    void write(byte[] bArr, int i10, int i11);
}
