package com.byazt.yv;

import android.os.SystemProperties;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 499, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Object f22459c;

    private Object c() {
        if (f22459c == null) {
            synchronized (x.class) {
                if (f22459c == null) {
                    try {
                        f22459c = Class.forName("android.os.SystemProperties").newInstance();
                    } catch (Throwable th) {
                        m.c(th);
                    }
                }
            }
        }
        return f22459c;
    }

    public String c(String str) throws IllegalArgumentException {
        try {
            return SystemProperties.get(str);
        } catch (Throwable th) {
            da.c(th);
            try {
                Object objC = c();
                return (String) objC.getClass().getMethod("get", String.class).invoke(objC, str);
            } catch (Throwable th2) {
                da.c(th2);
                return "";
            }
        }
    }
}
