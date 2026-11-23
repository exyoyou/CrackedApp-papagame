package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes10.dex */
public class d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final ExecutorService f95274n = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f95279e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f95281g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f95282h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    List<Class<?>> f95284j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    List<org.greenrobot.eventbus.meta.d> f95285k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    f f95286l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    g f95287m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f95275a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f95276b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f95277c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f95278d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f95280f = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ExecutorService f95283i = f95274n;

    d() {
    }

    public d a(org.greenrobot.eventbus.meta.d dVar) {
        if (this.f95285k == null) {
            this.f95285k = new ArrayList();
        }
        this.f95285k.add(dVar);
        return this;
    }

    public c b() {
        return new c(this);
    }

    public d c(boolean z10) {
        this.f95280f = z10;
        return this;
    }

    public d d(ExecutorService executorService) {
        this.f95283i = executorService;
        return this;
    }

    f e() {
        f fVar = this.f95286l;
        return fVar != null ? fVar : f.a.a();
    }

    g f() {
        g gVar = this.f95287m;
        if (gVar != null) {
            return gVar;
        }
        if (cd.a.a()) {
            return cd.a.b().f551b;
        }
        return null;
    }

    public d g(boolean z10) {
        this.f95281g = z10;
        return this;
    }

    public c h() {
        c cVar;
        synchronized (c.class) {
            if (c.f95245t != null) {
                throw new EventBusException("Default instance already exists. It may be only set once before it's used the first time to ensure consistent behavior.");
            }
            c.f95245t = b();
            cVar = c.f95245t;
        }
        return cVar;
    }

    public d i(boolean z10) {
        this.f95276b = z10;
        return this;
    }

    public d j(boolean z10) {
        this.f95275a = z10;
        return this;
    }

    public d k(f fVar) {
        this.f95286l = fVar;
        return this;
    }

    public d l(boolean z10) {
        this.f95278d = z10;
        return this;
    }

    public d m(boolean z10) {
        this.f95277c = z10;
        return this;
    }

    public d n(Class<?> cls) {
        if (this.f95284j == null) {
            this.f95284j = new ArrayList();
        }
        this.f95284j.add(cls);
        return this;
    }

    public d o(boolean z10) {
        this.f95282h = z10;
        return this;
    }

    public d p(boolean z10) {
        this.f95279e = z10;
        return this;
    }
}
