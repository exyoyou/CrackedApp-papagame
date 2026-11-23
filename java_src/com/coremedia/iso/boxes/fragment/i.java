package com.coremedia.iso.boxes.fragment;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class i extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f24818x = "trex";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24819y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24820z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f24821s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f24822t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f24823u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f24824v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private g f24825w;

    static {
        s();
    }

    public i() {
        super(f24818x);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackExtendsBox.java", i.class);
        f24819y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", MethodReflectParams.LONG), 72);
        f24820z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", MethodReflectParams.LONG), 76);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "defaultSampleFlags", "", "void"), 112);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", MethodReflectParams.LONG), 80);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", MethodReflectParams.LONG), 84);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 88);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultSampleFlagsStr", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "java.lang.String"), 92);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", MethodReflectParams.LONG, "trackId", "", "void"), 96);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", MethodReflectParams.LONG, "defaultSampleDescriptionIndex", "", "void"), 100);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", MethodReflectParams.LONG, "defaultSampleDuration", "", "void"), 104);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", MethodReflectParams.LONG, "defaultSampleSize", "", "void"), 108);
    }

    public long A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24819y, this, this));
        return this.f24821s;
    }

    public void B(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24822t = j10;
    }

    public void C(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24823u = j10;
    }

    public void D(g gVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, gVar));
        this.f24825w = gVar;
    }

    public void E(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24824v = j10;
    }

    public void F(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24821s = j10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24821s = com.coremedia.iso.g.l(byteBuffer);
        this.f24822t = com.coremedia.iso.g.l(byteBuffer);
        this.f24823u = com.coremedia.iso.g.l(byteBuffer);
        this.f24824v = com.coremedia.iso.g.l(byteBuffer);
        this.f24825w = new g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f24821s);
        com.coremedia.iso.i.i(byteBuffer, this.f24822t);
        com.coremedia.iso.i.i(byteBuffer, this.f24823u);
        com.coremedia.iso.i.i(byteBuffer, this.f24824v);
        this.f24825w.a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 24L;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24820z, this, this));
        return this.f24822t;
    }

    public long w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f24823u;
    }

    public g x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f24825w;
    }

    public String y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f24825w.toString();
    }

    public long z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f24824v;
    }
}
