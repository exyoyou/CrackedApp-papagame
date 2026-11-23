package com.googlecode.mp4parser.util;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j {
    public static j a(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new a(cls.getSimpleName()) : new h(cls.getSimpleName());
    }

    public abstract void b(String str);

    public abstract void c(String str);

    public abstract void d(String str);
}
