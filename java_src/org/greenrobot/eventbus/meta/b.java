package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.m;

/* JADX INFO: loaded from: classes10.dex */
public class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e[] f95314d;

    public b(Class cls, boolean z10, e[] eVarArr) {
        super(cls, null, z10);
        this.f95314d = eVarArr;
    }

    @Override // org.greenrobot.eventbus.meta.c
    public synchronized m[] a() {
        m[] mVarArr;
        int length = this.f95314d.length;
        mVarArr = new m[length];
        for (int i10 = 0; i10 < length; i10++) {
            e eVar = this.f95314d[i10];
            mVarArr[i10] = g(eVar.f95315a, eVar.f95317c, eVar.f95316b, eVar.f95318d, eVar.f95319e);
        }
        return mVarArr;
    }
}
