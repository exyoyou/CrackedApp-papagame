package com.papa.gsyvideoplayer.player;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Class<? extends c> f76784a;

    public static c a() {
        if (f76784a == null) {
            f76784a = d.class;
        }
        try {
            return f76784a.newInstance();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static void b(Class<? extends c> cls) {
        f76784a = cls;
    }
}
