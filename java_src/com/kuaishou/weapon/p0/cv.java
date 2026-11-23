package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class cv {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile cv f74674b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f74675a;

    private cv(Context context) {
        this.f74675a = context;
    }

    public static cv a(Context context) {
        if (f74674b == null) {
            synchronized (cv.class) {
                if (f74674b == null) {
                    f74674b = new cv(context);
                }
            }
        }
        return f74674b;
    }

    public void a(final int i10) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cv.1
            @Override // java.lang.Runnable
            public void run() {
                int i11;
                try {
                    h hVarA = h.a(cv.this.f74675a, "re_po_rt");
                    if (hVarA.b(dd.f74748y, 0) == 1) {
                        long jA = dd.a(cv.this.f74675a).a(dd.bh);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jB = ((long) hVarA.b(dd.f74749z, 8)) * bg.f74510s;
                        int iB = hVarA.b(dd.f74740q, 0);
                        if (jA > 0 && jCurrentTimeMillis - jA < ((long) WeaponHI.ii) * bg.f74510s && WeaponHI.isList != null) {
                            int hours = new Date(jCurrentTimeMillis).getHours();
                            List<Integer> list = WeaponHI.isList;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(hours);
                            if (list.contains(sb2.toString())) {
                                return;
                            }
                        }
                        if (jCurrentTimeMillis - jA >= jB || (i11 = i10) == 106 || (i11 == 100 && iB == 1)) {
                            cn.a(cv.this.f74675a, new cf(cv.this.f74675a, i10).a(ci.f74593a), ci.f74593a, false, true);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
