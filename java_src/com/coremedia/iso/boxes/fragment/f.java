package com.coremedia.iso.boxes.fragment;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class f extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24796t = "mfro";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24797u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24798v = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f24799s;

    static {
        s();
    }

    public f() {
        super(f24796t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MovieFragmentRandomAccessOffsetBox.java", f.class);
        f24797u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMfraSize", "com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessOffsetBox", "", "", "", MethodReflectParams.LONG), 56);
        f24798v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMfraSize", "com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessOffsetBox", MethodReflectParams.LONG, "mfraSize", "", "void"), 60);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24799s = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f24799s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 8L;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24797u, this, this));
        return this.f24799s;
    }

    public void w(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24798v, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24799s = j10;
    }
}
