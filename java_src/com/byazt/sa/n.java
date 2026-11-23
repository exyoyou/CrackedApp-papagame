package com.byazt.sa;

import android.content.Context;
import com.byazt.pm.da;
import com.byazt.pm.x;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 795, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile n f19559c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.dq.uj f19560a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.wj.c f19561n;
    public com.byazt.lv.c sp;
    public List<com.byazt.sz.tt> tt;
    public c uj;
    public com.byazt.sz.ve ve;

    private n() {
    }

    private void a() {
        ArrayList arrayList = new ArrayList();
        this.tt = arrayList;
        com.byazt.sz.ve veVar = this.ve;
        if (veVar != null) {
            arrayList.addAll(veVar.c());
        }
        com.byazt.sz.uj.c(this.tt);
    }

    public static n c() {
        if (f19559c == null) {
            synchronized (n.class) {
                if (f19559c == null) {
                    f19559c = new n();
                }
            }
        }
        return f19559c;
    }

    public com.byazt.lv.c n() {
        return this.sp;
    }

    public c tt() {
        return this.uj;
    }

    public com.byazt.dq.uj uj() {
        return this.f19560a;
    }

    public com.byazt.wj.c ve() {
        return this.f19561n;
    }

    public void c(Context context, com.byazt.sz.ve veVar, c cVar) {
        this.ve = veVar;
        this.uj = cVar;
        a();
    }

    public void c(com.byazt.wj.c cVar) {
        this.f19561n = cVar;
    }

    public void c(x xVar) {
        ArrayList arrayList = new ArrayList(new com.byazt.pm.c().c());
        if (xVar != null) {
            arrayList.addAll(xVar.c());
        }
        da.c(arrayList);
    }

    public void c(com.byazt.pm.ve veVar) {
        ArrayList arrayList = new ArrayList(new com.byazt.pm.n().c());
        if (veVar != null) {
            arrayList.addAll(veVar.c());
        }
        com.byazt.pm.uj.c(arrayList);
    }

    public void c(com.byazt.dq.uj ujVar) {
        this.f19560a = ujVar;
    }

    public void c(com.byazt.lv.c cVar) {
        this.sp = cVar;
    }
}
