package com.netease.nis.sdkwrapper;

import android.content.Context;
import android.os.Looper;
import android.widget.Toast;
import com.join.mgps.Util.o0;
import com.sdk.base.module.manager.SDKManager;
import com.swift.sandhook.annotation.MethodReflectParams;
import external.org.apache.commons.lang3.d;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes2.dex */
public class Utils {
    static {
        System.loadLibrary("secsdk");
    }

    private static String doTypeShort(String str) {
        if (str.startsWith("[")) {
            return str.replace(o0.f49827a, e.F0);
        }
        if (str.equals("int")) {
            return "I";
        }
        if (str.equals("float")) {
            return "F";
        }
        if (str.equals(MethodReflectParams.LONG)) {
            return "J";
        }
        if (str.equals(MethodReflectParams.DOUBLE)) {
            return SDKManager.ALGO_D_RFU;
        }
        if (str.equals(MethodReflectParams.SHORT)) {
            return "S";
        }
        if (str.equals(MethodReflectParams.CHAR)) {
            return SDKManager.ALGO_C_RFU;
        }
        if (str.equals("boolean")) {
            return "Z";
        }
        if (str.equals(MethodReflectParams.BYTE)) {
            return SDKManager.ALGO_B_AES_SHA256_RSA;
        }
        return ("L" + str + ";").replace(o0.f49827a, e.F0);
    }

    public static String getFieldSCDesc(Class cls, String str, String str2) {
        while (cls != null) {
            String strVGetFieldSCDesc = vGetFieldSCDesc(cls, str, str2);
            if (strVGetFieldSCDesc != "") {
                return strVGetFieldSCDesc;
            }
            cls = cls.getSuperclass();
        }
        return "";
    }

    public static Object getStaticFO(String str, String str2) {
        try {
            Field field = Class.forName(str.replace('/', d.f90941a)).getField(str2);
            Class<?> type = field.getType();
            if (type == Integer.TYPE) {
                return Integer.valueOf(field.getInt(null));
            }
            if (type == Float.TYPE) {
                return Float.valueOf(field.getFloat(null));
            }
            if (type == Long.TYPE) {
                return Long.valueOf(field.getLong(null));
            }
            if (type == Double.TYPE) {
                return Double.valueOf(field.getDouble(null));
            }
            if (type == Short.TYPE) {
                return Short.valueOf(field.getShort(null));
            }
            if (type == Character.TYPE) {
                return Character.valueOf(field.getChar(null));
            }
            if (type == Boolean.TYPE) {
                return Boolean.valueOf(field.getBoolean(null));
            }
            return type == Byte.TYPE ? Byte.valueOf(field.getByte(null)) : field.get(null);
        } catch (Exception e10) {
            e10.toString();
            return null;
        }
    }

    public static native Object rL(Object[] objArr);

    public static void showRiskMessage(Context context, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Toast.makeText(context, str, 0).show();
            return;
        }
        Looper.prepare();
        Toast.makeText(context, str, 0).show();
        Looper.loop();
    }

    private static String vGetFieldSCDesc(Class cls, String str, String str2) {
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (Field field : declaredFields) {
                String strReplace = field.getType().toString().replace("class ", "").replace("interface ", "");
                if (Modifier.isStatic(field.getModifiers()) && field.getName().equals(str) && str2.equals(doTypeShort(strReplace))) {
                    return field.getDeclaringClass().getName().replace(o0.f49827a, e.F0);
                }
            }
            return "";
        } catch (NoClassDefFoundError unused) {
            return "NoClassDefFoundError";
        }
    }
}
