package com.byazt.hy;

import android.annotation.SuppressLint;
import android.content.Context;
import com.byazt.ete.cu;
import com.byazt.omf.gt;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 604, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile n f15176c;
    public Context tt;
    public final com.byazt.hm.c uj;
    public com.byazt.re.c ve;

    private n(Context context) {
        this.tt = context == null ? gt.getContext() : context.getApplicationContext();
        com.byazt.hm.c.C0328c c0328c = new com.byazt.hm.c.C0328c();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        com.byazt.hm.c cVarC = c0328c.c(10000L, timeUnit).tt(10000L, timeUnit).ve(10000L, timeUnit).c(new c.C0337c()).c(cu.c()).c(cu.tt()).c(true).c();
        this.uj = cVarC;
        com.byazt.gqp.uj ujVarC = cVarC.a().c();
        if (ujVarC != null) {
            ujVarC.c(32);
            ujVarC.tt(com.byazt.by.ve.c().n());
        }
    }

    public static n c() {
        if (f15176c == null) {
            synchronized (n.class) {
                if (f15176c == null) {
                    com.byazt.yr.c.c().c(com.byazt.by.ve.c().a() != 2);
                    f15176c = new n(gt.getContext());
                }
            }
        }
        return f15176c;
    }

    private void uj() {
        if (this.ve == null) {
            this.ve = new com.byazt.re.c();
        }
    }

    public com.byazt.hm.c tt() {
        return this.uj;
    }

    public com.byazt.re.c ve() {
        uj();
        return this.ve;
    }
}
