package com.papa.gsyvideoplayer.cache;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Class<? extends b> f76750a;

    public static b a() {
        if (f76750a == null) {
            f76750a = c.class;
        }
        try {
            return f76750a.newInstance();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static void b(Class<? extends b> cls) {
        f76750a = cls;
    }
}
