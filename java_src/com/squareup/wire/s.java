package com.squareup.wire;

import java.io.Closeable;
import java.io.IOException;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface s<T> extends Closeable {
    @Nullable
    T read() throws IOException;
}
