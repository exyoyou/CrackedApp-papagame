package com.facebook.common.internal;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    static final Logger f26875a = Logger.getLogger(c.class.getName());

    private c() {
    }

    public static void a(@Nullable Closeable closeable, boolean swallowIOException) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e10) {
            if (!swallowIOException) {
                throw e10;
            }
            f26875a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e10);
        }
    }

    public static void b(@Nullable InputStream inputStream) {
        try {
            a(inputStream, true);
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public static void c(@Nullable Reader reader) {
        try {
            a(reader, true);
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
