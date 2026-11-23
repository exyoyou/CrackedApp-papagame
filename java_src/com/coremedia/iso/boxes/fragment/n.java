package com.coremedia.iso.boxes.fragment;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class n extends com.googlecode.mp4parser.c {
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
    private static final /* synthetic */ org.aspectj.lang.c.b M = null;
    private static final /* synthetic */ org.aspectj.lang.c.b N = null;
    private static final /* synthetic */ org.aspectj.lang.c.b O = null;
    private static final /* synthetic */ org.aspectj.lang.c.b P = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f24853v = "trun";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24854w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24855x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24856y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24857z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f24858s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private g f24859t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private List<a> f24860u;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f24861a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f24862b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private g f24863c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f24864d;

        public a() {
        }

        public long i() {
            return this.f24864d;
        }

        public long j() {
            return this.f24861a;
        }

        public g k() {
            return this.f24863c;
        }

        public long l() {
            return this.f24862b;
        }

        public void m(int i10) {
            this.f24864d = i10;
        }

        public void n(long j10) {
            this.f24861a = j10;
        }

        public void o(g gVar) {
            this.f24863c = gVar;
        }

        public void p(long j10) {
            this.f24862b = j10;
        }

        public String toString() {
            return "Entry{duration=" + this.f24861a + ", size=" + this.f24862b + ", dlags=" + this.f24863c + ", compTimeOffset=" + this.f24864d + '}';
        }

        public a(long j10, long j11, g gVar, int i10) {
            this.f24861a = j10;
            this.f24862b = j11;
            this.f24863c = gVar;
            this.f24864d = i10;
        }
    }

    static {
        s();
    }

    public n() {
        super(f24853v);
        this.f24860u = new ArrayList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackRunBox.java", n.class);
        f24854w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.util.List"), 57);
        f24855x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "int", "dataOffset", "", "void"), 120);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 300);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "int"), 309);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 313);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "firstSampleFlags", "", "void"), 317);
        O = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.lang.String"), MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION);
        P = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "java.util.List", "entries", "", "void"), MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_AUDIO_POS);
        f24856y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleCompositionTimeOffsets", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "[J"), 129);
        f24857z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleCount", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", MethodReflectParams.LONG), 238);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isFirstSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 246);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 251);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 255);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 263);
    }

    public boolean A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return (getFlags() & 1) == 1;
    }

    public boolean B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return (getFlags() & 4) == 4;
    }

    public boolean C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return (getFlags() & 2048) == 2048;
    }

    public boolean D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return (getFlags() & 256) == 256;
    }

    public boolean E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return (getFlags() & 1024) == 1024;
    }

    public boolean F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return (getFlags() & 512) == 512;
    }

    public void G(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24855x, this, this, org.aspectj.runtime.internal.e.k(i10)));
        if (i10 == -1) {
            setFlags(getFlags() & 16777214);
        } else {
            setFlags(getFlags() | 1);
        }
        this.f24858s = i10;
    }

    public void H(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.a(z10)));
        if (z10) {
            setFlags(getFlags() | 1);
        } else {
            setFlags(getFlags() & 16777214);
        }
    }

    public void I(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, list));
        this.f24860u = list;
    }

    public void J(g gVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(N, this, this, gVar));
        if (gVar == null) {
            setFlags(getFlags() & 16777211);
        } else {
            setFlags(getFlags() | 4);
        }
        this.f24859t = gVar;
    }

    public void K(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(K, this, this, org.aspectj.runtime.internal.e.a(z10)));
        if (z10) {
            setFlags(getFlags() | 2048);
        } else {
            setFlags(getFlags() & 16775167);
        }
    }

    public void L(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.a(z10)));
        if (z10) {
            setFlags(getFlags() | 256);
        } else {
            setFlags(getFlags() & 16776959);
        }
    }

    public void M(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.a(z10)));
        if (z10) {
            setFlags(getFlags() | 1024);
        } else {
            setFlags(getFlags() & 16776191);
        }
    }

    public void N(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.a(z10)));
        if (z10) {
            setFlags(getFlags() | 512);
        } else {
            setFlags(getFlags() & 16776703);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        long jL = com.coremedia.iso.g.l(byteBuffer);
        if ((getFlags() & 1) == 1) {
            this.f24858s = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        } else {
            this.f24858s = -1;
        }
        if ((getFlags() & 4) == 4) {
            this.f24859t = new g(byteBuffer);
        }
        for (int i10 = 0; i10 < jL; i10++) {
            a aVar = new a();
            if ((getFlags() & 256) == 256) {
                aVar.f24861a = com.coremedia.iso.g.l(byteBuffer);
            }
            if ((getFlags() & 512) == 512) {
                aVar.f24862b = com.coremedia.iso.g.l(byteBuffer);
            }
            if ((getFlags() & 1024) == 1024) {
                aVar.f24863c = new g(byteBuffer);
            }
            if ((getFlags() & 2048) == 2048) {
                aVar.f24864d = byteBuffer.getInt();
            }
            this.f24860u.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f24860u.size());
        int flags = getFlags();
        if ((flags & 1) == 1) {
            com.coremedia.iso.i.i(byteBuffer, this.f24858s);
        }
        if ((flags & 4) == 4) {
            this.f24859t.a(byteBuffer);
        }
        for (a aVar : this.f24860u) {
            if ((flags & 256) == 256) {
                com.coremedia.iso.i.i(byteBuffer, aVar.f24861a);
            }
            if ((flags & 512) == 512) {
                com.coremedia.iso.i.i(byteBuffer, aVar.f24862b);
            }
            if ((flags & 1024) == 1024) {
                aVar.f24863c.a(byteBuffer);
            }
            if ((flags & 2048) == 2048) {
                if (getVersion() == 0) {
                    com.coremedia.iso.i.i(byteBuffer, aVar.f24864d);
                } else {
                    byteBuffer.putInt((int) aVar.f24864d);
                }
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        int flags = getFlags();
        long j10 = (flags & 1) == 1 ? 12L : 8L;
        if ((flags & 4) == 4) {
            j10 += 4;
        }
        long j11 = (flags & 256) == 256 ? 4L : 0L;
        if ((flags & 512) == 512) {
            j11 += 4;
        }
        if ((flags & 1024) == 1024) {
            j11 += 4;
        }
        if ((flags & 2048) == 2048) {
            j11 += 4;
        }
        return j10 + (j11 * ((long) this.f24860u.size()));
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(O, this, this));
        return "TrackRunBox{sampleCount=" + this.f24860u.size() + ", dataOffset=" + this.f24858s + ", dataOffsetPresent=" + A() + ", sampleSizePresent=" + F() + ", sampleDurationPresent=" + D() + ", sampleFlagsPresentPresent=" + E() + ", sampleCompositionTimeOffsetPresent=" + C() + ", firstSampleFlags=" + this.f24859t + '}';
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f24858s;
    }

    public List<a> w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24854w, this, this));
        return this.f24860u;
    }

    public g x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f24859t;
    }

    public long[] y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24856y, this, this));
        if (!C()) {
            return null;
        }
        int size = this.f24860u.size();
        long[] jArr = new long[size];
        for (int i10 = 0; i10 < size; i10++) {
            jArr[i10] = this.f24860u.get(i10).i();
        }
        return jArr;
    }

    public long z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24857z, this, this));
        return this.f24860u.size();
    }
}
