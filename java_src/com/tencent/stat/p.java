package com.tencent.stat;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f83957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f83958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ n f83959c;

    p(n nVar, List list, int i10) {
        this.f83959c = nVar;
        this.f83957a = list;
        this.f83958b = i10;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f83959c.b((List<x>) this.f83957a, this.f83958b);
    }
}
