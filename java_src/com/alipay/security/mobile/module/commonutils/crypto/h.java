package com.alipay.security.mobile.module.commonutils.crypto;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
public final class h {
    public static Object a(Object obj, Method method, Object[] objArr) {
        if (obj == null || method == null || objArr == null) {
            return null;
        }
        try {
            method.setAccessible(true);
            return method.invoke(obj, objArr);
        } catch (Exception e10) {
            method.getName();
            obj.toString();
            e10.toString();
            return null;
        }
    }

    public static Method b(String str, Class<?> cls, Class<?> cls2) {
        if (c0.a.b(str) || cls == null || cls2 == null) {
            return null;
        }
        try {
            return cls.getMethod("set" + Character.toTitleCase(str.charAt(0)) + str.substring(1, str.length()), cls2);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }
}
