package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class a extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24688t = "rmdr";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24689u = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f24690s;

    static {
        s();
    }

    public a() {
        super(f24688t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleDataRateBox.java", a.class);
        f24689u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataRate", "com.coremedia.iso.boxes.apple.AppleDataRateBox", "", "", "", MethodReflectParams.LONG), 53);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24690s = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.i(byteBuffer, this.f24690s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 8L;
    }

    public long v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f24689u, this, this));
        return this.f24690s;
    }
}
