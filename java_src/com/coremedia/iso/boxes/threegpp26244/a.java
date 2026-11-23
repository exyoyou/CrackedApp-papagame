package com.coremedia.iso.boxes.threegpp26244;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.j;
import com.haima.hmcp.widgets.BaseVideoView;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes9.dex */
public class a extends c {
    public static final String A = "loci";
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

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f25135s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f25136t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f25137u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private double f25138v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private double f25139w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private double f25140x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f25141y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f25142z;

    static {
        s();
    }

    public a() {
        super(A);
        this.f25136t = "";
        this.f25141y = "";
        this.f25142z = "";
    }

    private static /* synthetic */ void s() {
        e eVar = new e("LocationInformationBox.java", a.class);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 30);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "language", "", "void"), 34);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAltitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", MethodReflectParams.DOUBLE), 70);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAltitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", MethodReflectParams.DOUBLE, BaseVideoView.GPS_ALTITUDE, "", "void"), 74);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAstronomicalBody", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 78);
        O = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAstronomicalBody", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "astronomicalBody", "", "void"), 82);
        P = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAdditionalNotes", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 86);
        Q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAdditionalNotes", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "additionalNotes", "", "void"), 90);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getName", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 38);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setName", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "name", "", "void"), 42);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getRole", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "int"), 46);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setRole", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "int", "role", "", "void"), 50);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLongitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", MethodReflectParams.DOUBLE), 54);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLongitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", MethodReflectParams.DOUBLE, BaseVideoView.GPS_LONGITUDE, "", "void"), 58);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLatitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", MethodReflectParams.DOUBLE), 62);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLatitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", MethodReflectParams.DOUBLE, BaseVideoView.GPS_LATITUDE, "", "void"), 66);
    }

    public double A() {
        j.b().c(e.v(H, this, this));
        return this.f25138v;
    }

    public String B() {
        j.b().c(e.v(D, this, this));
        return this.f25136t;
    }

    public int C() {
        j.b().c(e.v(F, this, this));
        return this.f25137u;
    }

    public void D(String str) {
        j.b().c(e.w(Q, this, this, str));
        this.f25142z = str;
    }

    public void E(double d10) {
        j.b().c(e.w(M, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f25140x = d10;
    }

    public void F(String str) {
        j.b().c(e.w(O, this, this, str));
        this.f25141y = str;
    }

    public void G(String str) {
        j.b().c(e.w(C, this, this, str));
        this.f25135s = str;
    }

    public void H(double d10) {
        j.b().c(e.w(K, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f25139w = d10;
    }

    public void I(double d10) {
        j.b().c(e.w(I, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f25138v = d10;
    }

    public void J(String str) {
        j.b().c(e.w(E, this, this, str));
        this.f25136t = str;
    }

    public void K(int i10) {
        j.b().c(e.w(G, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f25137u = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25135s = g.f(byteBuffer);
        this.f25136t = g.g(byteBuffer);
        this.f25137u = g.p(byteBuffer);
        this.f25138v = g.d(byteBuffer);
        this.f25139w = g.d(byteBuffer);
        this.f25140x = g.d(byteBuffer);
        this.f25141y = g.g(byteBuffer);
        this.f25142z = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.d(byteBuffer, this.f25135s);
        byteBuffer.put(l.b(this.f25136t));
        byteBuffer.put((byte) 0);
        i.m(byteBuffer, this.f25137u);
        i.b(byteBuffer, this.f25138v);
        i.b(byteBuffer, this.f25139w);
        i.b(byteBuffer, this.f25140x);
        byteBuffer.put(l.b(this.f25141y));
        byteBuffer.put((byte) 0);
        byteBuffer.put(l.b(this.f25142z));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return l.b(this.f25136t).length + 22 + l.b(this.f25141y).length + l.b(this.f25142z).length;
    }

    public String v() {
        j.b().c(e.v(P, this, this));
        return this.f25142z;
    }

    public double w() {
        j.b().c(e.v(L, this, this));
        return this.f25140x;
    }

    public String x() {
        j.b().c(e.v(N, this, this));
        return this.f25141y;
    }

    public String y() {
        j.b().c(e.v(B, this, this));
        return this.f25135s;
    }

    public double z() {
        j.b().c(e.v(J, this, this));
        return this.f25139w;
    }
}
