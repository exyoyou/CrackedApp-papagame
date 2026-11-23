package com.kingja.loadsir.core;

import androidx.annotation.NonNull;
import com.kingja.loadsir.callback.Callback;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile c f73584b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f73585a;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<Callback> f73586a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<j7.b> f73587b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Class<? extends Callback> f73588c;

        public b() {
            ArrayList arrayList = new ArrayList();
            this.f73587b = arrayList;
            arrayList.add(new j7.a());
            this.f73587b.add(new j7.c());
        }

        public b a(@NonNull Callback callback) {
            this.f73586a.add(callback);
            return this;
        }

        public b b(j7.b bVar) {
            this.f73587b.add(bVar);
            return this;
        }

        public c c() {
            return new c(this);
        }

        public void d() {
            c.c().g(this);
        }

        List<Callback> e() {
            return this.f73586a;
        }

        Class<? extends Callback> f() {
            return this.f73588c;
        }

        public List<j7.b> g() {
            return this.f73587b;
        }

        public b h(@NonNull Class<? extends Callback> cls) {
            this.f73588c = cls;
            return this;
        }
    }

    public static b b() {
        return new b();
    }

    public static c c() {
        if (f73584b == null) {
            synchronized (c.class) {
                if (f73584b == null) {
                    f73584b = new c();
                }
            }
        }
        return f73584b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(@NonNull b bVar) {
        this.f73585a = bVar;
    }

    public com.kingja.loadsir.core.b d(@NonNull Object obj) {
        return f(obj, null, null);
    }

    public com.kingja.loadsir.core.b e(Object obj, Callback.OnReloadListener onReloadListener) {
        return f(obj, onReloadListener, null);
    }

    public <T> com.kingja.loadsir.core.b f(Object obj, Callback.OnReloadListener onReloadListener, com.kingja.loadsir.core.a<T> aVar) {
        return new com.kingja.loadsir.core.b(aVar, i7.b.a(obj, this.f73585a.g()).a(obj, onReloadListener), this.f73585a);
    }

    private c() {
        this.f73585a = new b();
    }

    private c(b bVar) {
        this.f73585a = bVar;
    }
}
