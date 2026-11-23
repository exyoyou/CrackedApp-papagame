package com.kuaishou.weapon.p0;

import dalvik.system.VMRuntime;

/* JADX INFO: loaded from: classes3.dex */
public class cp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f74649a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f74650b = true;

    static {
        try {
            f74649a = ((Boolean) VMRuntime.class.getDeclaredMethod("is64Bit", new Class[0]).invoke(VMRuntime.class.getDeclaredMethod("getRuntime", new Class[0]).invoke(null, new Object[0]), new Object[0])).booleanValue();
        } catch (Exception unused) {
            f74649a = false;
        }
        f74650b = System.getProperty("java.vm.version").startsWith("2");
    }

    public static boolean a() {
        return f74649a;
    }

    public static boolean b() {
        return f74650b;
    }
}
