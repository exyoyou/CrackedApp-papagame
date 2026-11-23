package com.umeng.analytics.pro;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class ch implements Serializable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Map<Class<? extends bv>, Map<? extends cc, ch>> f84524d = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f84525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte f84526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ci f84527c;

    public ch(String str, byte b10, ci ciVar) {
        this.f84525a = str;
        this.f84526b = b10;
        this.f84527c = ciVar;
    }

    public static void a(Class<? extends bv> cls, Map<? extends cc, ch> map) {
        f84524d.put(cls, map);
    }

    public static Map<? extends cc, ch> a(Class<? extends bv> cls) {
        if (!f84524d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("IllegalAccessException for TBase class: " + cls.getName() + ", message: " + e10.getMessage());
            } catch (InstantiationException e11) {
                throw new RuntimeException("InstantiationException for TBase class: " + cls.getName() + ", message: " + e11.getMessage());
            }
        }
        return f84524d.get(cls);
    }
}
