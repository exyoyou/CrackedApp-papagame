package com.byazt.w;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1017, 71})
public class x<K, T> extends LinkedHashMap<K, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f21478c;

    public x() {
        this(4, 4);
    }

    public void c(int i10) {
        this.f21478c = i10;
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry<K, T> entry) {
        return size() > this.f21478c;
    }

    public x(int i10, int i11) {
        this(i10, i11, true);
    }

    public x(int i10, int i11, boolean z10) {
        super(i10, 0.75f, z10);
        c(i11);
    }
}
