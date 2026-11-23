package com.xuanyu.stickyheader;

import java.util.HashMap;

/* JADX INFO: loaded from: classes8.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap<Class<a<?>>, d.c<a<?>>> f90179a = new HashMap<>();

    public static a<?> a(Class<a<?>> clazz) {
        HashMap<Class<a<?>>, d.c<a<?>>> map = f90179a;
        if (map.get(clazz) == null) {
            map.put(clazz, new d.c<>(50));
        }
        a<?> aVarAcquire = map.get(clazz).acquire();
        if (aVarAcquire != null) {
            return aVarAcquire;
        }
        try {
            return clazz.newInstance();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static void b(a<?> stickyHeaderModel) {
        Class<?> cls = stickyHeaderModel.getClass();
        HashMap<Class<a<?>>, d.c<a<?>>> map = f90179a;
        if (map.get(cls) == null) {
            return;
        }
        map.get(cls).release(stickyHeaderModel);
    }
}
