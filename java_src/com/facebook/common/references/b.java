package com.facebook.common.references;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b<T> extends CloseableReference<T> {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f26918n = "FinalizerCloseableReference";

    b(T t10, g<T> resourceReleaser, CloseableReference.c leakHandler, @Nullable Throwable stacktrace) {
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

    protected void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (this.f26909b) {
                    super.finalize();
                    return;
                }
                T tH = this.f26910c.h();
                Object[] objArr = new Object[3];
                objArr[0] = Integer.valueOf(System.identityHashCode(this));
                objArr[1] = Integer.valueOf(System.identityHashCode(this.f26910c));
                objArr[2] = tH == null ? null : tH.getClass().getName();
                i3.a.q0(f26918n, "Finalized without closing: %x %x (type = %s)", objArr);
                this.f26910c.e();
                super.finalize();
            }
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }
}
