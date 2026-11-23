package com.byazt.qya;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 689, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, Field> f19373c = new HashMap();

    public static Field c(Class<?> cls, String str) {
        Field field;
        String strTt = tt(cls, str);
        synchronized (f19373c) {
            field = f19373c.get(strTt);
        }
        if (field != null) {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            return field;
        }
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                synchronized (f19373c) {
                    continue;
                    f19373c.put(strTt, declaredField);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    private static String tt(Class<?> cls, String str) {
        return cls.toString() + "#" + str;
    }

    public static Object c(Field field, Object obj) throws IllegalAccessException {
        if (!field.isAccessible()) {
            field.setAccessible(true);
        }
        return field.get(obj);
    }

    public static Object c(Object obj, String str) throws IllegalAccessException {
        Field fieldC = c(obj.getClass(), str);
        if (fieldC != null) {
            return c(fieldC, obj);
        }
        return null;
    }
}
