package com.facebook.common.memory;

import com.facebook.common.internal.n;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class i extends OutputStream {
    public abstract PooledByteBuffer b();

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        try {
            super.close();
        } catch (IOException e10) {
            n.d(e10);
        }
    }

    public abstract int size();
}
