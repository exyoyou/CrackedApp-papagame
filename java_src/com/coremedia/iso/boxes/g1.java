package com.coremedia.iso.boxes;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
public class g1 extends com.googlecode.mp4parser.c {
    public static final String C = "tkhd";
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;
    private static final /* synthetic */ org.aspectj.lang.c.b J = null;
    private static final /* synthetic */ org.aspectj.lang.c.b K = null;
    private static final /* synthetic */ org.aspectj.lang.c.b L = null;
    private static final /* synthetic */ org.aspectj.lang.c.b M = null;
    private static final /* synthetic */ org.aspectj.lang.c.b N = null;
    private static final /* synthetic */ org.aspectj.lang.c.b O = null;
    private static final /* synthetic */ org.aspectj.lang.c.b P = null;
    private static final /* synthetic */ org.aspectj.lang.c.b Q = null;
    private static final /* synthetic */ org.aspectj.lang.c.b R = null;
    private static final /* synthetic */ org.aspectj.lang.c.b S = null;
    private static final /* synthetic */ org.aspectj.lang.c.b T = null;
    private static final /* synthetic */ org.aspectj.lang.c.b U = null;
    private static final /* synthetic */ org.aspectj.lang.c.b V = null;
    private static final /* synthetic */ org.aspectj.lang.c.b W = null;
    private static final /* synthetic */ org.aspectj.lang.c.b X = null;
    private static final /* synthetic */ org.aspectj.lang.c.b Y = null;
    private static final /* synthetic */ org.aspectj.lang.c.b Z = null;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24876b1 = null;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24877f1 = null;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24878i1 = null;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24879l1 = null;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24880p0 = null;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24881p1 = null;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24882q1 = null;
    private double A;
    private double B;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Date f24883s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Date f24884t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f24885u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f24886v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f24887w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f24888x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f24889y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.googlecode.mp4parser.util.l f24890z;

    static {
        s();
    }

