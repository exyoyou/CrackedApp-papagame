package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.boxes.k1;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class e extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33701u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33702v = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f33703s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f33704t;

    static {
        s();
    }

    public e() {
        super(k1.f24950p);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TfxdBox.java", e.class);
        f33701u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFragmentAbsoluteTime", "com.googlecode.mp4parser.boxes.piff.TfxdBox", "", "", "", MethodReflectParams.LONG), 79);
        f33702v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFragmentAbsoluteDuration", "com.googlecode.mp4parser.boxes.piff.TfxdBox", "", "", "", MethodReflectParams.LONG), 83);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f33703s = g.o(byteBuffer);
            this.f33704t = g.o(byteBuffer);
        } else {
            this.f33703s = g.l(byteBuffer);
            this.f33704t = g.l(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            i.l(byteBuffer, this.f33703s);
            i.l(byteBuffer, this.f33704t);
        } else {
            i.i(byteBuffer, this.f33703s);
            i.i(byteBuffer, this.f33704t);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return getVersion() == 1 ? 20 : 12;
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] l() {
        return new byte[]{109, BinaryMemcacheOpcodes.GAT, -101, 5, 66, -43, 68, -26, -128, -30, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.GAT, -81, -9, 87, -78};
    }

    public long v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33702v, this, this));
        return this.f33704t;
    }

    public long w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33701u, this, this));
        return this.f33703s;
    }
}
