package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class cz {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile cz f74697b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f74698a;

    private cz(Context context) {
        this.f74698a = context;
    }

    public static cz a(Context context) {
        if (f74697b == null) {
            synchronized (cz.class) {
                if (f74697b == null) {
                    f74697b = new cz(context);
                }
            }
        }
        return f74697b;
    }

    public void a(final int i10, final int i11) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cz.1
            @Override // java.lang.Runnable
            public void run() {
                long j10;
                int i12;
                try {
                    h hVarA = h.a(cz.this.f74698a, "re_po_rt");
                    if (hVarA.b(dd.P, 1) == 1) {
                        long jA = dd.a(cz.this.f74698a).a(dd.bj);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jB = ((long) hVarA.b(dd.R, 1)) * bg.f74510s;
                        long jB2 = ((long) hVarA.b(dd.S, 5)) * 60000;
                        int iB = hVarA.b(dd.T, 0);
                        if (jA > 0) {
                            j10 = jA;
                            if (jCurrentTimeMillis - jA < ((long) WeaponHI.ii) * bg.f74510s && WeaponHI.isList != null) {
                                int hours = new Date(jCurrentTimeMillis).getHours();
                                List<Integer> list = WeaponHI.isList;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(hours);
                                if (list.contains(sb2.toString())) {
                                    return;
                                }
                            }
                        } else {
                            j10 = jA;
                        }
                        long j11 = jCurrentTimeMillis - j10;
                        if (j11 >= jB || (((i12 = i10) == 100 && iB == 1) || i12 == 106 || (i12 != 100 && i12 > 0 && j11 >= jB2))) {
                            cn.a(cz.this.f74698a, new cj(cz.this.f74698a, i10, i11).a(ci.f74596d), ci.f74596d, true, true);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
