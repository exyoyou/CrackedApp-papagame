package com.coremedia.iso.boxes;

import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes9.dex */
public class d1 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24745t = "stts";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static Map<List<a>, SoftReference<long[]>> f24746u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final /* synthetic */ boolean f24747v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24748w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24749x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24750y = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    List<a> f24751s;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f24752a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f24753b;

        public a(long j10, long j11) {
            this.f24752a = j10;
            this.f24753b = j11;
        }

        public long a() {
            return this.f24752a;
        }

        public long b() {
            return this.f24753b;
        }

        public void c(long j10) {
            this.f24752a = j10;
        }

        public void d(long j10) {
            this.f24753b = j10;
        }

        public String toString() {
            return "Entry{count=" + this.f24752a + ", delta=" + this.f24753b + '}';
        }
    }

    static {
        s();
        f24746u = new WeakHashMap();
    }

    public d1() {
        super(f24745t);
        this.f24751s = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TimeToSampleBox.java", d1.class);
        f24748w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.util.List"), 79);
        f24749x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "java.util.List", "entries", "", "void"), 83);
        f24750y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.lang.String"), 87);
    }

    public static synchronized long[] v(List<a> list) {
        long[] jArr;
        SoftReference<long[]> softReference = f24746u.get(list);
        if (softReference != null && (jArr = softReference.get()) != null) {
            return jArr;
        }
        Iterator<a> it2 = list.iterator();
        long jA = 0;
        while (it2.hasNext()) {
            jA += it2.next().a();
        }
        long[] jArr2 = new long[(int) jA];
        int i10 = 0;
        for (a aVar : list) {
            int i11 = 0;
            while (i11 < aVar.a()) {
                jArr2[i10] = aVar.b();
                i11++;
                i10++;
            }
        }
        f24746u.put(list, new SoftReference<>(jArr2));
        return jArr2;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f24751s = new ArrayList(iA);
        for (int i10 = 0; i10 < iA; i10++) {
            this.f24751s.add(new a(com.coremedia.iso.g.l(byteBuffer), com.coremedia.iso.g.l(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f24751s.size());
        for (a aVar : this.f24751s) {
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
            com.coremedia.iso.i.i(byteBuffer, aVar.b());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f24751s.size() * 8) + 8;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24750y, this, this));
        return "TimeToSampleBox[entryCount=" + this.f24751s.size() + "]";
    }

    public List<a> w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24748w, this, this));
        return this.f24751s;
    }

    public void x(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24749x, this, this, list));
        this.f24751s = list;
    }
}
