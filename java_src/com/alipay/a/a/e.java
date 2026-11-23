package com.alipay.a.a;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static List<i> f6864a;

    static {
        ArrayList arrayList = new ArrayList();
        f6864a = arrayList;
        arrayList.add(new l());
        f6864a.add(new d());
        f6864a.add(new c());
        f6864a.add(new h());
        f6864a.add(new k());
        f6864a.add(new b());
        f6864a.add(new a());
        f6864a.add(new g());
    }

    public static final <T> T a(Object obj, Type type) {
        T t10;
        for (i iVar : f6864a) {
            if (iVar.a(m.a.a(type)) && (t10 = (T) iVar.b(obj, type)) != null) {
                return t10;
            }
        }
        return null;
    }

    public static final Object b(String str, Type type) {
        Object cVar;
        if (str == null || str.length() == 0) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.startsWith("[") && strTrim.endsWith("]")) {
            cVar = new org.json.alipay.b(strTrim);
        } else {
            if (!strTrim.startsWith("{") || !strTrim.endsWith("}")) {
                return a(strTrim, type);
            }
            cVar = new org.json.alipay.c(strTrim);
        }
        return a(cVar, type);
    }
}
