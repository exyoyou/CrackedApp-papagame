package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes7.dex */
final class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    d f6379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6382d;

    d(b bVar, int i10, String str, String str2) {
        if (bVar.f6375p == null) {
            bVar.f6375p = this;
        } else {
            bVar.f6376q.f6379a = this;
        }
        bVar.f6376q = this;
        this.f6380b = i10;
        this.f6381c = bVar.k(str);
        this.f6382d = bVar.k(str2);
    }

    @Override // com.alibaba.fastjson.asm.c
    public void a() {
    }

    int b() {
        return 8;
    }

    void c(a aVar) {
        int i10 = this.f6380b;
        aVar.g(i10 & (~(((262144 & i10) / 64) | 393216))).g(this.f6381c).g(this.f6382d);
        aVar.g(0);
    }
}
