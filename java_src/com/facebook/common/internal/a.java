package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.facebook.common.internal.a$a, reason: collision with other inner class name */
    static class C0558a<T> implements j<T> {
        C0558a() {
        }

        @Override // com.facebook.common.internal.j
        public boolean apply(T t10) {
            return true;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    static class b<T> implements j<T> {
        b() {
        }

        @Override // com.facebook.common.internal.j
        public boolean apply(T t10) {
            return false;
        }
    }

    private a() {
    }

    public static <T> j<T> a() {
        return new b();
    }

    public static <T> j<T> b() {
        return new C0558a();
    }
}
