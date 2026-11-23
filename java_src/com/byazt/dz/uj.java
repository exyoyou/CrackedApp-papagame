package com.byazt.dz;

import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 106, 15})
public class uj {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static uj f13240n = new uj();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ic f13241c;
    public int tt;
    public volatile com.byazt.ak.c uj;
    public int ve;

    public static uj c() {
        return f13240n;
    }

    private boolean tt() {
        this.uj = com.byazt.zlb.tt.f22918c;
        return this.uj != null;
    }

    private String ve() {
        ic icVar = this.f13241c;
        return icVar != null ? com.byazt.nr.c.c(icVar.yg()).toString() : "";
    }

    public uj c(ic icVar) {
        if (tt()) {
            this.f13241c = icVar;
        }
        return this;
    }

    public uj tt(int i10) {
        if (tt()) {
            this.ve = i10;
        }
        return this;
    }

    public uj c(int i10) {
        if (tt()) {
            this.tt = i10;
        }
        return this;
    }

    public void c(Thread thread, Throwable th) {
        String str;
        if (tt()) {
            if (thread != null) {
                str = thread.getName() + "-" + thread.getId();
            } else {
                str = "";
            }
            this.uj.c(str, "-------fatal----------");
            this.uj.c(str, "last show rit:" + this.ve);
            this.uj.c(str, "last show adtype:" + this.tt);
            this.uj.c(str, ve());
            this.uj.c(str, th);
            this.uj.c(str, "-------finish----------");
            com.byazt.zlb.tt.f22918c.c().c();
        }
    }
}
