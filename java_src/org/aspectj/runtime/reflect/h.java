package org.aspectj.runtime.reflect;

import ad.z;

/* JADX INFO: loaded from: classes4.dex */
class h implements org.aspectj.lang.d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Object f95198n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Object f95199o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Object[] f95200p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    org.aspectj.lang.c.b f95201q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private org.aspectj.runtime.internal.a f95202r;

    static class a extends b implements org.aspectj.lang.c.a {
        public a(int i10, String str, org.aspectj.lang.e eVar, z zVar) {
            super(i10, str, eVar, zVar);
        }
    }

    static class b implements org.aspectj.lang.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f95203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        org.aspectj.lang.e f95204b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        z f95205c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f95206d;

        public b(int i10, String str, org.aspectj.lang.e eVar, z zVar) {
            this.f95203a = str;
            this.f95204b = eVar;
            this.f95205c = zVar;
            this.f95206d = i10;
        }

        String a(n nVar) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(nVar.d(getKind()));
            stringBuffer.append("(");
            stringBuffer.append(((l) h()).E(nVar));
            stringBuffer.append(")");
            return stringBuffer.toString();
        }

        @Override // org.aspectj.lang.c.b
        public final String b() {
            return a(n.f95226j);
        }

        @Override // org.aspectj.lang.c.b
        public final String f() {
            return a(n.f95228l);
        }

        @Override // org.aspectj.lang.c.b
        public z g() {
            return this.f95205c;
        }

        @Override // org.aspectj.lang.c.b
        public int getId() {
            return this.f95206d;
        }

        @Override // org.aspectj.lang.c.b
        public String getKind() {
            return this.f95203a;
        }

        @Override // org.aspectj.lang.c.b
        public org.aspectj.lang.e h() {
            return this.f95204b;
        }

        @Override // org.aspectj.lang.c.b
        public final String toString() {
            return a(n.f95227k);
        }
    }

    public h(org.aspectj.lang.c.b bVar, Object obj, Object obj2, Object[] objArr) {
        this.f95201q = bVar;
        this.f95198n = obj;
        this.f95199o = obj2;
        this.f95200p = objArr;
    }

    @Override // org.aspectj.lang.d
    public Object a() throws Throwable {
        org.aspectj.runtime.internal.a aVar = this.f95202r;
        if (aVar == null) {
            return null;
        }
        return aVar.f(aVar.c());
    }

    @Override // org.aspectj.lang.c
    public final String b() {
        return this.f95201q.b();
    }

    @Override // org.aspectj.lang.c
    public Object c() {
        return this.f95198n;
    }

    @Override // org.aspectj.lang.d
    public void d(org.aspectj.runtime.internal.a aVar) {
        this.f95202r = aVar;
    }

    @Override // org.aspectj.lang.c
    public org.aspectj.lang.c.b e() {
        return this.f95201q;
    }

    @Override // org.aspectj.lang.c
    public final String f() {
        return this.f95201q.f();
    }

    @Override // org.aspectj.lang.c
    public z g() {
        return this.f95201q.g();
    }

    @Override // org.aspectj.lang.c
    public Object[] getArgs() {
        if (this.f95200p == null) {
            this.f95200p = new Object[0];
        }
        Object[] objArr = this.f95200p;
        Object[] objArr2 = new Object[objArr.length];
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        return objArr2;
    }

    @Override // org.aspectj.lang.c
    public String getKind() {
        return this.f95201q.getKind();
    }

    @Override // org.aspectj.lang.c
    public Object getTarget() {
        return this.f95199o;
    }

    @Override // org.aspectj.lang.c
    public org.aspectj.lang.e h() {
        return this.f95201q.h();
    }

    @Override // org.aspectj.lang.d
    public Object i(Object[] objArr) throws Throwable {
        org.aspectj.runtime.internal.a aVar = this.f95202r;
        if (aVar == null) {
            return null;
        }
        int iA = aVar.a();
        int i10 = 1;
        boolean z10 = (65536 & iA) != 0;
        int i11 = (iA & 4096) != 0 ? 1 : 0;
        int i12 = (iA & 256) != 0 ? 1 : 0;
        boolean z11 = (iA & 16) != 0;
        boolean z12 = (iA & 1) != 0;
        Object[] objArrC = this.f95202r.c();
        int i13 = i11 + 0 + ((!z11 || z10) ? 0 : 1);
        if (i11 == 0 || i12 == 0) {
            i10 = 0;
        } else {
            objArrC[0] = objArr[0];
        }
        if (z11 && z12) {
            if (z10) {
                i10 = i12 + 1;
                objArrC[0] = objArr[i12];
            } else {
                i10 = i11 + 1;
                objArrC[i11] = objArr[i11];
            }
        }
        for (int i14 = i10; i14 < objArr.length; i14++) {
            objArrC[(i14 - i10) + i13] = objArr[i14];
        }
        return this.f95202r.f(objArrC);
    }

    @Override // org.aspectj.lang.c
    public final String toString() {
        return this.f95201q.toString();
    }
}
