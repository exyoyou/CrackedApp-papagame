package com.facebook.common.references;

import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class f<T> extends CloseableReference<T> {
    private f(SharedReference<T> sharedReference, CloseableReference.c leakHandler, @Nullable Throwable stacktrace) {
        super(sharedReference, leakHandler, stacktrace);
    }

    @Override // com.facebook.common.references.CloseableReference
    /* JADX INFO: renamed from: d */
    public CloseableReference<T> clone() {
        i.o(o());
        return new f(this.f26910c, this.f26911d, this.f26912e);
    }

    f(T t10, g<T> resourceReleaser, CloseableReference.c leakHandler, @Nullable Throwable stacktrace) {
        super(t10, resourceReleaser, leakHandler, stacktrace);
    }
}
