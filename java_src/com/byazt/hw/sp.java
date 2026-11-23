package com.byazt.hw;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 77, 91})
public final class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile sp f15150c;
    public static HashMap<Integer, n> tt;
    public static HashMap<Integer, c> ve;

    private sp() {
        tt = new HashMap<>();
        ve = new HashMap<>();
    }

    public static synchronized sp c() {
        if (f15150c == null) {
            synchronized (sp.class) {
                if (f15150c == null) {
                    f15150c = new sp();
                }
            }
        }
        return f15150c;
    }

    public n c(int i10) {
        n nVar = tt.get(Integer.valueOf(i10));
        if (nVar != null) {
            return nVar;
        }
        n nVar2 = new n(i10);
        tt.put(Integer.valueOf(i10), nVar2);
        return nVar2;
    }

    public c c(int i10, Context context) {
        c cVar = ve.get(Integer.valueOf(i10));
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c(context, i10);
        ve.put(Integer.valueOf(i10), cVar2);
        return cVar2;
    }
}
