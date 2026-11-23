package com.coremedia.iso.boxes.fragment;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class m extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;
    private static final /* synthetic */ org.aspectj.lang.c.b J = null;
    private static final /* synthetic */ org.aspectj.lang.c.b K = null;
    private static final /* synthetic */ org.aspectj.lang.c.b L = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f24840y = "tfra";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24841z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f24842s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f24843t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f24844u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f24845v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f24846w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private List<a> f24847x;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f24848a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f24849b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f24850c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f24851d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f24852e;

        public a() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f24849b == aVar.f24849b && this.f24852e == aVar.f24852e && this.f24848a == aVar.f24848a && this.f24850c == aVar.f24850c && this.f24851d == aVar.f24851d;
        }

        public int hashCode() {
            long j10 = this.f24848a;
            long j11 = this.f24849b;
            int i10 = ((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f24850c;
            int i11 = (i10 + ((int) (j12 ^ (j12 >>> 32)))) * 31;
            long j13 = this.f24851d;
            int i12 = (i11 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
            long j14 = this.f24852e;
            return i12 + ((int) (j14 ^ (j14 >>> 32)));
        }

        public long k() {
            return this.f24849b;
        }

        public long l() {
            return this.f24852e;
        }

        public long m() {
            return this.f24848a;
        }

        public long n() {
            return this.f24850c;
        }

        public long o() {
            return this.f24851d;
        }

        public void p(long j10) {
            this.f24849b = j10;
        }

        public void q(long j10) {
            this.f24852e = j10;
        }

        public void r(long j10) {
            this.f24848a = j10;
        }

        public void s(long j10) {
            this.f24850c = j10;
        }

        public void t(long j10) {
            this.f24851d = j10;
        }

        public String toString() {
            return "Entry{time=" + this.f24848a + ", moofOffset=" + this.f24849b + ", trafNumber=" + this.f24850c + ", trunNumber=" + this.f24851d + ", sampleNumber=" + this.f24852e + '}';
        }

        public a(long j10, long j11, long j12, long j13, long j14) {
            this.f24849b = j11;
            this.f24852e = j14;
            this.f24848a = j10;
            this.f24850c = j12;
            this.f24851d = j13;
        }
    }

    static {
        s();
    }

    public m() {
        super(f24840y);
        this.f24844u = 2;
        this.f24845v = 2;
        this.f24846w = 2;
        this.f24847x = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackFragmentRandomAccessBox.java", m.class);
        f24841z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", MethodReflectParams.LONG, "trackId", "", "void"), 145);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLengthSizeOfTrafNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "int", "lengthSizeOfTrafNum", "", "void"), 149);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "java.util.List"), 185);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "java.util.List", "entries", "", "void"), 189);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "java.lang.String"), 290);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLengthSizeOfTrunNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "int", "lengthSizeOfTrunNum", "", "void"), 153);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLengthSizeOfSampleNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "int", "lengthSizeOfSampleNum", "", "void"), 157);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", MethodReflectParams.LONG), 161);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 165);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLengthSizeOfTrafNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 169);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLengthSizeOfTrunNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 173);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLengthSizeOfSampleNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 177);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getNumberOfEntries", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", MethodReflectParams.LONG), 181);
    }

    public int A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f24843t;
    }

    public long B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f24842s;
    }

    public void C(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(K, this, this, list));
        this.f24847x = list;
    }

    public void D(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24846w = i10;
    }

    public void E(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24844u = i10;
    }

    public void F(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24845v = i10;
    }

    public void G(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24841z, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24842s = j10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24842s = com.coremedia.iso.g.l(byteBuffer);
        long jL = com.coremedia.iso.g.l(byteBuffer);
        this.f24843t = (int) (jL >> 6);
        this.f24844u = (((int) (63 & jL)) >> 4) + 1;
        this.f24845v = (((int) (12 & jL)) >> 2) + 1;
        this.f24846w = ((int) (jL & 3)) + 1;
        long jL2 = com.coremedia.iso.g.l(byteBuffer);
        this.f24847x = new ArrayList();
        for (int i10 = 0; i10 < jL2; i10++) {
            a aVar = new a();
            if (getVersion() == 1) {
                aVar.f24848a = com.coremedia.iso.g.o(byteBuffer);
                aVar.f24849b = com.coremedia.iso.g.o(byteBuffer);
            } else {
                aVar.f24848a = com.coremedia.iso.g.l(byteBuffer);
                aVar.f24849b = com.coremedia.iso.g.l(byteBuffer);
            }
            aVar.f24850c = com.coremedia.iso.h.a(byteBuffer, this.f24844u);
            aVar.f24851d = com.coremedia.iso.h.a(byteBuffer, this.f24845v);
            aVar.f24852e = com.coremedia.iso.h.a(byteBuffer, this.f24846w);
            this.f24847x.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f24842s);
        com.coremedia.iso.i.i(byteBuffer, ((long) (this.f24843t << 6)) | ((long) (((this.f24844u - 1) & 3) << 4)) | ((long) (((this.f24845v - 1) & 3) << 2)) | ((long) ((this.f24846w - 1) & 3)));
        com.coremedia.iso.i.i(byteBuffer, this.f24847x.size());
        for (a aVar : this.f24847x) {
            if (getVersion() == 1) {
                com.coremedia.iso.i.l(byteBuffer, aVar.f24848a);
                com.coremedia.iso.i.l(byteBuffer, aVar.f24849b);
            } else {
                com.coremedia.iso.i.i(byteBuffer, aVar.f24848a);
                com.coremedia.iso.i.i(byteBuffer, aVar.f24849b);
            }
            com.coremedia.iso.j.a(aVar.f24850c, byteBuffer, this.f24844u);
            com.coremedia.iso.j.a(aVar.f24851d, byteBuffer, this.f24845v);
            com.coremedia.iso.j.a(aVar.f24852e, byteBuffer, this.f24846w);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 16 + ((long) (getVersion() == 1 ? this.f24847x.size() * 16 : this.f24847x.size() * 8)) + ((long) (this.f24844u * this.f24847x.size())) + ((long) (this.f24845v * this.f24847x.size())) + ((long) (this.f24846w * this.f24847x.size()));
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return "TrackFragmentRandomAccessBox{trackId=" + this.f24842s + ", entries=" + this.f24847x + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return Collections.unmodifiableList(this.f24847x);
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f24846w;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f24844u;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f24845v;
    }

    public long z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f24847x.size();
    }
}
