package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes9.dex */
public class c extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f25173t = "cvru";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25174u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25175v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25176w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f25177s;

    static {
        s();
    }

    public c() {
        super(f25173t);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("CoverUriBox.java", c.class);
        f25174u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCoverUri", "com.coremedia.iso.boxes.vodafone.CoverUriBox", "", "", "", "java.lang.String"), 38);
        f25175v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCoverUri", "com.coremedia.iso.boxes.vodafone.CoverUriBox", "java.lang.String", "coverUri", "", "void"), 42);
        f25176w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.vodafone.CoverUriBox", "", "", "", "java.lang.String"), 64);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25177s = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(l.b(this.f25177s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return l.c(this.f25177s) + 5;
    }

    public String toString() {
        j.b().c(e.v(f25176w, this, this));
        return "CoverUriBox[coverUri=" + v() + "]";
    }

    public String v() {
        j.b().c(e.v(f25174u, this, this));
        return this.f25177s;
    }

    public void w(String str) {
        j.b().c(e.w(f25175v, this, this, str));
        this.f25177s = str;
    }
}
