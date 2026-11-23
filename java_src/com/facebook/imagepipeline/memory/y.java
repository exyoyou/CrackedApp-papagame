package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class y<T> implements g0<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<T> f28204a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m<T> f28205b = new m<>();

    @Nullable
    private T b(@Nullable T t10) {
        if (t10 != null) {
            synchronized (this) {
                this.f28204a.remove(t10);
            }
        }
        return t10;
    }

    @VisibleForTesting
    int c() {
        return this.f28205b.g();
    }

    @Override // com.facebook.imagepipeline.memory.g0
    @Nullable
    public T get(int i10) {
        return b(this.f28205b.a(i10));
    }

    @Override // com.facebook.imagepipeline.memory.g0
    @Nullable
    public T pop() {
        return b(this.f28205b.f());
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void put(T item) {
        boolean zAdd;
        synchronized (this) {
            zAdd = this.f28204a.add(item);
        }
        if (zAdd) {
            this.f28205b.e(a(item), item);
        }
    }
}
