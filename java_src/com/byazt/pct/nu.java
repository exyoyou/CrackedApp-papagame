package com.byazt.pct;

import com.bytedance.component.sdk.annotation.AnyThread;
import com.bytedance.component.sdk.annotation.UiThread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 137})
public class nu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static qy f18650c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f18651a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<yp> f18652n;
    public final c tt;
    public final da uj;
    public final com.byazt.nl.uj ve;

    public nu(da daVar) {
        qy qyVar;
        ArrayList arrayList = new ArrayList();
        this.f18652n = arrayList;
        this.f18651a = false;
        this.uj = daVar;
        rl rlVarC = (!daVar.f18635x || (qyVar = f18650c) == null) ? null : qyVar.c(daVar.sl);
        if (daVar.f18628c != null) {
            c cVar = daVar.tt;
            if (cVar == null) {
                this.tt = new zm();
            } else {
                this.tt = cVar;
            }
        } else {
            this.tt = daVar.tt;
        }
        this.tt.c(daVar.ve());
        this.tt.c(daVar, rlVarC);
        this.ve = daVar.f18628c;
        arrayList.add(daVar.f18629da);
        i.c(daVar.f18627a);
        gr.c(daVar.sp);
    }

    public static da c(com.byazt.nl.uj ujVar) {
        return new da(ujVar);
    }

    private void tt() {
        if (this.f18651a) {
            i.c(new IllegalStateException("JsBridge2 is already released!!!"));
        }
    }

    @AnyThread
    public <T> void c(String str, T t10) {
        tt();
        this.tt.c(str, t10);
    }

    public nu c(String str, n<?, ?> nVar) {
        return c(str, (String) null, nVar);
    }

    @UiThread
    public nu c(String str, String str2, n<?, ?> nVar) {
        tt();
        this.tt.f18622a.c(str, nVar);
        return this;
    }

    public nu c(String str, uj.tt ttVar) {
        return c(str, (String) null, ttVar);
    }

    @UiThread
    public nu c(String str, String str2, uj.tt ttVar) {
        tt();
        this.tt.f18622a.c(str, ttVar);
        return this;
    }

    public boolean c(String str) {
        sp spVar;
        c cVar = this.tt;
        if (cVar == null || (spVar = cVar.f18622a) == null) {
            return false;
        }
        return spVar.c(str);
    }

    public void c() {
        if (this.f18651a) {
            return;
        }
        this.tt.ve();
        this.f18651a = true;
        Iterator<yp> it2 = this.f18652n.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }
}
