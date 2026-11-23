package com.byazt.omf;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 117})
public class rl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<Class, Map> f18101c = new ConcurrentHashMap();
    public static final Map<Class, Map<String, WeakReference<?>>> tt = new ConcurrentHashMap();

    public static <T> void c(String str, T t10, Class cls) {
        if (t10 == null) {
            return;
        }
        Map<Class, Map> map = f18101c;
        Map map2 = map.get(cls);
        if (map2 == null) {
            map2 = new HashMap();
            map.put(cls, map2);
        }
        map2.put(str, t10);
    }

    public static <T> T tt(String str, Class<T> cls) {
        Map map;
        if (cls == null || str == null || (map = f18101c.get(cls)) == null) {
            return null;
        }
        return (T) map.remove(str);
    }

    public static <T> T ve(String str, Class<T> cls) {
        Map<String, WeakReference<?>> map;
        WeakReference<?> weakReference;
        if (cls == null || str == null || (map = tt.get(cls)) == null || (weakReference = map.get(str)) == null) {
            return null;
        }
        Object obj = weakReference.get();
        if (obj != null) {
            return cls.cast(obj);
        }
        map.remove(str);
        return null;
    }

    public static <T> void tt(String str, T t10, Class cls) {
        if (t10 == null || cls == null || str == null) {
            return;
        }
        Map<Class, Map<String, WeakReference<?>>> map = tt;
        Map<String, WeakReference<?>> map2 = map.get(cls);
        if (map2 == null) {
            map2 = new HashMap<>();
            map.put(cls, map2);
        }
        map2.put(str, new WeakReference<>(t10));
    }

    public static <T> void c(String str) {
        try {
            Iterator<Class> it2 = f18101c.keySet().iterator();
            while (it2.hasNext()) {
                Map map = f18101c.get(it2.next());
                if (map != null) {
                    map.remove(str);
                }
            }
            Iterator<Class> it3 = tt.keySet().iterator();
            while (it3.hasNext()) {
                Map<String, WeakReference<?>> map2 = tt.get(it3.next());
                if (map2 != null) {
                    map2.remove(str);
                }
            }
        } catch (Throwable th) {
            com.byazt.nr.m.tt("xgc_dof", "removeAll error", th);
            com.byazt.ukr.yp.c().c("in_map_error", th);
        }
    }

    public static <T> T c(String str, Class<T> cls) {
        Map map;
        if (cls == null || str == null || (map = f18101c.get(cls)) == null) {
            return null;
        }
        return (T) map.get(str);
    }
}
