package com.bykv.vk.component.ttvideo.player;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public interface IMediaDataSource extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    @Keep
    void close() throws IOException;

    @Keep
    long getSize() throws IOException;

    @Keep
    int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException;
}
