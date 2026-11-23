package com.xuanyu.stickyheader;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes8.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WeakHashMap<RecyclerView, HashSet<Class>> f90195a = new WeakHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap<Class, Class> f90196b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static HashSet<Class> f90197c = new HashSet<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static WeakHashMap<RecyclerView, HashMap<Class, View>> f90198d = new WeakHashMap<>();

    public static <T> Class<? extends a<T>> a(Class<T> fromClazz) {
        return f90196b.get(fromClazz);
    }

    static View b(RecyclerView recyclerView, Class clazz) {
        if (f90198d.get(recyclerView) == null) {
            return null;
        }
        return f90198d.get(recyclerView).get(clazz);
    }

    public static boolean c(Class clazz) {
        return f90197c.contains(clazz);
    }

    static void e(RecyclerView recyclerView, Class clazz, View view) {
        HashMap<Class, View> map = f90198d.get(recyclerView);
        if (map == null) {
            map = new HashMap<>();
            f90198d.put(recyclerView, map);
        }
        map.put(clazz, view);
    }

    public static void f(RecyclerView recyclerView, Class clazz) {
        HashSet<Class> hashSet = f90195a.get(recyclerView);
        if (hashSet == null) {
            hashSet = new HashSet<>();
        }
        hashSet.add(clazz);
    }

    public static <T> void g(Class<T> clazz) {
        f90197c.add(clazz);
    }

    public static <T> void h(Class<T> fromClazz, Class<? extends a<T>> toClazz) {
        f90196b.put(fromClazz, toClazz);
    }

    public boolean d(RecyclerView recyclerView, Class clazz) {
        return f90195a.get(recyclerView) != null && f90195a.get(recyclerView).contains(clazz);
    }
}
