package com.mp4parser.iso14496.part30;

import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class c extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f75717p = "vlab";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75718q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75719r = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    String f75720o;

    static {
        s();
    }

    public c() {
        super(f75717p);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("WebVTTSourceLabelBox.java", c.class);
        f75718q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSourceLabel", "com.mp4parser.iso14496.part30.WebVTTSourceLabelBox", "", "", "", "java.lang.String"), 37);
        f75719r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSourceLabel", "com.mp4parser.iso14496.part30.WebVTTSourceLabelBox", "java.lang.String", "sourceLabel", "", "void"), 41);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f75720o = g.h(byteBuffer, byteBuffer.remaining());
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(l.b(this.f75720o));
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return l.c(this.f75720o);
    }

    public String t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f75718q, this, this));
        return this.f75720o;
    }

    public void u(String str) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f75719r, this, this, str));
        this.f75720o = str;
    }
}
