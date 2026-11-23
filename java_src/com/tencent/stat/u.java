package com.tencent.stat;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class u implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f83968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f83969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ n f83970c;

    u(n nVar, List list, int i10) {
        this.f83970c = nVar;
        this.f83968a = list;
        this.f83969b = i10;
    }

    @Override // com.tencent.stat.c
    public void a() {
        this.f83970c.a(this.f83968a);
    }

    @Override // com.tencent.stat.c
    public void b() {
        this.f83970c.a(this.f83968a, 1);
        this.f83970c.f83952b += this.f83969b;
    }
}
