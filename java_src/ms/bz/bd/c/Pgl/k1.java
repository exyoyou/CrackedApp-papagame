package ms.bz.bd.c.Pgl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class k1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static String f94404c;
    static String tt;

    @SuppressLint({"MissingPermission"})
    public static synchronized String c(Context context) {
        String str = f94404c;
        if (str != null) {
            return v1.c(str);
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                throw new NullPointerException("null TM");
            }
            Method declaredMethod = telephonyManager.getClass().getDeclaredMethod(new String(pblr.c("6765744465766963654964")), new Class[0]);
            declaredMethod.setAccessible(true);
            f94404c = (String) declaredMethod.invoke(telephonyManager, new Object[0]);
            return v1.c(f94404c);
        } catch (Throwable unused) {
        }
    }

    @SuppressLint({"MissingPermission"})
    public static synchronized String tt(Context context) {
        String str = f94404c;
        if (str != null) {
            return v1.c(str);
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                throw new NullPointerException("null TM");
            }
            Method declaredMethod = telephonyManager.getClass().getDeclaredMethod(new String(pblr.c("676574537562736372696265724964")), new Class[0]);
            declaredMethod.setAccessible(true);
            tt = (String) declaredMethod.invoke(telephonyManager, new Object[0]);
            return v1.c(tt);
        } catch (Throwable unused) {
        }
    }
}
