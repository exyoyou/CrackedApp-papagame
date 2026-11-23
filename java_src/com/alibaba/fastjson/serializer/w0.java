package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: classes7.dex */
public final class w0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f6771c = 128;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a[] f6772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6773b;

    protected static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6774a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f6775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a f6776c;

        public a(Object obj, int i10, a aVar) {
            this.f6775b = obj;
            this.f6776c = aVar;
            this.f6774a = i10;
        }
    }

    public w0() {
        this(128);
    }

    public final boolean a(Object obj) {
        int iIdentityHashCode = System.identityHashCode(obj);
        int i10 = this.f6773b & iIdentityHashCode;
        for (a aVar = this.f6772a[i10]; aVar != null; aVar = aVar.f6776c) {
            if (obj == aVar.f6775b) {
                return true;
            }
        }
        this.f6772a[i10] = new a(obj, iIdentityHashCode, this.f6772a[i10]);
        return false;
    }

    public w0(int i10) {
        this.f6773b = i10 - 1;
        this.f6772a = new a[i10];
    }
}
