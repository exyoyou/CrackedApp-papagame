package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class q0 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f25028t = "yrrc";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25029u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25030v = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f25031s;

    static {
        s();
    }

    public q0() {
        super(f25028t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("RecordingYearBox.java", q0.class);
        f25029u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getRecordingYear", "com.coremedia.iso.boxes.RecordingYearBox", "", "", "", "int"), 42);
        f25030v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setRecordingYear", "com.coremedia.iso.boxes.RecordingYearBox", "int", "recordingYear", "", "void"), 46);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25031s = com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.f(byteBuffer, this.f25031s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 6L;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25029u, this, this));
        return this.f25031s;
    }

    public void w(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25030v, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f25031s = i10;
    }
}
