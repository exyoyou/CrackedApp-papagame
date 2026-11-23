package com.googlecode.mp4parser.boxes.apple;

import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public abstract class z0 extends j {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33393z = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    String f33394y;

    static {
        s();
    }

    protected z0(String str) {
        super(str, 1);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("Utf8AppleDataBox.java", z0.class);
        f33393z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getValue", "com.googlecode.mp4parser.boxes.apple.Utf8AppleDataBox", "", "", "", "java.lang.String"), 21);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setValue", "com.googlecode.mp4parser.boxes.apple.Utf8AppleDataBox", "java.lang.String", HmInputMappingContent.FIELD_VALUE, "", "void"), 30);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    @DoNotParseDetail
    public byte[] C() {
        return com.coremedia.iso.l.b(this.f33394y);
    }

    public String E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33393z, this, this));
        if (!m()) {
            o();
        }
        return this.f33394y;
    }

    public void F(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, str));
        this.f33394y = str;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return this.f33394y.getBytes(Charset.forName("UTF-8")).length;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        this.f33394y = com.coremedia.iso.g.h(byteBuffer, byteBuffer.remaining());
    }
}
