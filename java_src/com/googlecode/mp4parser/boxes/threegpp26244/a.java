package com.googlecode.mp4parser.boxes.threegpp26244;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes5.dex */
public class a extends c {
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
    public static final String f33713y = "sidx";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33714z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    List<C0622a> f33715s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f33716t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    long f33717u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    long f33718v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    long f33719w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f33720x;

    /* JADX INFO: renamed from: com.googlecode.mp4parser.boxes.threegpp26244.a$a, reason: collision with other inner class name */
    public static class C0622a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        byte f33721a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f33722b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f33723c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        byte f33724d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        byte f33725e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f33726f;

        public C0622a() {
        }

        public byte a() {
            return this.f33721a;
        }

        public int b() {
            return this.f33722b;
        }

        public int c() {
            return this.f33726f;
        }

        public byte d() {
            return this.f33725e;
        }

        public byte e() {
            return this.f33724d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0622a c0622a = (C0622a) obj;
            return this.f33721a == c0622a.f33721a && this.f33722b == c0622a.f33722b && this.f33726f == c0622a.f33726f && this.f33725e == c0622a.f33725e && this.f33724d == c0622a.f33724d && this.f33723c == c0622a.f33723c;
        }

        public long f() {
            return this.f33723c;
        }

        public void g(byte b10) {
            this.f33721a = b10;
        }

        public void h(int i10) {
            this.f33722b = i10;
        }

        public int hashCode() {
            int i10 = ((this.f33721a * 31) + this.f33722b) * 31;
            long j10 = this.f33723c;
            return ((((((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f33724d) * 31) + this.f33725e) * 31) + this.f33726f;
        }

        public void i(int i10) {
            this.f33726f = i10;
        }

        public void j(byte b10) {
            this.f33725e = b10;
        }

        public void k(byte b10) {
            this.f33724d = b10;
        }

        public void l(long j10) {
            this.f33723c = j10;
        }

        public String toString() {
            return "Entry{referenceType=" + ((int) this.f33721a) + ", referencedSize=" + this.f33722b + ", subsegmentDuration=" + this.f33723c + ", startsWithSap=" + ((int) this.f33724d) + ", sapType=" + ((int) this.f33725e) + ", sapDeltaTime=" + this.f33726f + '}';
        }

        public C0622a(int i10, int i11, long j10, boolean z10, int i12, int i13) {
            this.f33721a = (byte) i10;
            this.f33722b = i11;
            this.f33723c = j10;
            this.f33724d = z10 ? (byte) 1 : (byte) 0;
            this.f33725e = (byte) i12;
            this.f33726f = i13;
        }
    }

    static {
        s();
    }

    public a() {
        super(f33713y);
        this.f33715s = new ArrayList();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("SegmentIndexBox.java", a.class);
        f33714z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "java.util.List"), 128);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "java.util.List", "entries", "", "void"), 132);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "int"), 168);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "int", "reserved", "", "void"), 172);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "java.lang.String"), MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReferenceId", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", MethodReflectParams.LONG), 136);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReferenceId", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", MethodReflectParams.LONG, "referenceId", "", "void"), 140);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTimeScale", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", MethodReflectParams.LONG), 144);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTimeScale", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", MethodReflectParams.LONG, "timeScale", "", "void"), 148);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEarliestPresentationTime", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", MethodReflectParams.LONG), 152);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEarliestPresentationTime", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", MethodReflectParams.LONG, "earliestPresentationTime", "", "void"), 156);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFirstOffset", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", MethodReflectParams.LONG), 160);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFirstOffset", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", MethodReflectParams.LONG, "firstOffset", "", "void"), 164);
    }

    public long A() {
        j.b().c(e.v(D, this, this));
        return this.f33717u;
    }

    public void B(long j10) {
        j.b().c(e.w(G, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f33718v = j10;
    }

    public void C(List<C0622a> list) {
        j.b().c(e.w(A, this, this, list));
        this.f33715s = list;
    }

    public void D(long j10) {
        j.b().c(e.w(I, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f33719w = j10;
    }

    public void E(long j10) {
        j.b().c(e.w(C, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f33716t = j10;
    }

    public void F(int i10) {
        j.b().c(e.w(K, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33720x = i10;
    }

    public void G(long j10) {
        j.b().c(e.w(E, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f33717u = j10;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33716t = g.l(byteBuffer);
        this.f33717u = g.l(byteBuffer);
        if (getVersion() == 0) {
            this.f33718v = g.l(byteBuffer);
            this.f33719w = g.l(byteBuffer);
        } else {
            this.f33718v = g.o(byteBuffer);
            this.f33719w = g.o(byteBuffer);
        }
        this.f33720x = g.i(byteBuffer);
        int i10 = g.i(byteBuffer);
        for (int i11 = 0; i11 < i10; i11++) {
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
            C0622a c0622a = new C0622a();
            c0622a.g((byte) cVar.c(1));
            c0622a.h(cVar.c(31));
            c0622a.l(g.l(byteBuffer));
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
            c0622a.k((byte) cVar2.c(1));
            c0622a.j((byte) cVar2.c(3));
            c0622a.i(cVar2.c(28));
            this.f33715s.add(c0622a);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.i(byteBuffer, this.f33716t);
        i.i(byteBuffer, this.f33717u);
        if (getVersion() == 0) {
            i.i(byteBuffer, this.f33718v);
            i.i(byteBuffer, this.f33719w);
        } else {
            i.l(byteBuffer, this.f33718v);
            i.l(byteBuffer, this.f33719w);
        }
        i.f(byteBuffer, this.f33720x);
        i.f(byteBuffer, this.f33715s.size());
        for (C0622a c0622a : this.f33715s) {
            d dVar = new d(byteBuffer);
            dVar.a(c0622a.a(), 1);
            dVar.a(c0622a.b(), 31);
            i.i(byteBuffer, c0622a.f());
            d dVar2 = new d(byteBuffer);
            dVar2.a(c0622a.e(), 1);
            dVar2.a(c0622a.d(), 3);
            dVar2.a(c0622a.c(), 28);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 12 + ((long) (getVersion() == 0 ? 8 : 16)) + 2 + 2 + ((long) (this.f33715s.size() * 12));
    }

    public String toString() {
        j.b().c(e.v(L, this, this));
        return "SegmentIndexBox{entries=" + this.f33715s + ", referenceId=" + this.f33716t + ", timeScale=" + this.f33717u + ", earliestPresentationTime=" + this.f33718v + ", firstOffset=" + this.f33719w + ", reserved=" + this.f33720x + '}';
    }

    public long v() {
        j.b().c(e.v(F, this, this));
        return this.f33718v;
    }

    public List<C0622a> w() {
        j.b().c(e.v(f33714z, this, this));
        return this.f33715s;
    }

    public long x() {
        j.b().c(e.v(H, this, this));
        return this.f33719w;
    }

    public long y() {
        j.b().c(e.v(B, this, this));
        return this.f33716t;
    }

    public int z() {
        j.b().c(e.v(J, this, this));
        return this.f33720x;
    }
}
