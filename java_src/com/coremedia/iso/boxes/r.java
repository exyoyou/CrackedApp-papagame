package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class r extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f25032t = "elst";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25033u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25034v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25035w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<a> f25036s;

    static {
        s();
    }

    public r() {
        super(f25032t);
        this.f25036s = new LinkedList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("EditListBox.java", r.class);
        f25033u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.util.List"), 68);
        f25034v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.EditListBox", "java.util.List", "entries", "", "void"), 72);
        f25035w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.lang.String"), 108);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f25036s = new LinkedList();
        for (int i10 = 0; i10 < iA; i10++) {
            this.f25036s.add(new a(this, byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f25036s.size());
        Iterator<a> it2 = this.f25036s.iterator();
        while (it2.hasNext()) {
            it2.next().a(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return ((long) (getVersion() == 1 ? this.f25036s.size() * 20 : this.f25036s.size() * 12)) + 8;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25035w, this, this));
        return "EditListBox{entries=" + this.f25036s + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25033u, this, this));
        return this.f25036s;
    }

    public void w(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25034v, this, this, list));
        this.f25036s = list;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        r f25037a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f25038b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f25039c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private double f25040d;

        public a(r rVar, long j10, long j11, double d10) {
            this.f25038b = j10;
            this.f25039c = j11;
            this.f25040d = d10;
            this.f25037a = rVar;
        }

        public void a(ByteBuffer byteBuffer) {
            if (this.f25037a.getVersion() == 1) {
                com.coremedia.iso.i.l(byteBuffer, this.f25038b);
                byteBuffer.putLong(this.f25039c);
            } else {
                com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.c.a(this.f25038b));
                byteBuffer.putInt(com.googlecode.mp4parser.util.c.a(this.f25039c));
            }
            com.coremedia.iso.i.b(byteBuffer, this.f25040d);
        }

        public double b() {
            return this.f25040d;
        }

        public long c() {
            return this.f25039c;
        }

        public long d() {
            return this.f25038b;
        }

        public void e(double d10) {
            this.f25040d = d10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f25039c == aVar.f25039c && this.f25038b == aVar.f25038b;
        }

        public void f(long j10) {
            this.f25039c = j10;
        }

        public void g(long j10) {
            this.f25038b = j10;
        }

        public int hashCode() {
            long j10 = this.f25038b;
            int i10 = ((int) (j10 ^ (j10 >>> 32))) * 31;
            long j11 = this.f25039c;
            return i10 + ((int) (j11 ^ (j11 >>> 32)));
        }

        public String toString() {
            return "Entry{segmentDuration=" + this.f25038b + ", mediaTime=" + this.f25039c + ", mediaRate=" + this.f25040d + '}';
        }

        public a(r rVar, ByteBuffer byteBuffer) {
            if (rVar.getVersion() == 1) {
                this.f25038b = com.coremedia.iso.g.o(byteBuffer);
                this.f25039c = byteBuffer.getLong();
                this.f25040d = com.coremedia.iso.g.d(byteBuffer);
            } else {
                this.f25038b = com.coremedia.iso.g.l(byteBuffer);
                this.f25039c = byteBuffer.getInt();
                this.f25040d = com.coremedia.iso.g.d(byteBuffer);
            }
            this.f25037a = rVar;
        }
    }
}
