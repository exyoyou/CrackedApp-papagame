package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public final class bp extends m implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static ArrayList<bo> f83506b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<bo> f83507a = null;

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb2, int i10) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a((Collection) this.f83507a, 0);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        if (f83506b == null) {
            f83506b = new ArrayList<>();
            f83506b.add(new bo());
        }
        this.f83507a = (ArrayList) kVar.a(f83506b, 0, true);
    }
}
