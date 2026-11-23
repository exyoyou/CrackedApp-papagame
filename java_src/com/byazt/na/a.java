package com.byazt.na;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 662, 34})
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f17047a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f17048c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f17049n;
    public a sp;
    public int tt;
    public boolean uj;
    public int ve;

    public a() {
        this.f17048c = new byte[8192];
        this.f17049n = true;
        this.uj = false;
    }

    public final a c() {
        this.uj = true;
        return new a(this.f17048c, this.tt, this.ve, true, false);
    }

    public final a tt() {
        a aVar = this.f17047a;
        a aVar2 = aVar != this ? aVar : null;
        a aVar3 = this.sp;
        if (aVar3 != null) {
            aVar3.f17047a = aVar;
        }
        a aVar4 = this.f17047a;
        if (aVar4 != null) {
            aVar4.sp = aVar3;
        }
        this.f17047a = null;
        this.sp = null;
        return aVar2;
    }

    public final a c(a aVar) {
        aVar.sp = this;
        aVar.f17047a = this.f17047a;
        this.f17047a.sp = aVar;
        this.f17047a = aVar;
        return aVar;
    }

    public a(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        this.f17048c = bArr;
        this.tt = i10;
        this.ve = i11;
        this.uj = z10;
        this.f17049n = z11;
    }
}
