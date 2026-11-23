package com.byazt.jx;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 130})
public class m implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15967c;
    public final List<ve> tt;
    public final boolean ve;

    public m(String str, List<ve> list, boolean z10) {
        this.f15967c = str;
        this.tt = list;
        this.ve = z10;
    }

    public String c() {
        return this.f15967c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f15967c + "' Shapes: " + Arrays.toString(this.tt.toArray()) + '}';
    }

    public List<ve> tt() {
        return this.tt;
    }

    public boolean ve() {
        return this.ve;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.uj(xVar, veVar, this, aVar);
    }
}
