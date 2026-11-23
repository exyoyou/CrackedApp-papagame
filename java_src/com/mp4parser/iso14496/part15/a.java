package com.mp4parser.iso14496.part15;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends com.googlecode.mp4parser.a {
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
    private static final /* synthetic */ org.aspectj.lang.c.b Q = null;
    private static final /* synthetic */ org.aspectj.lang.c.b R = null;
    private static final /* synthetic */ org.aspectj.lang.c.b S = null;
    private static final /* synthetic */ org.aspectj.lang.c.b T = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f75587p = "avcC";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75588q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75589r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75590s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75591t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75592u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75593v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75594w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75595x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75596y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75597z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public b f75598o;

    static {
        s();
    }

    public a() {
        super(f75587p);
        this.f75598o = new b();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AvcConfigurationBox.java", a.class);
        f75588q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getConfigurationVersion", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 44);
        f75589r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAvcProfileIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 48);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAvcLevelIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "avcLevelIndication", "", "void"), 84);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLengthSizeMinusOne", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "lengthSizeMinusOne", "", "void"), 88);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSequenceParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "sequenceParameterSets", "", "void"), 92);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPictureParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "pictureParameterSets", "", "void"), 96);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getChromaFormat", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 100);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setChromaFormat", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "chromaFormat", "", "void"), 104);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 108);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "bitDepthLumaMinus8", "", "void"), 112);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 116);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "bitDepthChromaMinus8", "", "void"), 120);
        f75590s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getProfileCompatibility", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 52);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSequenceParameterSetExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.util.List"), 124);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSequenceParameterSetExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "sequenceParameterSetExts", "", "void"), 128);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "hasExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "boolean"), 132);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setHasExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "boolean", "hasExts", "", "void"), 136);
        O = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getContentSize", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", MethodReflectParams.LONG), 147);
        P = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getContent", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 153);
        Q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSPS", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "[Ljava.lang.String;"), 158);
        R = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPPS", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "[Ljava.lang.String;"), 162);
        S = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getavcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "com.mp4parser.iso14496.part15.AvcDecoderConfigurationRecord"), 167);
        T = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.lang.String"), 172);
        f75591t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAvcLevelIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 56);
        f75592u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLengthSizeMinusOne", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 60);
        f75593v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSequenceParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.util.List"), 64);
        f75594w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPictureParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.util.List"), 68);
        f75595x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setConfigurationVersion", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "configurationVersion", "", "void"), 72);
        f75596y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAvcProfileIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "avcProfileIndication", "", "void"), 76);
        f75597z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setProfileCompatibility", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "profileCompatibility", "", "void"), 80);
    }

    public String[] A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(R, this, this));
        return this.f75598o.c();
    }

    public List<byte[]> B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75594w, this, this));
        return Collections.unmodifiableList(this.f75598o.f75605g);
    }

    public int C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75590s, this, this));
        return this.f75598o.f75601c;
    }

    public String[] D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(Q, this, this));
        return this.f75598o.e();
    }

    public List<byte[]> E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f75598o.f75610l;
    }

    public List<byte[]> F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75593v, this, this));
        return Collections.unmodifiableList(this.f75598o.f75604f);
    }

    public b G() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(S, this, this));
        return this.f75598o;
    }

    public boolean H() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f75598o.f75606h;
    }

    public void I(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75598o.f75602d = i10;
    }

    public void J(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75596y, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75598o.f75600b = i10;
    }

    public void K(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75598o.f75609k = i10;
    }

    public void L(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75598o.f75608j = i10;
    }

    public void M(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75598o.f75607i = i10;
    }

    public void N(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75595x, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75598o.f75599a = i10;
    }

    public void O(boolean z10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(N, this, this, org.aspectj.runtime.internal.e.a(z10)));
        this.f75598o.f75606h = z10;
    }

    public void P(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75598o.f75603e = i10;
    }

    public void Q(List<byte[]> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, list));
        this.f75598o.f75605g = list;
    }

    public void R(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75597z, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75598o.f75601c = i10;
    }

    public void S(List<byte[]> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(L, this, this, list));
        this.f75598o.f75610l = list;
    }

    public void T(List<byte[]> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, list));
        this.f75598o.f75604f = list;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f75598o = new b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public void c(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, byteBuffer));
        this.f75598o.a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public long g() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(O, this, this));
        return this.f75598o.b();
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75591t, this, this));
        return this.f75598o.f75602d;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(T, this, this));
        return "AvcConfigurationBox{avcDecoderConfigurationRecord=" + this.f75598o + '}';
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75589r, this, this));
        return this.f75598o.f75600b;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f75598o.f75609k;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f75598o.f75608j;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f75598o.f75607i;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75588q, this, this));
        return this.f75598o.f75599a;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75592u, this, this));
        return this.f75598o.f75603e;
    }
}
