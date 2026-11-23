package com.nineoldandroids.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
class d<T, V> extends c<T, V> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f76315f = "get";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f76316g = "is";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f76317h = "set";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Method f76318c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Method f76319d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Field f76320e;

    public d(Class<T> cls, Class<V> cls2, String str) {
        super(cls2, str);
        String str2 = Character.toUpperCase(str.charAt(0)) + str.substring(1);
        String str3 = f76315f + str2;
        try {
            try {
                this.f76319d = cls.getMethod(str3, null);
            } catch (NoSuchMethodException unused) {
                String str4 = "is" + str2;
                try {
                    try {
                        try {
                            this.f76319d = cls.getMethod(str4, null);
                        } catch (NoSuchFieldException unused2) {
                            throw new NoSuchPropertyException("No accessor method or field found for property with name " + str);
                        }
                    } catch (NoSuchMethodException unused3) {
                        Field field = cls.getField(str);
                        this.f76320e = field;
                        Class<?> type = field.getType();
                        if (f(cls2, type)) {
                            return;
                        }
                        throw new NoSuchPropertyException("Underlying type (" + type + ") does not match Property type (" + cls2 + ")");
                    }
                } catch (NoSuchMethodException unused4) {
                    Method declaredMethod = cls.getDeclaredMethod(str4, null);
                    this.f76319d = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
            }
        } catch (NoSuchMethodException unused5) {
            Method declaredMethod2 = cls.getDeclaredMethod(str3, null);
            this.f76319d = declaredMethod2;
            declaredMethod2.setAccessible(true);
        }
        Class<?> returnType = this.f76319d.getReturnType();
        if (f(cls2, returnType)) {
            try {
                Method declaredMethod3 = cls.getDeclaredMethod(f76317h + str2, returnType);
                this.f76318c = declaredMethod3;
                declaredMethod3.setAccessible(true);
                return;
            } catch (NoSuchMethodException unused6) {
                return;
            }
        }
        throw new NoSuchPropertyException("Underlying type (" + returnType + ") does not match Property type (" + cls2 + ")");
    }

    private boolean f(Class<V> cls, Class cls2) {
        if (cls2 == cls) {
            return true;
        }
        if (!cls2.isPrimitive()) {
            return false;
        }
        if (cls2 == Float.TYPE && cls == Float.class) {
            return true;
        }
        if (cls2 == Integer.TYPE && cls == Integer.class) {
            return true;
        }
        if (cls2 == Boolean.TYPE && cls == Boolean.class) {
            return true;
        }
        if (cls2 == Long.TYPE && cls == Long.class) {
            return true;
        }
        if (cls2 == Double.TYPE && cls == Double.class) {
            return true;
        }
        if (cls2 == Short.TYPE && cls == Short.class) {
            return true;
        }
        if (cls2 == Byte.TYPE && cls == Byte.class) {
            return true;
        }
        return cls2 == Character.TYPE && cls == Character.class;
    }

    @Override // com.nineoldandroids.util.c
    public V a(T t10) {
        Method method = this.f76319d;
        if (method != null) {
            try {
                return (V) method.invoke(t10, null);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException e10) {
                throw new RuntimeException(e10.getCause());
            }
        }
        Field field = this.f76320e;
        if (field == null) {
            throw new AssertionError();
        }
        try {
            return (V) field.get(t10);
        } catch (IllegalAccessException unused2) {
            throw new AssertionError();
        }
    }

    @Override // com.nineoldandroids.util.c
    public boolean c() {
        return this.f76318c == null && this.f76320e == null;
    }

    @Override // com.nineoldandroids.util.c
    public void e(T t10, V v10) {
        Method method = this.f76318c;
        if (method != null) {
            try {
                method.invoke(t10, v10);
                return;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException e10) {
                throw new RuntimeException(e10.getCause());
            }
        }
        Field field = this.f76320e;
        if (field != null) {
            try {
                field.set(t10, v10);
            } catch (IllegalAccessException unused2) {
                throw new AssertionError();
            }
        } else {
            throw new UnsupportedOperationException("Property " + b() + " is read-only");
        }
    }
}
