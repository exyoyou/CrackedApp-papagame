package cn.fly.commons;

import android.os.Looper;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes7.dex */
public class FlyMeta implements PublicMemberKeeper {
    public static <T> T get(FlyProduct flyProduct, String str, Class<T> cls) {
        return (T) get(flyProduct, str, cls, null);
    }

    public static <T> T get(FlyProduct flyProduct, String str, Class<T> cls, T t10) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            FlyLog.getInstance().w("WARNING: gt mta in main: key = " + str);
        }
        Object objA = x.a(str, cls, flyProduct);
        if (objA == null) {
            objA = x.a(str);
        }
        if (objA != null) {
            t10 = (T) objA;
        }
        FlyLog.getInstance().d("MTA p: " + flyProduct + ", [" + str + ": " + t10 + "]", new Object[0]);
        return t10;
    }
}
