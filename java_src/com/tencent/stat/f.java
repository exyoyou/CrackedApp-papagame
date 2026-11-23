package com.tencent.stat;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f83936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f83937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ d f83938c;

    f(d dVar, List list, c cVar) {
        this.f83938c = dVar;
        this.f83936a = list;
        this.f83937b = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f83938c.a(this.f83936a, this.f83937b);
        } catch (Throwable th) {
            d.f83929c.e(th);
        }
    }
}
