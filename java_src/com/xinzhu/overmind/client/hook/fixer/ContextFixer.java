package com.xinzhu.overmind.client.hook.fixer;

import android.content.Context;
import android.content.ContextWrapper;
import com.xinzhu.haunted.android.app.l;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.e;
import t8.a;
import t8.b;
import t8.h;

/* JADX INFO: loaded from: classes8.dex */
public class ContextFixer {
    public static final String TAG = "ContextFixer";

    public static void fix(Context context) {
        int i10 = 0;
        while (context instanceof ContextWrapper) {
            try {
                context = ((ContextWrapper) context).getBaseContext();
                i10++;
                if (i10 >= 10) {
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        l lVar = new l(context);
        lVar.t(null);
        try {
            context.getPackageManager();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        lVar.q(Overmind.getHostPkg());
        lVar.r(Overmind.getHostPkg());
        new h(context.getContentResolver()).l0(Overmind.getHostPkg());
        if (e.h()) {
            try {
                if (lVar.e()) {
                    fixAttributionSource(lVar.i());
                    return;
                }
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                return;
            }
            e10.printStackTrace();
        }
    }

    public static void fixAttributionSource(Object obj) {
        while (obj != null) {
            try {
                a aVar = new a(obj);
                Object objD = aVar.d();
                if (objD != null) {
                    b bVar = new b(objD);
                    bVar.e(Overmind.getHostPkg());
                    if (Overmind.getHostUid() > 0) {
                        bVar.f(Integer.valueOf(Overmind.getHostUid()));
                    }
                }
                obj = aVar.c();
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
    }
}
