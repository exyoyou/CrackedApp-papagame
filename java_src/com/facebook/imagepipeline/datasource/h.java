package com.facebook.imagepipeline.datasource;

import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.AbstractDataSource;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public final class h<T> extends AbstractDataSource<CloseableReference<T>> {
    private h() {
    }

    public static <V> h<V> v() {
        return new h<>();
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean q(float progress) {
        return super.q(progress);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.datasource.AbstractDataSource
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public void g(@Nullable CloseableReference<T> result) {
        CloseableReference.h(result);
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
    @Nullable
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public CloseableReference<T> getResult() {
        return CloseableReference.f((CloseableReference) super.getResult());
    }

    public boolean x(@Nullable CloseableReference<T> valueRef) {
        return super.setResult(CloseableReference.f(valueRef), true, null);
    }

    public boolean y(Throwable throwable) {
        return super.n(throwable);
    }
}
