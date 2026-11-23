package com.alibaba.fastjson.util;

import com.alibaba.fastjson.parser.deserializer.x0;
import com.sdk.base.module.manager.SDKManager;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Collection;

/* JADX INFO: loaded from: classes7.dex */
public class b {
    public static boolean a(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < 1 || cCharAt > 127) {
                return false;
            }
        }
        return true;
    }

    public static String b(Class<?> cls) {
        if (cls.isPrimitive()) {
            return f(cls);
        }
        if (cls.isArray()) {
            return "[" + b(cls.getComponentType());
        }
        return "L" + getType(cls) + ";";
    }

    public static String c(Method method) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(");
        for (Class<?> cls : method.getParameterTypes()) {
            stringBuffer.append(b(cls));
        }
        stringBuffer.append(")");
        stringBuffer.append(b(method.getReturnType()));
        return stringBuffer.toString();
    }

    public static Type d(Class<?> cls, String str) {
        try {
            return cls.getField(str).getGenericType();
        } catch (Exception unused) {
            return null;
        }
    }

    public static Type e(Class<?> cls, String str) {
        try {
            return cls.getMethod(str, new Class[0]).getGenericReturnType();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String f(Class<?> cls) {
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

    public static boolean g() {
        return h(System.getProperty("java.vm.name"));
    }

    public static String getType(Class<?> cls) {
        if (!cls.isArray()) {
            return !cls.isPrimitive() ? cls.getName().replaceAll("\\.", net.lingala.zip4j.util.e.F0) : f(cls);
        }
        return "[" + b(cls.getComponentType());
    }

    public static boolean h(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("dalvik") || lowerCase.contains("lemur");
    }

    public static void i(Collection collection, x0 x0Var, com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
        }
        cVar.b(14, 14);
        int i10 = 0;
        while (true) {
            collection.add(x0Var.c(cVar, type, Integer.valueOf(i10)));
            i10++;
            if (dVarZ.b() != 16) {
                cVar.b(15, 16);
                return;
            }
            dVarZ.l(14);
        }
    }
}
