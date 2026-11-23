package com.aggmoread.sdk.z.c.a.a.e.v;

import android.content.ContextWrapper;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static Map<String, k> f5292a = new HashMap();

    public static boolean a(ContextWrapper contextWrapper, String str, String str2, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        k kVar;
        try {
            if (f5292a.containsKey(str)) {
                kVar = f5292a.get(str);
                kVar.a();
            } else {
                kVar = new k(contextWrapper.getApplicationContext(), str, str2);
            }
            Field declaredField = ContextWrapper.class.getDeclaredField("mBase");
            declaredField.setAccessible(true);
            declaredField.set(contextWrapper, kVar);
            a(fVar, str, kVar);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, String str, k kVar) {
        return true;
    }
}
