package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class v0 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f25150t = "stsc";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25151u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25152v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25153w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25154x = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    List<a> f25155s;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f25156a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f25157b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f25158c;

        public a(long j10, long j11, long j12) {
            this.f25156a = j10;
            this.f25157b = j11;
            this.f25158c = j12;
        }

        public long a() {
            return this.f25156a;
        }

        public long b() {
            return this.f25158c;
        }

        public long c() {
            return this.f25157b;
        }

        public void d(long j10) {
            this.f25156a = j10;
        }

        public void e(long j10) {
            this.f25158c = j10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f25156a == aVar.f25156a && this.f25158c == aVar.f25158c && this.f25157b == aVar.f25157b;
        }

        public void f(long j10) {
            this.f25157b = j10;
        }

        public int hashCode() {
            long j10 = this.f25156a;
            long j11 = this.f25157b;
            int i10 = ((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f25158c;
            return i10 + ((int) (j12 ^ (j12 >>> 32)));
        }

        public String toString() {
            return "Entry{firstChunk=" + this.f25156a + ", samplesPerChunk=" + this.f25157b + ", sampleDescriptionIndex=" + this.f25158c + '}';
        }
    }

    static {
        s();
    }

    public v0() {
        super(f25150t);
        this.f25155s = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleToChunkBox.java", v0.class);
        f25151u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.util.List"), 47);
        f25152v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "java.util.List", "entries", "", "void"), 51);
        f25153w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.lang.String"), 84);
        f25154x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "blowup", "com.coremedia.iso.boxes.SampleToChunkBox", "int", "chunkCount", "", "[J"), 95);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f25155s = new ArrayList(iA);
        for (int i10 = 0; i10 < iA; i10++) {
            this.f25155s.add(new a(com.coremedia.iso.g.l(byteBuffer), com.coremedia.iso.g.l(byteBuffer), com.coremedia.iso.g.l(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f25155s.size());
        for (a aVar : this.f25155s) {
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
            com.coremedia.iso.i.i(byteBuffer, aVar.c());
            com.coremedia.iso.i.i(byteBuffer, aVar.b());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f25155s.size() * 12) + 8;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25153w, this, this));
        return "SampleToChunkBox[entryCount=" + this.f25155s.size() + "]";
    }

    public long[] v(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25154x, this, this, org.aspectj.runtime.internal.e.k(i10)));
        long[] jArr = new long[i10];
        LinkedList linkedList = new LinkedList(this.f25155s);
        Collections.reverse(linkedList);
        Iterator it2 = linkedList.iterator();
        a aVar = (a) it2.next();
        while (i10 > 1) {
            jArr[i10 - 1] = aVar.c();
            if (i10 == aVar.a()) {
                aVar = (a) it2.next();
            }
            i10--;
        }
        jArr[0] = aVar.c();
        return jArr;
    }

    public List<a> w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25151u, this, this));
        return this.f25155s;
    }

    public void x(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25152v, this, this, list));
        this.f25155s = list;
    }
}
