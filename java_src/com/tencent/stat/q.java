package com.tencent.stat;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f83960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f83961b;

    q(n nVar, List list) {
        this.f83961b = nVar;
        this.f83960a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f83961b.b((List<x>) this.f83960a);
    }
}
