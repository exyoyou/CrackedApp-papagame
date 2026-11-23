package com.xinzhu.haunted;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89157a = "d";

    public static Class<?> a(Class<?> cls) {
        return cls;
    }

    public static Class<?> b(String str) {
        return i(str);
    }

    public static Class<?> c(String str, ClassLoader classLoader) {
        return j(str, classLoader);
    }

    public static Constructor d(Class<?> cls, String str, Object... objArr) {
        return e(null, cls, str, objArr);
    }

    public static Constructor e(ClassLoader classLoader, Class<?> cls, String str, Object... objArr) {
        Class<?>[] clsArr = objArr.length != 0 ? new Class[objArr.length] : null;
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj instanceof String) {
                clsArr[i10] = j((String) obj, classLoader);
            } else {
                if (!(obj instanceof Class)) {
                    throw new RuntimeException("Wicked.");
                }
                clsArr[i10] = (Class) obj;
            }
        }
        try {
            Constructor<?> declaredConstructor = objArr.length == 0 ? cls.getDeclaredConstructor(new Class[0]) : cls.getDeclaredConstructor(clsArr);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static Field f(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (!declaredField.isAccessible()) {
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No such field as ");
            sb2.append(str);
            sb2.append(" under ");
            sb2.append(cls.getSimpleName());
            return null;
        }
    }

    public static Method g(Class<?> cls, String str, Object... objArr) {
        return h(null, cls, str, objArr);
    }

    public static Method h(ClassLoader classLoader, Class<?> cls, String str, Object... objArr) {
        if (cls == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No such method as ");
            sb2.append(str);
            sb2.append(" under <null> class!");
            return null;
        }
        Class<?>[] clsArr = objArr.length != 0 ? new Class[objArr.length] : null;
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj instanceof String) {
                clsArr[i10] = j((String) obj, classLoader);
            } else {
                if (!(obj instanceof Class)) {
                    throw new RuntimeException("Wicked.");
                }
                clsArr[i10] = (Class) obj;
            }
        }
        try {
            Method declaredMethod = objArr.length == 0 ? cls.getDeclaredMethod(str, new Class[0]) : cls.getDeclaredMethod(str, clsArr);
            if (!declaredMethod.isAccessible()) {
                declaredMethod.setAccessible(true);
            }
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    static Class<?> i(String str) {
        return j(str, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Class<?>] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    static Class<?> j(String str, ClassLoader classLoader) {
        try {
            str = classLoader != null ? classLoader.loadClass(str) : Class.forName(str);
            return str;
        } catch (Exception unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot load class ");
            sb2.append(str);
            return null;
        }
    }
}
