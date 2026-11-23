package com.kuaishou.weapon.p0;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class dc {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile dc f74712b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f74713a;

    private dc(Context context) {
        this.f74713a = context;
    }

    public static dc a(Context context) {
        if (f74712b == null) {
            synchronized (dc.class) {
                if (f74712b == null) {
                    f74712b = new dc(context);
                }
            }
        }
        return f74712b;
    }

    public void a(final int i10) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.dc.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    h hVarA = h.a(dc.this.f74713a, "re_po_rt");
                    if (hVarA.b(dd.B, 0) == 1) {
                        long jA = dd.a(dc.this.f74713a).a(dd.bn);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (jCurrentTimeMillis - jA >= ((long) hVarA.b(dd.E, 2)) * bg.f74510s || i10 == 106) {
                            try {
                                String strA = new cm(dc.this.f74713a).a(ci.f74601i);
                                int iIntValue = Integer.valueOf(ci.f74601i).intValue();
                                if (strA != null && strA.length() > 10) {
                                    new ba(dc.this.f74713a, strA, iIntValue).a(com.sigmob.sdk.base.n.f79582i);
                                }
                            } catch (Throwable unused) {
                            }
                            dd.a(dc.this.f74713a).a(dd.bn, jCurrentTimeMillis);
                        }
                    }
                } catch (Throwable unused2) {
                }
            }
        });
    }
}
