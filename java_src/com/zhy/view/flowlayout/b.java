package com.zhy.view.flowlayout;

import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public abstract class b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<T> f90385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f90386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashSet<Integer> f90387c = new HashSet<>();

    interface a {
        void a();
    }

    public b(List<T> list) {
        this.f90385a = list;
    }

    public int a() {
        List<T> list = this.f90385a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public T b(int i10) {
        return this.f90385a.get(i10);
    }

    HashSet<Integer> c() {
        return this.f90387c;
    }

    public abstract View d(FlowLayout flowLayout, int i10, T t10);

    public void e() {
        this.f90386b.a();
    }

    void f(a aVar) {
        this.f90386b = aVar;
    }

    public boolean g(int i10, T t10) {
        return false;
    }

    public void h(Set<Integer> set) {
        this.f90387c.clear();
        if (set != null) {
            this.f90387c.addAll(set);
        }
        e();
    }

    public void i(int... iArr) {
        for (int i10 : iArr) {
            this.f90387c.add(Integer.valueOf(i10));
        }
        e();
    }

    public b(T[] tArr) {
        this.f90385a = new ArrayList(Arrays.asList(tArr));
    }
}
