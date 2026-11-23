package com.xinzhu.haunted;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public final class e<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f89158b = "e";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Method f89159a;

    public e(Class<?> cls, String str, Object... objArr) throws NoSuchMethodException {
        this(cls, null, str, objArr);
    }

    public T a(Object obj, Object... objArr) throws Throwable {
        try {
            return (T) this.f89159a.invoke(obj, objArr);
        } catch (InvocationTargetException e10) {
            if (e10.getCause() != null) {
                throw e10.getCause();
            }
            throw e10;
        }
    }

    public T call(Object obj, Object... objArr) {
        try {
            return (T) this.f89159a.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            InvocationTargetException cause2 = e11;
            if (cause != null) {
                cause2 = e11.getCause();
            }
            cause2.printStackTrace();
            return null;
        }
    }

    public e(Class<?> cls, ClassLoader classLoader, String str, Object... objArr) throws NoSuchMethodException {
    }
}
