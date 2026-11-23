package com.facebook.common.memory;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public interface g {
    PooledByteBuffer a(InputStream inputStream) throws IOException;

    i b();

    PooledByteBuffer c(byte[] bytes);

    i d(int initialCapacity);

    PooledByteBuffer e(InputStream inputStream, int initialCapacity) throws IOException;

    PooledByteBuffer f(int size);
}
