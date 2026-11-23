package com.byazt.hm;

import android.content.Context;
import android.os.Bundle;
import com.byazt.gqp.i;
import com.byazt.gqp.t;
import com.byazt.hw.a;
import com.byazt.hw.sp;
import com.byazt.nr.gt;
import com.byazt.va.n;
import com.byazt.va.ve;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 679, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public t f14958c;
    public a tt;
    public int ve;

    /* JADX INFO: renamed from: com.byazt.hm.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 679, 44})
    public static final class C0328c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Set<String> f14959a;
        public Bundle sp;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public com.byazt.gu.c f14962x;
        public boolean uj = true;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final List<i> f14961n = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14960c = 10000;
        public int tt = 10000;
        public int ve = 10000;

        public C0328c c(long j10, TimeUnit timeUnit) {
            this.f14960c = c("timeout", j10, timeUnit);
            return this;
        }

        public C0328c tt(long j10, TimeUnit timeUnit) {
            this.tt = c("timeout", j10, timeUnit);
            return this;
        }

        public C0328c ve(long j10, TimeUnit timeUnit) {
            this.ve = c("timeout", j10, timeUnit);
            return this;
        }

        public C0328c c(boolean z10) {
            this.uj = z10;
            return this;
        }

        public C0328c c(i iVar) {
            this.f14961n.add(iVar);
            return this;
        }

        public C0328c c(Set<String> set) {
            this.f14959a = set;
            return this;
        }

        private static int c(String str, long j10, TimeUnit timeUnit) {
            if (j10 < 0) {
                throw new IllegalArgumentException(str + " < 0");
            }
            if (timeUnit != null) {
                long millis = timeUnit.toMillis(j10);
                if (millis > 2147483647L) {
                    throw new IllegalArgumentException(str + " too large.");
                }
                if (millis != 0 || j10 <= 0) {
                    return (int) millis;
                }
                throw new IllegalArgumentException(str + " too small.");
            }
            throw new NullPointerException("unit == null");
        }

        public c c() {
            return new c(this);
        }
    }

    public t a() {
        return this.f14958c;
    }

    public void c(Context context, boolean z10, com.byazt.hw.tt ttVar) {
        if (context == null) {
            throw new IllegalArgumentException("tryInitAdTTNet context is null");
        }
        if (ttVar == null) {
            throw new IllegalArgumentException("tryInitAdTTNet ITTAdNetDepend is null");
        }
        int iC = ttVar.c();
        this.ve = iC;
        a aVar = this.tt;
        if (aVar != null) {
            aVar.c(iC);
        }
        sp.c().c(this.ve).c(z10);
        sp.c().c(this.ve).c(ttVar);
        sp.c().c(this.ve).c(context, gt.c(context));
    }

    public com.byazt.va.c n() {
        return new com.byazt.va.c(this.f14958c);
    }

    public n tt() {
        return new n(this.f14958c);
    }

    public com.byazt.va.tt uj() {
        return new com.byazt.va.tt(this.f14958c);
    }

    public ve ve() {
        return new ve(this.f14958c);
    }

    private c(C0328c c0328c) {
        t.c cVar = new t.c();
        long j10 = c0328c.f14960c;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        t.c cVarTt = cVar.c(j10, timeUnit).ve(c0328c.ve, timeUnit).tt(c0328c.tt, timeUnit);
        if (c0328c.uj) {
            a aVar = new a();
            this.tt = aVar;
            cVarTt.c(aVar);
        }
        List<i> list = c0328c.f14961n;
        if (list != null && list.size() > 0) {
            Iterator<i> it2 = c0328c.f14961n.iterator();
            while (it2.hasNext()) {
                cVarTt.c(it2.next());
            }
        }
        if (c0328c.sp != null) {
            cVarTt.c(c0328c.sp);
        }
        cVarTt.c(c0328c.f14959a);
        if (c0328c.f14962x == null) {
            cVarTt.c(new com.byazt.gu.tt());
        } else {
            cVarTt.c(c0328c.f14962x);
        }
        this.f14958c = cVarTt.c();
    }

    public void c(Context context, boolean z10) {
        com.byazt.hw.c.tt(true);
        if (c(context) || (!gt.c(context) && z10)) {
            sp.c().c(this.ve, context).uj();
            sp.c().c(this.ve, context).c();
        }
        if (gt.c(context)) {
            sp.c().c(this.ve, context).uj();
            sp.c().c(this.ve, context).c();
        }
    }

    public static void c() {
        com.byazt.lf.ve.c(com.byazt.lf.ve.c.DEBUG);
    }

    public com.byazt.va.tt c(String str, String str2, String str3) {
        return new com.byazt.va.tt(this.f14958c, str, str2, str3);
    }

    private static boolean c(Context context) {
        String strTt = gt.tt(context);
        if (strTt != null) {
            return strTt.endsWith(":push") || strTt.endsWith(":pushservice");
        }
        return false;
    }
}
