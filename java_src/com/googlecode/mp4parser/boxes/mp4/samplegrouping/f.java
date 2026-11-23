package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class f extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f33675v = "sbgp";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33676w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33677x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33678y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33679z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f33680s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f33681t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    List<a> f33682u;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f33683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f33684b;

        public a(long j10, int i10) {
            this.f33683a = j10;
            this.f33684b = i10;
        }

        public int a() {
            return this.f33684b;
        }

        public long b() {
            return this.f33683a;
        }

        public void c(int i10) {
            this.f33684b = i10;
        }

        public void d(long j10) {
            this.f33683a = j10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f33684b == aVar.f33684b && this.f33683a == aVar.f33683a;
        }

        public int hashCode() {
            long j10 = this.f33683a;
            return (((int) (j10 ^ (j10 >>> 32))) * 31) + this.f33684b;
        }

        public String toString() {
            return "Entry{sampleCount=" + this.f33683a + ", groupDescriptionIndex=" + this.f33684b + '}';
        }
    }

    static {
        s();
    }

    public f() {
        super(f33675v);
        this.f33682u = new LinkedList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleToGroupBox.java", f.class);
        f33676w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), 150);
        f33677x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingType", "", "void"), 154);
        f33678y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), 158);
        f33679z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingTypeParameter", "", "void"), 162);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.util.List"), 166);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.util.List", "entries", "", "void"), 170);
    }

    public void A(String str) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33679z, this, this, str));
        this.f33681t = str;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33680s = com.coremedia.iso.g.b(byteBuffer);
        if (getVersion() == 1) {
            this.f33681t = com.coremedia.iso.g.b(byteBuffer);
        }
        long jL = com.coremedia.iso.g.l(byteBuffer);
        while (true) {
            long j10 = jL - 1;
            if (jL <= 0) {
                return;
            }
            this.f33682u.add(new a(com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer)), com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer))));
            jL = j10;
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(this.f33680s.getBytes());
        if (getVersion() == 1) {
            byteBuffer.put(this.f33681t.getBytes());
        }
        com.coremedia.iso.i.i(byteBuffer, this.f33682u.size());
        for (a aVar : this.f33682u) {
            com.coremedia.iso.i.i(byteBuffer, aVar.b());
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return getVersion() == 1 ? (this.f33682u.size() * 8) + 16 : (this.f33682u.size() * 8) + 12;
    }

    public List<a> v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f33682u;
    }

    public String w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33676w, this, this));
        return this.f33680s;
    }

    public String x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33678y, this, this));
        return this.f33681t;
    }

    public void y(List<a> list) {
        j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, list));
        this.f33682u = list;
    }

    public void z(String str) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33677x, this, this, str));
        this.f33680s = str;
    }
}
