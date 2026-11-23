package com.facebook.common.references;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d<T> extends CloseableReference<T> {
    d(T t10, g<T> resourceReleaser, CloseableReference.c leakHandler, @Nullable Throwable stacktrace) {
        super(t10, resourceReleaser, leakHandler, stacktrace);
    }

    @Override // com.facebook.common.references.CloseableReference, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.facebook.common.references.CloseableReference
    /* JADX INFO: renamed from: d */
    public CloseableReference<T> clone() {
        return this;
    }
}
