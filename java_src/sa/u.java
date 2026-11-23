package sa;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes8.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f97028a = "u";

    public static <T> Object a(Class<T> cls) {
        String name = cls.getName();
        if (name.equals("java.lang.Void") || name.equals("void")) {
            return null;
        }
        if (name.equals("java.lang.Boolean") || name.equals("boolean")) {
            return Boolean.FALSE;
        }
        if (Number.class.isAssignableFrom(cls) || name.equals(MethodReflectParams.BYTE) || name.equals(MethodReflectParams.SHORT) || name.equals("int") || name.equals(MethodReflectParams.LONG) || name.equals("float") || name.equals(MethodReflectParams.DOUBLE)) {
            return 0;
        }
        if (cls.isArray()) {
            return Array.newInstance(cls.getComponentType(), 0);
        }
        return null;
    }
}
