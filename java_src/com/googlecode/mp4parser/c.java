package com.googlecode.mp4parser;

import com.coremedia.iso.boxes.v;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c extends a implements v {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33733q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33734r = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f33735o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f33736p;

    static {
        s();
    }

    protected c(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AbstractFullBox.java", c.class);
        f33733q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setVersion", "com.googlecode.mp4parser.AbstractFullBox", "int", "version", "", "void"), 51);
        f33734r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFlags", "com.googlecode.mp4parser.AbstractFullBox", "int", "flags", "", "void"), 64);
    }

    @DoNotParseDetail
    public int getFlags() {
        if (!this.f32809e) {
            o();
        }
        return this.f33736p;
    }

    @Override // com.coremedia.iso.boxes.v
    @DoNotParseDetail
    public int getVersion() {
        if (!this.f32809e) {
            o();
        }
        return this.f33735o;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setFlags(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33734r, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33736p = i10;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setVersion(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33733q, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33735o = i10;
    }

    protected final long t(ByteBuffer byteBuffer) {
        this.f33735o = com.coremedia.iso.g.p(byteBuffer);
        this.f33736p = com.coremedia.iso.g.k(byteBuffer);
        return 4L;
    }

    protected final void u(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f33735o);
        com.coremedia.iso.i.h(byteBuffer, this.f33736p);
    }

    protected c(String str, byte[] bArr) {
        super(str, bArr);
    }
}
