package com.facebook.common.references;

import com.facebook.infer.annotation.Nullsafe;
import java.lang.ref.SoftReference;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    SoftReference<T> f26919a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    SoftReference<T> f26920b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    SoftReference<T> f26921c = null;

    public void a() {
        SoftReference<T> softReference = this.f26919a;
        if (softReference != null) {
            softReference.clear();
            this.f26919a = null;
        }
        SoftReference<T> softReference2 = this.f26920b;
        if (softReference2 != null) {
            softReference2.clear();
            this.f26920b = null;
        }
        SoftReference<T> softReference3 = this.f26921c;
        if (softReference3 != null) {
            softReference3.clear();
            this.f26921c = null;
        }
    }

    @Nullable
    public T b() {
        SoftReference<T> softReference = this.f26919a;
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    public void c(T hardReference) {
        this.f26919a = new SoftReference<>(hardReference);
        this.f26920b = new SoftReference<>(hardReference);
        this.f26921c = new SoftReference<>(hardReference);
    }
}
