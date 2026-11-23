package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l<Boolean> f26884a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l<Boolean> f26885b = new c();

    /* JADX INFO: Add missing generic type declarations: [T] */
    static class a<T> implements l<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f26886a;

        a(final Object val$instance) {
            this.f26886a = val$instance;
        }

        @Override // com.facebook.common.internal.l
        public T get() {
            return (T) this.f26886a;
        }
    }

    static class b implements l<Boolean> {
        b() {
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean get() {
            return Boolean.TRUE;
        }
    }

    static class c implements l<Boolean> {
        c() {
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean get() {
            return Boolean.FALSE;
        }
    }

    public static <T> l<T> a(final T instance) {
        return new a(instance);
    }
}
