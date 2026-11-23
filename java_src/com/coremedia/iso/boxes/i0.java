package com.coremedia.iso.boxes;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
public class i0 extends com.googlecode.mp4parser.c {
    public static final String G = "mvhd";
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;
    private static final /* synthetic */ org.aspectj.lang.c.b J = null;
    private static final /* synthetic */ org.aspectj.lang.c.b K = null;
    private static final /* synthetic */ org.aspectj.lang.c.b L = null;
    private static final /* synthetic */ org.aspectj.lang.c.b L1 = null;
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
    private static final /* synthetic */ org.aspectj.lang.c.b f24908b1 = null;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24909f1 = null;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24910i1 = null;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24911l1 = null;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24912p0 = null;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24913p1 = null;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24914q1 = null;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24915r1 = null;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24916v1 = null;
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Date f24917s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Date f24918t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f24919u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f24920v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private double f24921w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f24922x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.googlecode.mp4parser.util.l f24923y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f24924z;

    static {
        s();
    }

    public i0() {
        super(G);
        this.f24921w = 1.0d;
        this.f24922x = 1.0f;
        this.f24923y = com.googlecode.mp4parser.util.l.f33794j;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MovieHeaderBox.java", i0.class);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 63);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 67);
        R = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "modificationTime", "", "void"), 203);
        S = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", MethodReflectParams.LONG, "timescale", "", "void"), 211);
        T = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDuration", "com.coremedia.iso.boxes.MovieHeaderBox", MethodReflectParams.LONG, "duration", "", "void"), 215);
        U = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setRate", "com.coremedia.iso.boxes.MovieHeaderBox", MethodReflectParams.DOUBLE, "rate", "", "void"), 222);
        V = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "float", "volume", "", "void"), 226);
        W = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT);
        X = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", MethodReflectParams.LONG, "nextTrackId", "", "void"), 234);
        Y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 238);
        Z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewTime", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE);
        f24912p0 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 246);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", MethodReflectParams.LONG), 71);
        f24908b1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewDuration", "", "void"), 250);
        f24909f1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 254);
        f24910i1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "posterTime", "", "void"), 258);
        f24911l1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC);
        f24913p1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionTime", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME);
        f24914q1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 270);
        f24915r1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionDuration", "", "void"), 274);
        f24916v1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC);
        L1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "currentTime", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", MethodReflectParams.LONG), 75);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getRate", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", MethodReflectParams.DOUBLE), 79);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "float"), 83);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 87);
        O = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", MethodReflectParams.LONG), 91);
        P = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.lang.String"), 139);
        Q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "creationTime", "", "void"), 195);
    }

    public long A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(O, this, this));
        return this.f24924z;
    }

    public int B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24909f1, this, this));
        return this.C;
    }

    public int C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24912p0, this, this));
        return this.B;
    }

    public int D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(Y, this, this));
        return this.A;
    }

    public double E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f24921w;
    }

    public int F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24914q1, this, this));
        return this.E;
    }

    public int G() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24911l1, this, this));
        return this.D;
    }

    public long H() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f24919u;
    }

    public float I() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f24922x;
    }

    public void J(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(Q, this, this, date));
        this.f24917s = date;
        if (com.googlecode.mp4parser.util.e.a(date) >= 4294967296L) {
            setVersion(1);
        }
    }

    public void K(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(L1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.F = i10;
    }

    public void L(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(T, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24920v = j10;
        if (j10 >= 4294967296L) {
            setVersion(1);
        }
    }

    public void M(com.googlecode.mp4parser.util.l lVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(W, this, this, lVar));
        this.f24923y = lVar;
    }

    public void N(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(R, this, this, date));
        this.f24918t = date;
        if (com.googlecode.mp4parser.util.e.a(date) >= 4294967296L) {
            setVersion(1);
        }
    }

    public void O(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(X, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24924z = j10;
    }

    public void P(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24910i1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.C = i10;
    }

    public void Q(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24908b1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.B = i10;
    }

    public void R(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(Z, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.A = i10;
    }

    public void S(double d10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(U, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f24921w = d10;
    }

    public void T(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24915r1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.E = i10;
    }

    public void U(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24913p1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.D = i10;
    }

    public void V(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(S, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24919u = j10;
    }

    public void W(float f10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(V, this, this, org.aspectj.runtime.internal.e.i(f10)));
        this.f24922x = f10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f24917s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f24918t = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f24919u = com.coremedia.iso.g.l(byteBuffer);
            this.f24920v = com.coremedia.iso.g.o(byteBuffer);
        } else {
            this.f24917s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f24918t = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f24919u = com.coremedia.iso.g.l(byteBuffer);
            this.f24920v = com.coremedia.iso.g.l(byteBuffer);
        }
        this.f24921w = com.coremedia.iso.g.d(byteBuffer);
        this.f24922x = com.coremedia.iso.g.e(byteBuffer);
        com.coremedia.iso.g.i(byteBuffer);
        com.coremedia.iso.g.l(byteBuffer);
        com.coremedia.iso.g.l(byteBuffer);
        this.f24923y = com.googlecode.mp4parser.util.l.a(byteBuffer);
        this.A = byteBuffer.getInt();
        this.B = byteBuffer.getInt();
        this.C = byteBuffer.getInt();
        this.D = byteBuffer.getInt();
        this.E = byteBuffer.getInt();
        this.F = byteBuffer.getInt();
        this.f24924z = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24917s));
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24918t));
            com.coremedia.iso.i.i(byteBuffer, this.f24919u);
            com.coremedia.iso.i.l(byteBuffer, this.f24920v);
        } else {
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24917s));
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24918t));
            com.coremedia.iso.i.i(byteBuffer, this.f24919u);
            com.coremedia.iso.i.i(byteBuffer, this.f24920v);
        }
        com.coremedia.iso.i.b(byteBuffer, this.f24921w);
        com.coremedia.iso.i.c(byteBuffer, this.f24922x);
        com.coremedia.iso.i.f(byteBuffer, 0);
        com.coremedia.iso.i.i(byteBuffer, 0L);
        com.coremedia.iso.i.i(byteBuffer, 0L);
        this.f24923y.c(byteBuffer);
        byteBuffer.putInt(this.A);
        byteBuffer.putInt(this.B);
        byteBuffer.putInt(this.C);
        byteBuffer.putInt(this.D);
        byteBuffer.putInt(this.E);
        byteBuffer.putInt(this.F);
        com.coremedia.iso.i.i(byteBuffer, this.f24924z);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (getVersion() == 1 ? 32L : 20L) + 80;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(P, this, this));
        return "MovieHeaderBox[creationTime=" + v() + ";modificationTime=" + z() + ";timescale=" + H() + ";duration=" + x() + ";rate=" + E() + ";volume=" + I() + ";matrix=" + this.f24923y + ";nextTrackId=" + A() + "]";
    }

    public Date v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f24917s;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24916v1, this, this));
        return this.F;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f24920v;
    }

    public com.googlecode.mp4parser.util.l y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(N, this, this));
        return this.f24923y;
    }

    public Date z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f24918t;
    }
}
