package com.cloudplay.messagesdk.gson.internal.k;

import com.cloudplay.messagesdk.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes9.dex */
final class c extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Class f23914d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f23915b = c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Field f23916c = b();

    c() {
    }

    private static Object c() {
        try {
            f23914d = Unsafe.class;
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.cloudplay.messagesdk.gson.internal.k.b
    public void a(AccessibleObject accessibleObject) {
        if (b(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e10) {
            throw new JsonIOException("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e10);
        }
    }

    boolean b(AccessibleObject accessibleObject) {
        if (this.f23915b != null && this.f23916c != null) {
            try {
                long jLongValue = ((Long) f23914d.getMethod("objectFieldOffset", Field.class).invoke(this.f23915b, this.f23916c)).longValue();
                f23914d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f23915b, accessibleObject, Long.valueOf(jLongValue), Boolean.TRUE);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static Field b() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (Exception unused) {
            return null;
        }
    }
}