    public g1() {
        super(C);
        this.f24890z = com.googlecode.mp4parser.util.l.f33794j;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackHeaderBox.java", g1.class);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 60);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 64);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getContent", "com.coremedia.iso.boxes.TrackHeaderBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 142);
        O = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.lang.String"), 170);
        P = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "creationTime", "", "void"), 196);
        Q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "modificationTime", "", "void"), 203);
        R = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", MethodReflectParams.LONG, "trackId", "", "void"), 211);
        S = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDuration", "com.coremedia.iso.boxes.TrackHeaderBox", MethodReflectParams.LONG, "duration", "", "void"), 215);
        T = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "layer", "", "void"), 222);
        U = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "alternateGroup", "", "void"), 226);
        V = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "float", "volume", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT);
        W = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), 234);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", MethodReflectParams.LONG), 68);
        X = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setWidth", "com.coremedia.iso.boxes.TrackHeaderBox", MethodReflectParams.DOUBLE, "width", "", "void"), 238);
        Y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setHeight", "com.coremedia.iso.boxes.TrackHeaderBox", MethodReflectParams.DOUBLE, "height", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE);
        Z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 247);
        f24880p0 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 251);
        f24876b1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), 255);
        f24877f1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "boolean"), MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME);
        f24878i1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "enabled", "", "void"), 263);
        f24879l1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inMovie", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME);
        f24881p1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPreview", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS);
        f24882q1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPoster", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", MethodReflectParams.LONG), 72);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 76);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 80);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "float"), 84);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 88);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", MethodReflectParams.DOUBLE), 92);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", MethodReflectParams.DOUBLE), 96);
    }

    public com.googlecode.mp4parser.util.l A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f24890z;
    }

    public Date B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f24884t;
    }

    public long C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f24885u;
    }

    public float D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f24889y;
    }

    public double E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.A;
    }

    public boolean F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(Z, this, this));
        return (getFlags() & 1) > 0;
    }

    public boolean G() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24880p0, this, this));
        return (getFlags() & 2) > 0;
    }

    public boolean H() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24877f1, this, this));
        return (getFlags() & 8) > 0;
    }

    public boolean I() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24876b1, this, this));
        return (getFlags() & 4) > 0;
    }

    public void J(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(U, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24888x = i10;
    }

    public void K(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, date));
        this.f24883s = date;
        if (com.googlecode.mp4parser.util.e.a(date) >= 4294967296L) {
            setVersion(1);
        }
    }

    public void L(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(S, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24886v = j10;
        if (j10 >= 4294967296L) {
            setFlags(1);
        }
    }

    public void M(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24878i1, this, this, org.aspectj.runtime.internal.e.a(z10)));
        if (z10) {
            setFlags(getFlags() | 1);
        } else {
            setFlags(getFlags() & (-2));
        }
    }

    public void N(double d10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(Y, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.B = d10;
    }

    public void O(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24879l1, this, this, org.aspectj.runtime.internal.e.a(z10)));
        if (z10) {
            setFlags(getFlags() | 2);
        } else {
            setFlags(getFlags() & (-3));
        }
    }

    public void P(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24882q1, this, this, org.aspectj.runtime.internal.e.a(z10)));
        if (z10) {
            setFlags(getFlags() | 8);
        } else {
            setFlags(getFlags() & (-9));
        }
    }

    public void Q(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24881p1, this, this, org.aspectj.runtime.internal.e.a(z10)));
        if (z10) {
            setFlags(getFlags() | 4);
        } else {
            setFlags(getFlags() & (-5));
        }
    }

    public void R(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(T, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24887w = i10;
    }

    public void S(com.googlecode.mp4parser.util.l lVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(W, this, this, lVar));
        this.f24890z = lVar;
    }

    public void T(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(Q, this, this, date));
        this.f24884t = date;
        if (com.googlecode.mp4parser.util.e.a(date) >= 4294967296L) {
            setVersion(1);
        }
    }

    public void U(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(R, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24885u = j10;
    }

    public void V(float f10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(V, this, this, org.aspectj.runtime.internal.e.i(f10)));
        this.f24889y = f10;
    }

    public void W(double d10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(X, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.A = d10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f24883s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f24884t = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f24885u = com.coremedia.iso.g.l(byteBuffer);
            com.coremedia.iso.g.l(byteBuffer);
            long j10 = byteBuffer.getLong();
            this.f24886v = j10;
            if (j10 < -1) {
                throw new RuntimeException("The tracks duration is bigger than Long.MAX_VALUE");
            }
        } else {
            this.f24883s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f24884t = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f24885u = com.coremedia.iso.g.l(byteBuffer);
            com.coremedia.iso.g.l(byteBuffer);
            this.f24886v = com.coremedia.iso.g.l(byteBuffer);
        }
        com.coremedia.iso.g.l(byteBuffer);
        com.coremedia.iso.g.l(byteBuffer);
        this.f24887w = com.coremedia.iso.g.i(byteBuffer);
        this.f24888x = com.coremedia.iso.g.i(byteBuffer);
        this.f24889y = com.coremedia.iso.g.e(byteBuffer);
        com.coremedia.iso.g.i(byteBuffer);
        this.f24890z = com.googlecode.mp4parser.util.l.a(byteBuffer);
        this.A = com.coremedia.iso.g.d(byteBuffer);
        this.B = com.coremedia.iso.g.d(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public void c(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(N, this, this, byteBuffer));
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24883s));
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24884t));
            com.coremedia.iso.i.i(byteBuffer, this.f24885u);
            com.coremedia.iso.i.i(byteBuffer, 0L);
            com.coremedia.iso.i.l(byteBuffer, this.f24886v);
        } else {
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24883s));
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24884t));
            com.coremedia.iso.i.i(byteBuffer, this.f24885u);
            com.coremedia.iso.i.i(byteBuffer, 0L);
            com.coremedia.iso.i.i(byteBuffer, this.f24886v);
        }
        com.coremedia.iso.i.i(byteBuffer, 0L);
        com.coremedia.iso.i.i(byteBuffer, 0L);
        com.coremedia.iso.i.f(byteBuffer, this.f24887w);
        com.coremedia.iso.i.f(byteBuffer, this.f24888x);
        com.coremedia.iso.i.c(byteBuffer, this.f24889y);
        com.coremedia.iso.i.f(byteBuffer, 0);
        this.f24890z.c(byteBuffer);
        com.coremedia.iso.i.b(byteBuffer, this.A);
        com.coremedia.iso.i.b(byteBuffer, this.B);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (getVersion() == 1 ? 36L : 24L) + 60;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(O, this, this));
        return "TrackHeaderBox[creationTime=" + w() + ";modificationTime=" + B() + ";trackId=" + C() + ";duration=" + x() + ";layer=" + z() + ";alternateGroup=" + v() + ";volume=" + D() + ";matrix=" + this.f24890z + ";width=" + E() + ";height=" + y() + "]";
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f24888x;
    }

    public Date w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f24883s;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f24886v;
    }

    public double y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.B;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f24887w;
    }
}
