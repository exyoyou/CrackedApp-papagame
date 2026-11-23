package com.squareup.wire;

import java.io.Closeable;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public interface r<T> extends Closeable {
    void cancel() throws IOException;

    void write(@NotNull T t10) throws IOException;
}
