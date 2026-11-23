package com.byazt.btt;

import com.byazt.nc.yp;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2088, 20})
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<Integer, WeakReference<yp>> f12082c = new HashMap();

    public static void c(Integer num, yp ypVar) {
        f12082c.put(num, new WeakReference<>(ypVar));
    }

    public static yp c(Integer num) {
        WeakReference<yp> weakReference = f12082c.get(num);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}
