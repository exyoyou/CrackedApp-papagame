package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class cw {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile cw f74678b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f74679a;

    private cw(Context context) {
        this.f74679a = context;
    }

    public static cw a(Context context) {
        if (f74678b == null) {
            synchronized (cw.class) {
                if (f74678b == null) {
                    f74678b = new cw(context);
                }
            }
        }
        return f74678b;
    }

    public void a(final int i10) {
        try {
            h hVarA = h.a(this.f74679a, "re_po_rt");
            final boolean zE = hVarA.e("a1_p_s_p_s");
            final boolean zE2 = hVarA.e("a1_p_s_p_s_c_b");
            if ((zE || zE2) && WeaponHI.as) {
                n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cw.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int i11;
                        try {
                            h hVarA2 = h.a(cw.this.f74679a, "re_po_rt");
                            if (hVarA2.b(dd.f74738o, 0) == 1) {
                                if (zE || zE2) {
                                    long jA = dd.a(cw.this.f74679a).a(dd.bi);
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    long jB = ((long) hVarA2.b(dd.f74739p, 8)) * bg.f74510s;
                                    int iB = hVarA2.b(dd.f74740q, 0);
                                    if (jA > 0 && jCurrentTimeMillis - jA < ((long) WeaponHI.ii) * bg.f74510s && WeaponHI.isList != null) {
                                        int hours = new Date(jCurrentTimeMillis).getHours();
                                        List<Integer> list = WeaponHI.isList;
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append(hours);
                                        if (list.contains(sb2.toString())) {
                                            return;
                                        }
                                    }
                                    if (jCurrentTimeMillis - jA >= jB || (((i11 = i10) == 100 && iB == 1) || i11 == 106)) {
                                        cn.a(cw.this.f74679a, new cg(cw.this.f74679a, i10).a(ci.f74597e), ci.f74597e, true, true);
                                    }
                                }
                            }
                        } catch (Throwable unused) {
                        }
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }
}
