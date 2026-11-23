package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class db {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile db f74708b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f74709a;

    private db(Context context) {
        this.f74709a = context;
    }

    public static db a(Context context) {
        if (f74708b == null) {
            synchronized (db.class) {
                if (f74708b == null) {
                    f74708b = new db(context);
                }
            }
        }
        return f74708b;
    }

    public void a(final int i10) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.db.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    h hVarA = h.a(db.this.f74709a, "re_po_rt");
                    if (hVarA.b(dd.aC, 1) == 1) {
                        long jA = dd.a(db.this.f74709a).a();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jB = ((long) hVarA.b(dd.aE, 8)) * bg.f74510s;
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
                            cn.a(db.this.f74709a, new cl(db.this.f74709a, i10).a(ci.f74595c), ci.f74595c, true, true);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
