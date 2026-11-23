package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface z {
    long A() throws UnsupportedOperationException;

    int B(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count);

    @Nullable
    ByteBuffer C();

    byte D(final int offset);

    int a(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count);

    void b(final int offset, final z other, final int otherOffset, final int count);

    void close();

    int getSize();

    long getUniqueId();

    boolean isClosed();
}
