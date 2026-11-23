package com.aggmoread.sdk.z.c.a.a.e;

import android.text.TextUtils;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
public class j {
    public static Object a(Class cls, Object obj, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (Exception e10) {
            e.b("XXXXX", "err " + e10.getMessage());
            return null;
        }
    }

    public static Object b(Class cls, Object obj, String str) {
        return a(cls, obj, str, null, new Object[0]);
    }

    public static Method c(Object obj, Class cls) {
        try {
            for (Method method : obj.getClass().getMethods()) {
                Class<?> returnType = method.getReturnType();
                e.b("XXXXX", "method type " + returnType);
                if (cls.isAssignableFrom(returnType)) {
                    return method;
                }
            }
            return null;
        } catch (Exception e10) {
            e.b("XXXXX", "err " + e10.getMessage());
            return null;
        }
    }

    public static Object a(Class cls, Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        if (obj == null) {
            return null;
        }
        try {
            Method method = clsArr != null ? cls.getMethod(str, clsArr) : cls.getMethod(str, new Class[0]);
            method.setAccessible(true);
            return method.invoke(obj, objArr);
        } catch (Exception e10) {
            e.b("XXXXX", "invoke method err " + e10.getMessage());
            return null;
        }
    }

    public static Object b(Object obj, Class cls) {
        try {
            for (Field field : obj.getClass().getFields()) {
                Class<?> type = field.getType();
                e.b("XXXXX", "field type " + type);
                if (type == cls) {
                    field.setAccessible(true);
                    return field.get(obj);
                }
            }
            return null;
        } catch (Exception e10) {
            e.b("XXXXX", "err " + e10.getMessage());
            return null;
        }
    }

    public static Object a(Class cls, String str) {
        try {
            return cls.getField(str).get(null);
        } catch (Exception e10) {
            e.b("XXXXX", "static err " + e10.getMessage());
            return null;
        }
    }

    public static Object b(Object obj, String str) {
        try {
            Field field = obj.getClass().getField(str);
            field.setAccessible(true);
            return field.get(obj);
        } catch (Exception e10) {
            e.b("XXXXX", "err " + e10.getMessage());
            return null;
        }
    }

    public static Object a(Object obj, Class cls) {
        int i10;
        try {
            Field[] declaredFields = obj.getClass().getDeclaredFields();
            while (i10 < declaredFields.length) {
                Field field = declaredFields[i10];
                Class<?> type = field.getType();
                e.b("XXXXX", "field type " + type);
                i10 = (type == cls || cls.isAssignableFrom(type)) ? 0 : i10 + 1;
                field.setAccessible(true);
                return field.get(obj);
            }
            return null;
        } catch (Exception e10) {
            e.b("XXXXX", "err " + e10.getMessage());
            return null;
        }
    }

    public static void b(Object obj, String str, String str2) {
        if (com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue()) {
            try {
                Class<?> cls = obj.getClass();
                if (TextUtils.isEmpty(str) || cls.getName().contains(str)) {
                    for (Field field : cls.getFields()) {
                        field.setAccessible(true);
                        e.b("XXXXX", " field_" + str2 + " : " + field.getName() + ", field " + field.get(obj));
                    }
                }
            } catch (Exception e10) {
                e.b("XXXXX", "dump field err " + e10.getMessage());
            }
        }
    }

    public static Object a(Object obj, String str) {
        try {
            return a(obj.getClass(), obj, str);
        } catch (Exception e10) {
            e.b("XXXXX", "err " + e10.getMessage());
            return null;
        }
    }

    public static Object a(Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        if (obj == null) {
            return null;
        }
        try {
            return a(obj.getClass(), obj, str, clsArr, objArr);
        } catch (Exception e10) {
            e.b("XXXXX", "invoke method err " + e10.getMessage());
            return null;
        }
    }

    public static Method a(Object obj, String str, Class<?>... clsArr) {
        if (obj == null) {
            return null;
        }
        try {
            return obj.getClass().getMethod(str, clsArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(Class cls, Object obj, String str, String str2) {
        if (com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue()) {
            e.b("XXXXX", "dumpDeclaredFields ");
            if (cls == null) {
                try {
                    cls = obj.getClass();
                } catch (Exception e10) {
                    e.b("XXXXX", "dump field err " + e10.getMessage());
                    return;
                }
            }
            if (TextUtils.isEmpty(str) || cls.getName().contains(str)) {
                for (Field field : cls.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    StringBuilder sb2 = new StringBuilder();
                    if (obj2 != null && obj2.getClass().isArray()) {
                        sb2.append("[ ");
                        int length = Array.getLength(obj2);
                        for (int i10 = 0; i10 < length; i10++) {
                            if (i10 != 0) {
                                sb2.append(",");
                            }
                            sb2.append(Array.get(obj2, i10) + "");
                        }
                        sb2.append(" ]");
                    }
                    e.b("XXXXX", " Declared field_" + str2 + " : " + field.getName() + ", field " + obj2 + " " + sb2.toString());
                }
            }
        }
    }

    public static void a(Object obj, String str, String str2) {
        a((Class) null, obj, str, str2);
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
