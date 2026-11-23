package com.umeng.analytics.pro;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes9.dex */
public class ca {
    public static bz a(Class<? extends bz> cls, int i10) {
        try {
            return (bz) cls.getMethod("findByValue", Integer.TYPE).invoke(null, Integer.valueOf(i10));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }
}
