package org.apache.http.client.utils;

import java.lang.reflect.InvocationTargetException;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class CloneUtilsHC4 {
    private CloneUtilsHC4() {
    }

    public static Object clone(Object obj) throws CloneNotSupportedException {
        return cloneObject(obj);
    }

    public static <T> T cloneObject(T t10) throws CloneNotSupportedException {
        if (t10 == null) {
            return null;
        }
        if (!(t10 instanceof Cloneable)) {
            throw new CloneNotSupportedException();
        }
        try {
            try {
                return (T) t10.getClass().getMethod("clone", null).invoke(t10, null);
            } catch (IllegalAccessException e10) {
                throw new IllegalAccessError(e10.getMessage());
            } catch (InvocationTargetException e11) {
                Throwable cause = e11.getCause();
                if (cause instanceof CloneNotSupportedException) {
                    throw ((CloneNotSupportedException) cause);
                }
                throw new Error("Unexpected exception", cause);
            }
        } catch (NoSuchMethodException e12) {
            throw new NoSuchMethodError(e12.getMessage());
        }
    }
}
