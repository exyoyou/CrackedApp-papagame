package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes9.dex */
public class d extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f25178t = "lrcu";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25179u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25180v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25181w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f25182s;

    static {
        s();
    }

    public d() {
        super(f25178t);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("LyricsUriBox.java", d.class);
        f25179u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLyricsUri", "com.coremedia.iso.boxes.vodafone.LyricsUriBox", "", "", "", "java.lang.String"), 39);
        f25180v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLyricsUri", "com.coremedia.iso.boxes.vodafone.LyricsUriBox", "java.lang.String", "lyricsUri", "", "void"), 43);
        f25181w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.vodafone.LyricsUriBox", "", "", "", "java.lang.String"), 64);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25182s = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(l.b(this.f25182s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return l.c(this.f25182s) + 5;
    }

    public String toString() {
        j.b().c(e.v(f25181w, this, this));
        return "LyricsUriBox[lyricsUri=" + v() + "]";
    }

    public String v() {
        j.b().c(e.v(f25179u, this, this));
        return this.f25182s;
    }

    public void w(String str) {
        j.b().c(e.w(f25180v, this, this, str));
        this.f25182s = str;
    }
}
