package com.mp4parser.iso23009.part1;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.j;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes2.dex */
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
    private static final /* synthetic */ org.aspectj.lang.c.b M = null;
    private static final /* synthetic */ org.aspectj.lang.c.b N = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f75775z = "emsg";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f75776s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    String f75777t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    long f75778u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    long f75779v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    long f75780w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    long f75781x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    byte[] f75782y;

    static {
        s();
    }

    public a() {
        super(f75775z);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("EventMessageBox.java", a.class);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSchemeIdUri", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "java.lang.String"), 59);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSchemeIdUri", "com.mp4parser.iso23009.part1.EventMessageBox", "java.lang.String", "schemeIdUri", "", "void"), 63);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getId", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", MethodReflectParams.LONG), 99);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setId", "com.mp4parser.iso23009.part1.EventMessageBox", MethodReflectParams.LONG, "id", "", "void"), 103);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMessageData", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "[B"), 107);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMessageData", "com.mp4parser.iso23009.part1.EventMessageBox", "[B", "messageData", "", "void"), 111);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getValue", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "java.lang.String"), 67);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setValue", "com.mp4parser.iso23009.part1.EventMessageBox", "java.lang.String", HmInputMappingContent.FIELD_VALUE, "", "void"), 71);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTimescale", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", MethodReflectParams.LONG), 75);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTimescale", "com.mp4parser.iso23009.part1.EventMessageBox", MethodReflectParams.LONG, "timescale", "", "void"), 79);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPresentationTimeDelta", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", MethodReflectParams.LONG), 83);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPresentationTimeDelta", "com.mp4parser.iso23009.part1.EventMessageBox", MethodReflectParams.LONG, "presentationTimeDelta", "", "void"), 87);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEventDuration", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", MethodReflectParams.LONG), 91);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEventDuration", "com.mp4parser.iso23009.part1.EventMessageBox", MethodReflectParams.LONG, "eventDuration", "", "void"), 95);
    }

    public long A() {
        j.b().c(e.v(E, this, this));
        return this.f75778u;
    }

    public String B() {
        j.b().c(e.v(C, this, this));
        return this.f75777t;
    }

    public void C(long j10) {
        j.b().c(e.w(J, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75780w = j10;
    }

    public void D(long j10) {
        j.b().c(e.w(L, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75781x = j10;
    }

    public void E(byte[] bArr) {
        j.b().c(e.w(N, this, this, bArr));
        this.f75782y = bArr;
    }

    public void F(long j10) {
        j.b().c(e.w(H, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75779v = j10;
    }

    public void G(String str) {
        j.b().c(e.w(B, this, this, str));
        this.f75776s = str;
    }

    public void H(long j10) {
        j.b().c(e.w(F, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75778u = j10;
    }

    public void I(String str) {
        j.b().c(e.w(D, this, this, str));
        this.f75777t = str;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f75776s = g.g(byteBuffer);
        this.f75777t = g.g(byteBuffer);
        this.f75778u = g.l(byteBuffer);
        this.f75779v = g.l(byteBuffer);
        this.f75780w = g.l(byteBuffer);
        this.f75781x = g.l(byteBuffer);
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f75782y = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.n(byteBuffer, this.f75776s);
        i.n(byteBuffer, this.f75777t);
        i.i(byteBuffer, this.f75778u);
        i.i(byteBuffer, this.f75779v);
        i.i(byteBuffer, this.f75780w);
        i.i(byteBuffer, this.f75781x);
        byteBuffer.put(this.f75782y);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return l.c(this.f75776s) + 22 + l.c(this.f75777t) + this.f75782y.length;
    }

    public long v() {
        j.b().c(e.v(I, this, this));
        return this.f75780w;
    }

    public long w() {
        j.b().c(e.v(K, this, this));
        return this.f75781x;
    }

    public byte[] x() {
        j.b().c(e.v(M, this, this));
        return this.f75782y;
    }

    public long y() {
        j.b().c(e.v(G, this, this));
        return this.f75779v;
    }

    public String z() {
        j.b().c(e.v(A, this, this));
        return this.f75776s;
    }
}
