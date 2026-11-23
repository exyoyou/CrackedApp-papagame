package com.aggmoread.sdk.z.c.a.a.d.a.d.q;

import com.aggmoread.sdk.z.c.a.a.d.a.d.m;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.p;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class b extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f4548a;

    private b() {
    }

    public static synchronized b a() {
        if (f4548a == null) {
            synchronized (b.class) {
                if (f4548a == null) {
                    f4548a = new b();
                }
            }
        }
        return f4548a;
    }

    public static void b(Map<String, Object> map, int i10, f fVar) {
        a().a(map, i10, fVar);
    }

    public static boolean a(f fVar) {
        try {
            int iB = fVar.f5004d.b(f.c.f5055z);
            if (!k.f5148r.booleanValue()) {
                e.b("deg ");
                return false;
            }
            if (iB == 1) {
                return true;
            }
        } catch (Exception e10) {
            e.a("test err " + e10);
        }
        return false;
    }

    public static boolean a(f fVar, int i10) {
        return p.a(fVar, i10);
    }
}
