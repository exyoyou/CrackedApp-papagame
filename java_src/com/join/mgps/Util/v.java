package com.join.mgps.Util;

import android.bluetooth.BluetoothProfile;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes4.dex */
public class v {
    public static int a() {
        Field[] fields = BluetoothProfile.class.getFields();
        int length = fields.length;
        for (int i10 = 0; i10 < length; i10++) {
            Field field = fields[i10];
            int modifiers = field.getModifiers();
            if (Modifier.isStatic(modifiers) && Modifier.isPublic(modifiers) && Modifier.isFinal(modifiers)) {
                try {
                    if (field.getName().equals("INPUT_DEVICE")) {
                        return field.getInt(null);
                    }
                    continue;
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return -1;
    }

    public static Object b(Class clazz, String method, Class[] pattern, Object... params) {
        try {
            return clazz.getDeclaredMethod(method, pattern).invoke(clazz.newInstance(), params);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Object c(Object obj, String method, Class[] pattern, Object... params) {
        try {
            return obj.getClass().getDeclaredMethod(method, pattern).invoke(obj, params);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Object d(String className, String method, Class[] pattern, Object... params) {
        try {
            return b(Class.forName(className), method, pattern, params);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void e(Class cls, String fieldName, Object newValue) {
        try {
            Field field = cls.getField(fieldName);
            field.setAccessible(true);
            Field declaredField = Field.class.getDeclaredField("modifiers");
            declaredField.setAccessible(true);
            declaredField.setInt(field, field.getModifiers() & (-17));
            field.set(null, newValue);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
