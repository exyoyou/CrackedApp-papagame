package com.aggmoread.sdk.z.c.a.a.e.v;

import android.content.ContextWrapper;

/* JADX INFO: loaded from: classes7.dex */
public interface g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f5297a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f5298b = new b();

    static class a implements c {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.v.g.c
        public g a(int i10) {
            if (i10 == -1) {
                return g.f5298b;
            }
            if (1 == i10) {
                return new com.aggmoread.sdk.z.c.a.a.e.v.b();
            }
            if (100 == i10) {
                return new d();
            }
            return 107 == i10 ? new h() : g.f5298b;
        }
    }

    static class b implements g {
        b() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.v.g
        public boolean a() {
            return false;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.v.g
        public boolean a(ContextWrapper contextWrapper, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Object... objArr) {
            return false;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.v.g
        public boolean a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
            return false;
        }
    }

    public interface c {
        g a(int i10);
    }

    boolean a();

    boolean a(ContextWrapper contextWrapper, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Object... objArr);

    boolean a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar);
}
