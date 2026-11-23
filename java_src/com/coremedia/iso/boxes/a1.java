package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class a1 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24677t = "subs";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24678u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24679v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24680w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<a> f24681s;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f24682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<C0536a> f24683b = new ArrayList();

        /* JADX INFO: renamed from: com.coremedia.iso.boxes.a1$a$a, reason: collision with other inner class name */
        public static class C0536a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private long f24684a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f24685b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f24686c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private long f24687d;

            public int a() {
                return this.f24686c;
            }

            public long b() {
                return this.f24687d;
            }

            public int c() {
                return this.f24685b;
            }

            public long d() {
                return this.f24684a;
            }

            public void e(int i10) {
                this.f24686c = i10;
            }

            public void f(long j10) {
                this.f24687d = j10;
            }

            public void g(int i10) {
                this.f24685b = i10;
            }

            public void h(long j10) {
                this.f24684a = j10;
            }

            public String toString() {
                return "SubsampleEntry{subsampleSize=" + this.f24684a + ", subsamplePriority=" + this.f24685b + ", discardable=" + this.f24686c + ", reserved=" + this.f24687d + '}';
            }
        }

        public long a() {
            return this.f24682a;
        }

        public int b() {
            return this.f24683b.size();
        }

        public List<C0536a> c() {
            return this.f24683b;
        }

        public void d(long j10) {
            this.f24682a = j10;
        }

        public String toString() {
            return "SampleEntry{sampleDelta=" + this.f24682a + ", subsampleCount=" + this.f24683b.size() + ", subsampleEntries=" + this.f24683b + '}';
        }
    }

    static {
        s();
    }

    public a1() {
        super(f24677t);
        this.f24681s = new ArrayList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SubSampleInformationBox.java", a1.class);
        f24678u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.util.List"), 50);
        f24679v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "java.util.List", "entries", "", "void"), 54);
        f24680w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.lang.String"), 124);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        long jL = com.coremedia.iso.g.l(byteBuffer);
        for (int i10 = 0; i10 < jL; i10++) {
            a aVar = new a();
            aVar.d(com.coremedia.iso.g.l(byteBuffer));
            int i11 = com.coremedia.iso.g.i(byteBuffer);
            for (int i12 = 0; i12 < i11; i12++) {
                a.C0536a c0536a = new a.C0536a();
                c0536a.h(getVersion() == 1 ? com.coremedia.iso.g.l(byteBuffer) : com.coremedia.iso.g.i(byteBuffer));
                c0536a.g(com.coremedia.iso.g.p(byteBuffer));
                c0536a.e(com.coremedia.iso.g.p(byteBuffer));
                c0536a.f(com.coremedia.iso.g.l(byteBuffer));
                aVar.c().add(c0536a);
            }
            this.f24681s.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f24681s.size());
        for (a aVar : this.f24681s) {
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
            com.coremedia.iso.i.f(byteBuffer, aVar.b());
            for (a.C0536a c0536a : aVar.c()) {
                if (getVersion() == 1) {
                    com.coremedia.iso.i.i(byteBuffer, c0536a.d());
                } else {
                    com.coremedia.iso.i.f(byteBuffer, com.googlecode.mp4parser.util.c.a(c0536a.d()));
                }
                com.coremedia.iso.i.m(byteBuffer, c0536a.c());
                com.coremedia.iso.i.m(byteBuffer, c0536a.a());
                com.coremedia.iso.i.i(byteBuffer, c0536a.b());
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        long j10 = 8;
        for (a aVar : this.f24681s) {
            j10 = j10 + 4 + 2;
            for (int i10 = 0; i10 < aVar.c().size(); i10++) {
                j10 = (getVersion() == 1 ? j10 + 4 : j10 + 2) + 2 + 4;
            }
        }
        return j10;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24680w, this, this));
        return "SubSampleInformationBox{entryCount=" + this.f24681s.size() + ", entries=" + this.f24681s + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24678u, this, this));
        return this.f24681s;
    }

    public void w(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24679v, this, this, list));
        this.f24681s = list;
    }
}
