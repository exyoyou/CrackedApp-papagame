package com.facebook.datasource;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class b<T> implements e<T> {
    @Override // com.facebook.datasource.e
    public void a(@Nonnull c<T> dataSource) {
    }

    @Override // com.facebook.datasource.e
    public void b(@Nonnull c<T> dataSource) {
    }

    @Override // com.facebook.datasource.e
    public void c(@Nonnull c<T> dataSource) {
        try {
            e(dataSource);
        } finally {
            dataSource.close();
        }
    }

    @Override // com.facebook.datasource.e
    public void d(@Nonnull c<T> dataSource) {
        boolean zF = dataSource.f();
        try {
            f(dataSource);
        } finally {
            if (zF) {
                dataSource.close();
            }
        }
    }

    protected abstract void e(@Nonnull c<T> dataSource);

    protected abstract void f(@Nonnull c<T> dataSource);
}
