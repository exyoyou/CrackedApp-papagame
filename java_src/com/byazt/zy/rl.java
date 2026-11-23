package com.byazt.zy;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 117})
public class rl implements ve, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.dg.c<?, Float> f23028a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f23029c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.dg.c<?, Float> f23030n;
    public final com.byazt.dg.c<?, Float> sp;
    public final boolean tt;
    public final com.byazt.jx.my.c uj;
    public final List<com.byazt.dg.c.InterfaceC0291c> ve = new ArrayList();

    public rl(com.byazt.zk.ve veVar, com.byazt.jx.my myVar) {
        this.f23029c = myVar.c();
        this.tt = myVar.n();
        this.uj = myVar.getType();
        com.byazt.dg.c<Float, Float> cVarC = myVar.ve().c();
        this.f23030n = cVarC;
        com.byazt.dg.c<Float, Float> cVarC2 = myVar.tt().c();
        this.f23028a = cVarC2;
        com.byazt.dg.c<Float, Float> cVarC3 = myVar.uj().c();
        this.sp = cVarC3;
        veVar.c(cVarC);
        veVar.c(cVarC2);
        veVar.c(cVarC3);
        cVarC.c(this);
        cVarC2.c(this);
        cVarC3.c(this);
    }

    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
    }

    public com.byazt.jx.my.c getType() {
        return this.uj;
    }

    public boolean n() {
        return this.tt;
    }

    public com.byazt.dg.c<?, Float> tt() {
        return this.f23030n;
    }

    public com.byazt.dg.c<?, Float> uj() {
        return this.sp;
    }

    public com.byazt.dg.c<?, Float> ve() {
        return this.f23028a;
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        for (int i10 = 0; i10 < this.ve.size(); i10++) {
            this.ve.get(i10).c();
        }
    }

    public void c(com.byazt.dg.c.InterfaceC0291c interfaceC0291c) {
        this.ve.add(interfaceC0291c);
    }
}
