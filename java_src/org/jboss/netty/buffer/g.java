package org.jboss.netty.buffer;

/* JADX INFO: loaded from: classes10.dex */
public interface g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f95454a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f95455b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f95456c = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final g f95457d = new e();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final g f95458e = new f();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final g f95459f = new C1227g();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final g f95460g = new h();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final g f95461h = new i();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final g f95462i = new j();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final g f95463j = new a();

    static class a implements g {
        a() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            byte b10 = eVar.getByte(i10);
            return (b10 == 32 || b10 == 9) ? false : true;
        }
    }

    static class b implements g {
        b() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            return eVar.getByte(i10) == 0;
        }
    }

    static class c implements g {
        c() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            return eVar.getByte(i10) != 0;
        }
    }

    static class d implements g {
        d() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            return eVar.getByte(i10) == 13;
        }
    }

    static class e implements g {
        e() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            return eVar.getByte(i10) != 13;
        }
    }

    static class f implements g {
        f() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            return eVar.getByte(i10) == 10;
        }
    }

    /* JADX INFO: renamed from: org.jboss.netty.buffer.g$g, reason: collision with other inner class name */
    static class C1227g implements g {
        C1227g() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            return eVar.getByte(i10) != 10;
        }
    }

    static class h implements g {
        h() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            byte b10 = eVar.getByte(i10);
            return b10 == 13 || b10 == 10;
        }
    }

    static class i implements g {
        i() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            byte b10 = eVar.getByte(i10);
            return (b10 == 13 || b10 == 10) ? false : true;
        }
    }

    static class j implements g {
        j() {
        }

        @Override // org.jboss.netty.buffer.g
        public boolean a(org.jboss.netty.buffer.e eVar, int i10) {
            byte b10 = eVar.getByte(i10);
            return b10 == 32 || b10 == 9;
        }
    }

    boolean a(org.jboss.netty.buffer.e eVar, int i10);
}
