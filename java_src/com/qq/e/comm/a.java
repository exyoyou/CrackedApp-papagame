package com.qq.e.comm;

import android.content.Context;
import android.content.Intent;
import com.kuaishou.weapon.p0.g;
import com.qq.e.comm.constants.CustomPkgConstants;
import com.qq.e.comm.util.GDTLogger;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static boolean a(Context context) {
        try {
            return c(context) && b(context, Class.forName(CustomPkgConstants.getADActivityName())) && b(context, Class.forName(CustomPkgConstants.getPortraitADActivityName())) && b(context, Class.forName(CustomPkgConstants.getLandscapeADActivityName())) && d(context, Class.forName(CustomPkgConstants.getDownLoadServiceName()));
        } catch (Throwable th) {
            GDTLogger.e("检查AndroidManifest.xml时发生异常", th);
            return false;
        }
    }

    private static boolean b(Context context, Class<?>... clsArr) {
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            try {
                Intent intent = new Intent();
                intent.setClass(context, clsArr[i10]);
                if (context.getPackageManager().resolveActivity(intent, 65536) == null) {
                    GDTLogger.e(String.format("Activity[%s]需要在AndroidManifest.xml中声明", clsArr[i10].getName()));
                    return false;
                }
            } catch (Throwable th) {
                GDTLogger.e("检查Activity时发生异常", th);
                return false;
            }
        }
        return true;
    }

    private static boolean c(Context context) {
        String[] strArr = {g.f74777a, g.f74778b};
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                String str = strArr[i10];
                if (context.checkCallingOrSelfPermission(str) == -1) {
                    GDTLogger.e(String.format("Permission[%s]需要在AndroidManifest.xml中声明", str));
                    return false;
                }
            } catch (Throwable th) {
                GDTLogger.e("检查权限时发生异常", th);
                return false;
            }
        }
        return true;
    }

    private static boolean d(Context context, Class<?>... clsArr) {
        try {
            for (Class<?> cls : clsArr) {
                Intent intent = new Intent();
                intent.setClass(context, cls);
                if (context.getPackageManager().resolveService(intent, 65536) == null) {
                    GDTLogger.e(String.format("Service[%s]需要在AndroidManifest.xml中声明", cls.getName()));
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            GDTLogger.e("检查Service时发生异常", th);
            return false;
        }
    }
}
