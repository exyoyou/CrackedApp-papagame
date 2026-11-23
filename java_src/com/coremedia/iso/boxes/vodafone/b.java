package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes9.dex */
public class b extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f25167u = "cdis";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25168v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25169w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25170x = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f25171s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f25172t;

    static {
        s();
    }

    public b() {
        super(f25167u);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("ContentDistributorIdBox.java", b.class);
        f25168v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox", "", "", "", "java.lang.String"), 40);
        f25169w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getContentDistributorId", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox", "", "", "", "java.lang.String"), 44);
        f25170x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox", "", "", "", "java.lang.String"), 68);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25171s = g.f(byteBuffer);
        this.f25172t = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.d(byteBuffer, this.f25171s);
        byteBuffer.put(l.b(this.f25172t));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return l.c(this.f25172t) + 2 + 5;
    }

    public String toString() {
        j.b().c(e.v(f25170x, this, this));
        return "ContentDistributorIdBox[language=" + w() + ";contentDistributorId=" + v() + "]";
    }

    public String v() {
        j.b().c(e.v(f25169w, this, this));
        return this.f25172t;
    }

    public String w() {
        j.b().c(e.v(f25168v, this, this));
        return this.f25171s;
    }
}
