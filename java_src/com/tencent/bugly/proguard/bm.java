package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public final class bm extends m implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static ArrayList<String> f83473c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f83474a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList<String> f83475b = null;

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb2, int i10) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83474a, 0);
        ArrayList<String> arrayList = this.f83475b;
        if (arrayList != null) {
            lVar.a((Collection) arrayList, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83474a = kVar.b(0, true);
        if (f83473c == null) {
            ArrayList<String> arrayList = new ArrayList<>();
            f83473c = arrayList;
            arrayList.add("");
        }
        this.f83475b = (ArrayList) kVar.a(f83473c, 1, false);
    }
}
