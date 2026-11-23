package com.xinzhu.jnihook;

import androidx.annotation.Keep;
import com.join.mgps.Util.o0;
import com.sdk.base.module.manager.SDKManager;
import java.lang.reflect.Method;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes8.dex */
@Keep
public class MethodUtils {
    public static String getDeclaringClass(Method method) {
        return method.getDeclaringClass().getName().replace(o0.f49827a, e.F0);
    }

    public static String getDesc(Method method) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(");
        for (Class<?> cls : method.getParameterTypes()) {
            stringBuffer.append(getDesc(cls));
        }
        stringBuffer.append(")");
        stringBuffer.append(getDesc(method.getReturnType()));
        return stringBuffer.toString();
    }

    public static String getMethodName(Method method) {
        return method.getName();
    }

    private static String getPrimitiveLetter(Class<?> cls) {
        if (Integer.TYPE.equals(cls)) {
            return "I";
        }
        if (Void.TYPE.equals(cls)) {
            return "V";
        }
        if (Boolean.TYPE.equals(cls)) {
            return "Z";
        }
        if (Character.TYPE.equals(cls)) {
            return SDKManager.ALGO_C_RFU;
        }
        if (Byte.TYPE.equals(cls)) {
            return SDKManager.ALGO_B_AES_SHA256_RSA;
        }
        if (Short.TYPE.equals(cls)) {
            return "S";
        }
        if (Float.TYPE.equals(cls)) {
            return "F";
        }
        if (Long.TYPE.equals(cls)) {
            return "J";
        }
        if (Double.TYPE.equals(cls)) {
            return SDKManager.ALGO_D_RFU;
        }
        throw new IllegalStateException("Type: " + cls.getCanonicalName() + " is not a primitive type");
    }

    private static String getType(Class<?> cls) {
        if (!cls.isArray()) {
            return !cls.isPrimitive() ? cls.getName().replaceAll("\\.", e.F0) : getPrimitiveLetter(cls);
        }
        return "[" + getDesc(cls.getComponentType());
    }

    private static String getDesc(Class<?> cls) {
        if (cls.isPrimitive()) {
            return getPrimitiveLetter(cls);
        }
        if (cls.isArray()) {
            return "[" + getDesc(cls.getComponentType());
        }
        return "L" + getType(cls) + ";";
    }
}
