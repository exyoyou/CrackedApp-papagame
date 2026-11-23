package com.mp4parser.iso14496.part12;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f75561r = "btrt";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75562s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75563t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75564u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75565v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75566w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75567x = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f75568o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f75569p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f75570q;

    static {
        s();
    }

    public a() {
        super(f75561r);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("BitRateBox.java", a.class);
        f75562s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBufferSizeDb", "com.mp4parser.iso14496.part12.BitRateBox", "", "", "", MethodReflectParams.LONG), 74);
        f75563t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBufferSizeDb", "com.mp4parser.iso14496.part12.BitRateBox", MethodReflectParams.LONG, "bufferSizeDb", "", "void"), 82);
        f75564u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMaxBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "", "", "", MethodReflectParams.LONG), 90);
        f75565v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMaxBitrate", "com.mp4parser.iso14496.part12.BitRateBox", MethodReflectParams.LONG, "maxBitrate", "", "void"), 98);
        f75566w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAvgBitrate", "com.mp4parser.iso14496.part12.BitRateBox", "", "", "", MethodReflectParams.LONG), 106);
        f75567x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAvgBitrate", "com.mp4parser.iso14496.part12.BitRateBox", MethodReflectParams.LONG, "avgBitrate", "", "void"), 114);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f75568o = g.l(byteBuffer);
        this.f75569p = g.l(byteBuffer);
        this.f75570q = g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        i.i(byteBuffer, this.f75568o);
        i.i(byteBuffer, this.f75569p);
        i.i(byteBuffer, this.f75570q);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 12L;
    }

    public long t() {
        j.b().c(e.v(f75566w, this, this));
        return this.f75570q;
    }

    public long u() {
        j.b().c(e.v(f75562s, this, this));
        return this.f75568o;
    }

    public long v() {
        j.b().c(e.v(f75564u, this, this));
        return this.f75569p;
    }

    public void w(long j10) {
        j.b().c(e.w(f75567x, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75570q = j10;
    }

    public void x(long j10) {
        j.b().c(e.w(f75563t, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75568o = j10;
    }

    public void y(long j10) {
        j.b().c(e.w(f75565v, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75569p = j10;
    }
}
