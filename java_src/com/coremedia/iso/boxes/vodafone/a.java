package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes9.dex */
public class a extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f25159u = "albr";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25160v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25161w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25162x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25163y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25164z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f25165s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f25166t;

    static {
        s();
    }

    public a() {
        super(f25159u);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("AlbumArtistBox.java", a.class);
        f25160v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "", "", "", "java.lang.String"), 42);
        f25161w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAlbumArtist", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "", "", "", "java.lang.String"), 46);
        f25162x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "java.lang.String", "language", "", "void"), 50);
        f25163y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAlbumArtist", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "java.lang.String", "albumArtist", "", "void"), 54);
        f25164z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.vodafone.AlbumArtistBox", "", "", "", "java.lang.String"), 76);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25165s = g.f(byteBuffer);
        this.f25166t = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.d(byteBuffer, this.f25165s);
        byteBuffer.put(l.b(this.f25166t));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return l.c(this.f25166t) + 6 + 1;
    }

    public String toString() {
        j.b().c(e.v(f25164z, this, this));
        return "AlbumArtistBox[language=" + w() + ";albumArtist=" + v() + "]";
    }

    public String v() {
        j.b().c(e.v(f25161w, this, this));
        return this.f25166t;
    }

    public String w() {
        j.b().c(e.v(f25160v, this, this));
        return this.f25165s;
    }

    public void x(String str) {
        j.b().c(e.w(f25163y, this, this, str));
        this.f25166t = str;
    }

    public void y(String str) {
        j.b().c(e.w(f25162x, this, this, str));
        this.f25165s = str;
    }
}
