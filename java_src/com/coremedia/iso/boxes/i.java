package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class i extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24901t = "ctts";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final /* synthetic */ boolean f24902u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24903v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24904w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    List<a> f24905s;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f24906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f24907b;

        public a(int i10, int i11) {
            this.f24906a = i10;
            this.f24907b = i11;
        }

        public int a() {
            return this.f24906a;
        }

        public int b() {
            return this.f24907b;
        }

        public void c(int i10) {
            this.f24906a = i10;
        }

        public void d(int i10) {
            this.f24907b = i10;
        }

        public String toString() {
            return "Entry{count=" + this.f24906a + ", offset=" + this.f24907b + '}';
        }
    }

    static {
        s();
    }

    public i() {
        super(f24901t);
        this.f24905s = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("CompositionTimeToSample.java", i.class);
        f24903v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "", "", "", "java.util.List"), 57);
        f24904w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "java.util.List", "entries", "", "void"), 61);
    }

    public static int[] v(List<a> list) {
        Iterator<a> it2 = list.iterator();
        long jA = 0;
        while (it2.hasNext()) {
            jA += (long) it2.next().a();
        }
        int[] iArr = new int[(int) jA];
        int i10 = 0;
        for (a aVar : list) {
            int i11 = 0;
            while (i11 < aVar.a()) {
                iArr[i10] = aVar.b();
                i11++;
                i10++;
            }
        }
        return iArr;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f24905s = new ArrayList(iA);
        for (int i10 = 0; i10 < iA; i10++) {
            this.f24905s.add(new a(com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer)), byteBuffer.getInt()));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f24905s.size());
        for (a aVar : this.f24905s) {
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
            byteBuffer.putInt(aVar.b());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f24905s.size() * 8) + 8;
    }

    public List<a> w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24903v, this, this));
        return this.f24905s;
    }

    public void x(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24904w, this, this, list));
        this.f24905s = list;
    }
}
