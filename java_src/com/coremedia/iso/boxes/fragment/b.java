package com.coremedia.iso.boxes.fragment;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class b extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24785t = "mehd";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24786u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24787v = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f24788s;

    static {
        s();
    }

    public b() {
        super(f24785t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MovieExtendsHeaderBox.java", b.class);
        f24786u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFragmentDuration", "com.coremedia.iso.boxes.fragment.MovieExtendsHeaderBox", "", "", "", MethodReflectParams.LONG), 65);
        f24787v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFragmentDuration", "com.coremedia.iso.boxes.fragment.MovieExtendsHeaderBox", MethodReflectParams.LONG, "fragmentDuration", "", "void"), 69);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24788s = getVersion() == 1 ? com.coremedia.iso.g.o(byteBuffer) : com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, this.f24788s);
        } else {
            com.coremedia.iso.i.i(byteBuffer, this.f24788s);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return getVersion() == 1 ? 12 : 8;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24786u, this, this));
        return this.f24788s;
    }

    public void w(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24787v, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24788s = j10;
    }
}
