package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: classes7.dex */
public class g<K, V> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f6833c = 1024;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a<K, V>[] f6834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6835b;

    protected static final class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6836a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final K f6837b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public V f6838c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final a<K, V> f6839d;

        public a(K k10, V v10, int i10, a<K, V> aVar) {
            this.f6837b = k10;
            this.f6838c = v10;
            this.f6839d = aVar;
            this.f6836a = i10;
        }
    }

    public g() {
        this(1024);
    }

    public final V a(K k10) {
        for (a<K, V> aVar = this.f6834a[System.identityHashCode(k10) & this.f6835b]; aVar != null; aVar = aVar.f6839d) {
            if (k10 == aVar.f6837b) {
                return aVar.f6838c;
            }
        }
        return null;
    }

    public boolean b(K k10, V v10) {
        int iIdentityHashCode = System.identityHashCode(k10);
        int i10 = this.f6835b & iIdentityHashCode;
        for (a<K, V> aVar = this.f6834a[i10]; aVar != null; aVar = aVar.f6839d) {
            if (k10 == aVar.f6837b) {
                aVar.f6838c = v10;
                return true;
            }
        }
        this.f6834a[i10] = new a<>(k10, v10, iIdentityHashCode, this.f6834a[i10]);
        return false;
    }

    public int c() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            a<K, V>[] aVarArr = this.f6834a;
            if (i10 >= aVarArr.length) {
                return i11;
            }
            for (a<K, V> aVar = aVarArr[i10]; aVar != null; aVar = aVar.f6839d) {
                i11++;
            }
            i10++;
        }
    }

    public g(int i10) {
        this.f6835b = i10 - 1;
        this.f6834a = new a[i10];
    }
}
