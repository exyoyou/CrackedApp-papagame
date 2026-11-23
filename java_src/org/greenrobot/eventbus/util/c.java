package org.greenrobot.eventbus.util;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import org.greenrobot.eventbus.f;

/* JADX INFO: loaded from: classes10.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<Class<? extends Throwable>, Integer> f95349a = new HashMap();

    public c a(Class<? extends Throwable> cls, int i10) {
        this.f95349a.put(cls, Integer.valueOf(i10));
        return this;
    }

    public Integer b(Throwable th) {
        int i10 = 20;
        Throwable cause = th;
        do {
            Integer numC = c(cause);
            if (numC != null) {
                return numC;
            }
            cause = cause.getCause();
            i10--;
            if (i10 <= 0 || cause == th) {
                break;
            }
        } while (cause != null);
        f.a.a().a(Level.FINE, "No specific message resource ID found for " + th);
        return null;
    }

    protected Integer c(Throwable th) {
        Class<?> cls = th.getClass();
        Integer value = this.f95349a.get(cls);
        if (value == null) {
            Class<? extends Throwable> cls2 = null;
            for (Map.Entry<Class<? extends Throwable>, Integer> entry : this.f95349a.entrySet()) {
                Class<? extends Throwable> key = entry.getKey();
                if (key.isAssignableFrom(cls) && (cls2 == null || cls2.isAssignableFrom(key))) {
                    value = entry.getValue();
                    cls2 = key;
                }
            }
        }
        return value;
    }
}
