package com.byazt.zy;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 115})
public class rh implements u, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f23025a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.dg.u f23027n;
    public final String tt;
    public final com.byazt.ga.x uj;
    public final boolean ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f23026c = new Path();
    public final tt sp = new tt();

    public rh(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.nu nuVar) {
        this.tt = nuVar.c();
        this.ve = nuVar.ve();
        this.uj = xVar;
        com.byazt.dg.u uVarC = nuVar.tt().c();
        this.f23027n = uVarC;
        veVar.c(uVarC);
        uVarC.c(this);
    }

    private void tt() {
        this.f23025a = false;
        this.uj.invalidateSelf();
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        tt();
    }

    @Override // com.byazt.zy.u
    public Path uj() {
        if (this.f23025a) {
            return this.f23026c;
        }
        this.f23026c.reset();
        if (this.ve) {
            this.f23025a = true;
            return this.f23026c;
        }
        Path pathSp = this.f23027n.sp();
        if (pathSp == null) {
            return this.f23026c;
        }
        this.f23026c.set(pathSp);
        this.f23026c.setFillType(Path.FillType.EVEN_ODD);
        this.sp.c(this.f23026c);
        this.f23025a = true;
        return this.f23026c;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Code duplicated, block: B:12:0x002a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036 A[SYNTHETIC] */
    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            ve veVar = list.get(i10);
            if (veVar instanceof rl) {
                rl rlVar = (rl) veVar;
                if (rlVar.getType() == com.byazt.jx.my.c.SIMULTANEOUSLY) {
                    this.sp.c(rlVar);
                    rlVar.c(this);
                } else if (!(veVar instanceof my)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((my) veVar);
                }
            } else if (!(veVar instanceof my)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((my) veVar);
            }
        }
        this.f23027n.c((List<my>) arrayList);
    }
}
