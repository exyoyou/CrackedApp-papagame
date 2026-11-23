package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class e extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f33486r = "dec3";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33487s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33488t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33489u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33490v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33491w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33492x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33493y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33494z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    List<a> f33495o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f33496p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f33497q;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f33498a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f33500c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f33501d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f33502e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f33503f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f33504g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f33505h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f33506i;

        public String toString() {
            return "Entry{fscod=" + this.f33498a + ", bsid=" + this.f33499b + ", bsmod=" + this.f33500c + ", acmod=" + this.f33501d + ", lfeon=" + this.f33502e + ", reserved=" + this.f33503f + ", num_dep_sub=" + this.f33504g + ", chan_loc=" + this.f33505h + ", reserved2=" + this.f33506i + '}';
        }
    }

    static {
        t();
    }

    public e() {
        super(f33486r);
        this.f33495o = new LinkedList();
    }

    private static /* synthetic */ void t() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("EC3SpecificBox.java", e.class);
        f33487s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getContentSize", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", MethodReflectParams.LONG), 25);
        f33488t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getContent", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 65);
        f33489u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "java.util.List"), 86);
        f33490v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "java.util.List", "entries", "", "void"), 90);
        f33491w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "addEntry", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "com.googlecode.mp4parser.boxes.EC3SpecificBox$Entry", "entry", "", "void"), 94);
        f33492x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataRate", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "int"), 98);
        f33493y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDataRate", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "int", "dataRate", "", "void"), 102);
        f33494z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getNumIndSub", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "int"), 106);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setNumIndSub", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "int", "numIndSub", "", "void"), 110);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f33496p = cVar.c(13);
        this.f33497q = cVar.c(3) + 1;
        for (int i10 = 0; i10 < this.f33497q; i10++) {
            a aVar = new a();
            aVar.f33498a = cVar.c(2);
            aVar.f33499b = cVar.c(5);
            aVar.f33500c = cVar.c(5);
            aVar.f33501d = cVar.c(3);
            aVar.f33502e = cVar.c(1);
            aVar.f33503f = cVar.c(3);
            int iC = cVar.c(4);
            aVar.f33504g = iC;
            if (iC > 0) {
                aVar.f33505h = cVar.c(9);
            } else {
                aVar.f33506i = cVar.c(1);
            }
            this.f33495o.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void c(ByteBuffer byteBuffer) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33488t, this, this, byteBuffer));
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f33496p, 13);
        dVar.a(this.f33495o.size() - 1, 3);
        for (a aVar : this.f33495o) {
            dVar.a(aVar.f33498a, 2);
            dVar.a(aVar.f33499b, 5);
            dVar.a(aVar.f33500c, 5);
            dVar.a(aVar.f33501d, 3);
            dVar.a(aVar.f33502e, 1);
            dVar.a(aVar.f33503f, 3);
            dVar.a(aVar.f33504g, 4);
            if (aVar.f33504g > 0) {
                dVar.a(aVar.f33505h, 9);
            } else {
                dVar.a(aVar.f33506i, 1);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long g() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33487s, this, this));
        Iterator<a> it2 = this.f33495o.iterator();
        long j10 = 2;
        while (it2.hasNext()) {
            j10 += it2.next().f33504g > 0 ? 4L : 3L;
        }
        return j10;
    }

    public void s(a aVar) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33491w, this, this, aVar));
        this.f33495o.add(aVar);
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33492x, this, this));
        return this.f33496p;
    }

    public List<a> v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33489u, this, this));
        return this.f33495o;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33494z, this, this));
        return this.f33497q;
    }

    public void x(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33493y, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33496p = i10;
    }

    public void y(List<a> list) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33490v, this, this, list));
        this.f33495o = list;
    }

    public void z(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33497q = i10;
    }
}
