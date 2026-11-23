package com.byazt.mk;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes6.dex */
public interface uj extends rh, WritableByteChannel {
    @Override // com.byazt.mk.rh, java.io.Flushable
    void flush() throws IOException;

    uj i(int i10) throws IOException;

    uj rl() throws IOException;

    uj sl(long j10) throws IOException;

    uj sp(int i10) throws IOException;

    uj t(long j10) throws IOException;

    uj tt(a aVar) throws IOException;

    uj tt(String str) throws IOException;

    uj ve(byte[] bArr) throws IOException;

    uj ve(byte[] bArr, int i10, int i11) throws IOException;

    ve ve();

    uj x(int i10) throws IOException;
}
