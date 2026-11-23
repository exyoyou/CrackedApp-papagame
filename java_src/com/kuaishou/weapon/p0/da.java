package com.kuaishou.weapon.p0;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class da {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile da f74704b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f74705a;

    private da(Context context) {
        this.f74705a = context;
    }

    public static da a(Context context) {
        if (f74704b == null) {
            synchronized (da.class) {
                if (f74704b == null) {
                    f74704b = new da(context);
                }
            }
        }
        return f74704b;
    }

    public void a(final int i10) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.da.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    h hVarA = h.a(da.this.f74705a, "re_po_rt");
                    if (hVarA.b(dd.ap, 1) == 1) {
                        long jA = dd.a(da.this.f74705a).a(dd.bl);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        int iB = hVarA.b(dd.as, 0);
                        long j10 = jCurrentTimeMillis - jA;
                        if (j10 >= ((long) hVarA.b(dd.ar, 6)) * bg.f74510s || (i10 == 100 && iB == 1 && j10 >= 14400000)) {
                            ce.a(da.this.f74705a, new bu(da.this.f74705a, i10, false).a(ci.f74598f), ci.f74598f, true);
                            dd.a(da.this.f74705a).a(dd.bl, jCurrentTimeMillis);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
