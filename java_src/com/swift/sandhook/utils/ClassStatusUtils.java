package com.swift.sandhook.utils;

import com.swift.sandhook.SandHookConfig;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes3.dex */
public class ClassStatusUtils {
    static Field fieldStatusOfClass;

    static {
        try {
            Field declaredField = Class.class.getDeclaredField("status");
            fieldStatusOfClass = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
    }

    public static int getClassStatus(Class cls, boolean z10) {
        int i10 = 0;
        if (cls == null) {
            return 0;
        }
        try {
            i10 = fieldStatusOfClass.getInt(cls);
        } catch (Throwable unused) {
        }
        return z10 ? (int) (toUnsignedLong(i10) >> 28) : i10;
    }

    public static boolean isInitialized(Class cls) {
        if (fieldStatusOfClass == null) {
            return true;
        }
        if (SandHookConfig.SDK_INT >= 30) {
            return getClassStatus(cls, true) >= 14;
        }
        if (SandHookConfig.SDK_INT >= 28) {
            return getClassStatus(cls, true) == 14;
        }
        if (SandHookConfig.SDK_INT == 27) {
            return getClassStatus(cls, false) == 11;
        }
        return getClassStatus(cls, false) == 10;
    }

    public static boolean isStaticAndNoInited(Member member) {
        if (member instanceof Method) {
            return Modifier.isStatic(member.getModifiers()) && !isInitialized(member.getDeclaringClass());
        }
        return false;
    }

    public static long toUnsignedLong(int i10) {
        return ((long) i10) & 4294967295L;
    }
}
