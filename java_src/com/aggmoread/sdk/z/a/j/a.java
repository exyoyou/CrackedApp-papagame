package com.aggmoread.sdk.z.a.j;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static ConcurrentHashMap<Integer, List<AbstractC0075a>> f3548a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.j.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0075a {
    }

    public static boolean a(int i10, AbstractC0075a abstractC0075a) {
        if (abstractC0075a == null) {
            return false;
        }
        List<AbstractC0075a> arrayList = f3548a.get(Integer.valueOf(i10));
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            f3548a.put(Integer.valueOf(i10), arrayList);
        }
        if (arrayList.contains(abstractC0075a)) {
            return false;
        }
        arrayList.add(abstractC0075a);
        return true;
    }
}
