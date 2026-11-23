package com.byazt.ut;

import com.byazt.nr.m;
import com.byazt.omf.p;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 834, 15})
public final class uj implements Function<Object, Object> {
    public static final String TAG = "AutoService";
    public static uj tt;
    public int ve = p.tt;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f20991c = new c();

    private uj() {
    }

    public static com.byazt.dna.c getAppContext(String str) {
        return getInstance().f20991c.c(str);
    }

    public static uj getInstance() {
        uj ujVar = tt;
        if (ujVar != null) {
            return ujVar;
        }
        synchronized (uj.class) {
            if (tt == null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                tt = new uj();
                m.c(TAG, "getInstance cost: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            }
        }
        return tt;
    }

    public static <T> T getService(Class<T> cls) {
        throw new RuntimeException("not support");
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        String str;
        try {
            if (obj == null) {
                return Collections.unmodifiableMap(this.f20991c.c());
            }
            if (b.a(obj)) {
                this.f20991c.c(this, n0.c.a(obj));
            } else {
                if (obj instanceof String) {
                    return this.f20991c.c(String.valueOf(obj), null, false);
                }
                if (obj instanceof Integer) {
                    return Integer.valueOf(this.ve);
                }
            }
            return this.f20991c.c(obj);
        } catch (Exception e10) {
            m.tt(TAG, "AutoService apply error", e10);
            i iVarA = this.f20991c.a();
            if (iVarA != null) {
                if (obj == null) {
                    str = "";
                } else {
                    str = obj.getClass().getName() + " " + obj;
                }
                iVarA.c(0, str, e10);
            }
            return null;
        }
    }

    public int getVersion() {
        return this.ve;
    }

    @Deprecated
    public void setForbiddenReuseList(List<String> list) {
        this.f20991c.c(list);
    }

    public void setListener(i iVar) {
        this.f20991c.c(iVar);
    }

    public static <T> T getService(Class<T> cls, com.byazt.dna.c cVar) {
        throw new RuntimeException("not support");
    }

    public static <T> T getService(String str) {
        return (T) getService(str, (com.byazt.dna.c) null);
    }

    public static <T> T getService(String str, com.byazt.dna.c cVar) {
        c cVar2 = getInstance().f20991c;
        T t10 = (T) cVar2.c(str, cVar, true);
        return t10 == null ? (T) cVar2.c(str, cVar) : t10;
    }
}
