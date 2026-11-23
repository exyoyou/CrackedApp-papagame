package com.facebook.common.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public interface PooledByteBuffer extends Closeable {

    public static class ClosedException extends RuntimeException {
        public ClosedException() {
            super("Invalid bytebuf. Already closed");
        }
    }

    long A();

    int B(int offset, byte[] buffer, int bufferOffset, int length);

    @Nullable
    ByteBuffer C();

    byte D(int offset);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    boolean isClosed();

    int size();
}
