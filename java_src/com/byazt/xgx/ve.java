package com.byazt.xgx;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import com.byazt.nr.m;
import com.kuaishou.weapon.p0.g;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1109, 54})
public final class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f21844c = "ve";

    private ve() {
    }

    public static boolean c(Context context, String str) {
        return tt(context, str);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0044  */
    private static boolean tt(Context context, String str) {
        byte b10;
        String lowerCase;
        String str2 = f21844c;
        m.uj(str2, "checkPermissinKITKATNew，permission：".concat(String.valueOf(str)));
        boolean z10 = true;
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -1888586689) {
                if (iHashCode != -63024214) {
                    if (iHashCode == -5573545 && str.equals(g.f74779c)) {
                        b10 = 2;
                    } else {
                        b10 = -1;
                    }
                } else if (str.equals(g.f74784h)) {
                    b10 = 0;
                } else {
                    b10 = -1;
                }
            } else if (str.equals(g.f74783g)) {
                b10 = 1;
            } else {
                b10 = -1;
            }
            if (b10 == 0) {
                lowerCase = "android:coarse_location";
            } else if (b10 != 1) {
                lowerCase = b10 != 2 ? str.replaceFirst("android.permission.", "android:").toLowerCase() : "android:read_phone_state";
            } else {
                lowerCase = "android:fine_location";
            }
            int iCheckOp = ((AppOpsManager) context.getSystemService("appops")).checkOp(lowerCase, Binder.getCallingUid(), context.getPackageName());
            m.uj(str2, "checkPermissinKITKATNew，locationOp,permission：" + iCheckOp + "," + lowerCase);
            if (iCheckOp == 0) {
                return true;
            }
            try {
                m.uj(str2, "checkPermissinKITKATNew，false,permission：".concat(String.valueOf(lowerCase)));
                return false;
            } catch (Exception e10) {
                e = e10;
                z10 = false;
                m.ve(f21844c, "权限检查出错时默认返回有权限，异常代码：".concat(String.valueOf(e)), e);
                return z10;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }
}
