package com.coremedia.iso.boxes.fragment;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class j extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24826t = "tfdt";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24827u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24828v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24829w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f24830s;

    static {
        s();
    }

    public j() {
        super(f24826t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackFragmentBaseMediaDecodeTimeBox.java", j.class);
        f24827u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBaseMediaDecodeTime", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox", "", "", "", MethodReflectParams.LONG), 65);
        f24828v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBaseMediaDecodeTime", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox", MethodReflectParams.LONG, "baseMediaDecodeTime", "", "void"), 69);
        f24829w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox", "", "", "", "java.lang.String"), 74);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f24830s = com.coremedia.iso.g.o(byteBuffer);
        } else {
            this.f24830s = com.coremedia.iso.g.l(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, this.f24830s);
        } else {
            com.coremedia.iso.i.i(byteBuffer, this.f24830s);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return getVersion() == 0 ? 8 : 12;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24829w, this, this));
        return "TrackFragmentBaseMediaDecodeTimeBox{baseMediaDecodeTime=" + this.f24830s + '}';
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24827u, this, this));
        return this.f24830s;
    }

    public void w(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24828v, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24830s = j10;
    }
}
