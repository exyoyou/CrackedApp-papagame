package com.swift.sandhook.utils;

import com.swift.sandhook.SandHook;

/* JADX INFO: loaded from: classes3.dex */
public class ParamWrapper {
    private static boolean is64Bit = SandHook.is64Bit();

    public static Object addressToObject(Class cls, long j10) {
        return is64Bit ? addressToObject64(cls, j10) : addressToObject32(cls, (int) j10);
    }

    public static Object addressToObject32(Class cls, int i10) {
        if (cls == null) {
            return null;
        }
        if (!cls.isPrimitive()) {
            return SandHook.getObject(i10);
        }
        if (cls == Integer.TYPE) {
            return Integer.valueOf(i10);
        }
        if (cls == Short.TYPE) {
            return Short.valueOf((short) i10);
        }
        if (cls == Byte.TYPE) {
            return Byte.valueOf((byte) i10);
        }
        if (cls == Character.TYPE) {
            return Character.valueOf((char) i10);
        }
        if (cls == Boolean.TYPE) {
            return Boolean.valueOf(i10 != 0);
        }
        throw new RuntimeException("unknown type: " + cls.toString());
    }

    public static Object addressToObject64(Class cls, long j10) {
        if (cls == null) {
            return null;
        }
        if (!cls.isPrimitive()) {
            return SandHook.getObject(j10);
        }
        if (cls == Integer.TYPE) {
            return Integer.valueOf((int) j10);
        }
        if (cls == Long.TYPE) {
            return Long.valueOf(j10);
        }
        if (cls == Short.TYPE) {
            return Short.valueOf((short) j10);
        }
        if (cls == Byte.TYPE) {
            return Byte.valueOf((byte) j10);
        }
        if (cls == Character.TYPE) {
            return Character.valueOf((char) j10);
        }
        if (cls == Boolean.TYPE) {
            return Boolean.valueOf(j10 != 0);
        }
        throw new RuntimeException("unknown type: " + cls.toString());
    }

    public static long objectToAddress(Class cls, Object obj) {
        return is64Bit ? objectToAddress64(cls, obj) : objectToAddress32(cls, obj);
    }

    public static int objectToAddress32(Class cls, Object obj) {
        if (obj == null) {
            return 0;
        }
        if (!cls.isPrimitive()) {
            return (int) SandHook.getObjectAddress(obj);
        }
        if (cls == Integer.TYPE) {
            return ((Integer) obj).intValue();
        }
        if (cls == Short.TYPE) {
            return ((Short) obj).shortValue();
        }
        if (cls == Byte.TYPE) {
            return ((Byte) obj).byteValue();
        }
        if (cls == Character.TYPE) {
            return ((Character) obj).charValue();
        }
        if (cls == Boolean.TYPE) {
            return Boolean.TRUE.equals(obj) ? 1 : 0;
        }
        throw new RuntimeException("unknown type: " + cls.toString());
    }

    public static long objectToAddress64(Class cls, Object obj) {
        if (obj == null) {
            return 0L;
        }
        if (!cls.isPrimitive()) {
            return SandHook.getObjectAddress(obj);
        }
        if (cls == Integer.TYPE) {
            return ((Integer) obj).intValue();
        }
        if (cls == Long.TYPE) {
            return ((Long) obj).longValue();
        }
        if (cls == Short.TYPE) {
            return ((Short) obj).shortValue();
        }
        if (cls == Byte.TYPE) {
            return ((Byte) obj).byteValue();
        }
        if (cls == Character.TYPE) {
            return ((Character) obj).charValue();
        }
        if (cls == Boolean.TYPE) {
            return Boolean.TRUE.equals(obj) ? 1L : 0L;
        }
        throw new RuntimeException("unknown type: " + cls.toString());
    }

    public static boolean support(Class cls) {
        if (is64Bit) {
            return (cls == Float.TYPE || cls == Double.TYPE) ? false : true;
        }
        return (cls == Float.TYPE || cls == Double.TYPE || cls == Long.TYPE) ? false : true;
    }
}
