package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class b extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f24691v = "rdrf";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24692w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24693x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24694y = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f24695s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f24696t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f24697u;

    static {
        s();
    }

    public b() {
        super(f24691v);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleDataReferenceBox.java", b.class);
        f24692w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataReferenceSize", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox", "", "", "", MethodReflectParams.LONG), 63);
        f24693x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataReferenceType", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox", "", "", "", "java.lang.String"), 67);
        f24694y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataReference", "com.coremedia.iso.boxes.apple.AppleDataReferenceBox", "", "", "", "java.lang.String"), 71);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24696t = com.coremedia.iso.g.b(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f24695s = iA;
        this.f24697u = com.coremedia.iso.g.h(byteBuffer, iA);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.f.t(this.f24696t));
        i.i(byteBuffer, this.f24695s);
        byteBuffer.put(l.b(this.f24697u));
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f24695s + 12;
    }

    public String v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f24694y, this, this));
        return this.f24697u;
    }

    public long w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f24692w, this, this));
        return this.f24695s;
    }

    public String x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f24693x, this, this));
        return this.f24696t;
    }
}
