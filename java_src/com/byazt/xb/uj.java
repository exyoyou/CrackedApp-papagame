package com.byazt.xb;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 15})
public class uj<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class<?> f21782c;
    public final String tt;
    public final Class[] ve;

    public uj(Class<?> cls, String str, Class... clsArr) {
        this.f21782c = cls;
        this.tt = str;
        this.ve = clsArr;
    }

    public boolean c(T t10) {
        return c(t10.getClass()) != null;
    }

    public Object tt(T t10, Object... objArr) {
        try {
            return c(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object uj(T t10, Object... objArr) {
        try {
            return ve(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object ve(T t10, Object... objArr) throws InvocationTargetException {
        Method methodC = c(t10.getClass());
        if (methodC != null) {
            try {
                return methodC.invoke(t10, objArr);
            } catch (IllegalAccessException e10) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: ".concat(String.valueOf(methodC)));
                assertionError.initCause(e10);
                throw assertionError;
            }
        }
        throw new AssertionError("Method " + this.tt + " not supported for object " + t10);
    }

    public Object c(T t10, Object... objArr) throws InvocationTargetException {
        Method methodC = c(t10.getClass());
        if (methodC == null) {
            return null;
        }
        try {
            return methodC.invoke(t10, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    private Method c(Class<?> cls) {
        Class<?> cls2;
        String str = this.tt;
        if (str == null) {
            return null;
        }
        Method methodC = c(cls, str, this.ve);
        if (methodC == null || (cls2 = this.f21782c) == null || cls2.isAssignableFrom(methodC.getReturnType())) {
            return methodC;
        }
        return null;
    }

    private static Method c(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }
}
