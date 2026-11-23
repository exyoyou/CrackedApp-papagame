package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class cx {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile cx f74684b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f74685a;

    private cx(Context context) {
        this.f74685a = context;
    }

    public static cx a(Context context) {
        if (f74684b == null) {
            synchronized (cx.class) {
                if (f74684b == null) {
                    f74684b = new cx(context);
                }
            }
        }
        return f74684b;
    }

    public void a(final int i10) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cx.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    h hVarA = h.a(cx.this.f74685a, "re_po_rt");
                    if (hVarA.b(dd.G, 1) == 1) {
                        long jA = dd.a(cx.this.f74685a).a(dd.bm);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jB = ((long) hVarA.b(dd.I, 12)) * bg.f74510s;
                        if (jA > 0 && jCurrentTimeMillis - jA < ((long) WeaponHI.ii) * bg.f74510s && WeaponHI.isList != null) {
                            int hours = new Date(jCurrentTimeMillis).getHours();
                            List<Integer> list = WeaponHI.isList;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(hours);
                            if (list.contains(sb2.toString())) {
                                return;
                            }
                        }
                        if (jCurrentTimeMillis - jA >= jB || i10 == 106) {
                            cn.a(cx.this.f74685a, new ch(cx.this.f74685a).a(ci.f74600h), ci.f74600h, true, true);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
