package com.byazt.yr;

import com.byazt.gqp.t;
import com.byazt.gu.a;
import com.byazt.nr.m;
import com.byazt.xn.ve;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2416, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f22404c;
    public static AtomicBoolean tt = new AtomicBoolean(true);

    private c() {
    }

    public static c c() {
        if (f22404c == null) {
            synchronized (c.class) {
                if (f22404c == null) {
                    f22404c = new c();
                }
            }
        }
        return f22404c;
    }

    public boolean tt() {
        AtomicBoolean atomicBoolean = tt;
        if (atomicBoolean == null) {
            return true;
        }
        return atomicBoolean.get();
    }

    public static t tt(t.c cVar) {
        return new a(cVar);
    }

    public void c(boolean z10) {
        m.c("NetClientAdapter", "set useOkHttp:".concat(String.valueOf(z10)));
        tt.set(z10);
    }

    public static t c(t.c cVar) {
        return new ve(cVar);
    }
}
