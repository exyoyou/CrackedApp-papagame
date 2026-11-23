package com.tencent.bugly.proguard;

/* JADX INFO: loaded from: classes2.dex */
public final class bs extends m implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f83544a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f83545b = "";

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb2, int i10) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83544a, 0);
        lVar.a(this.f83545b, 1);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83544a = kVar.b(0, true);
        this.f83545b = kVar.b(1, true);
    }
}
