package com.coremedia.iso.boxes;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.activity.SearchHintActivity_;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class c0 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f24731u = "kywd";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24732v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24733w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24734x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24735y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24736z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f24737s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String[] f24738t;

    static {
        s();
    }

    public c0() {
        super(f24731u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("KeywordsBox.java", c0.class);
        f24732v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.KeywordsBox", "", "", "", "java.lang.String"), 40);
        f24733w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getKeywords", "com.coremedia.iso.boxes.KeywordsBox", "", "", "", "[Ljava.lang.String;"), 44);
        f24734x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.KeywordsBox", "java.lang.String", "language", "", "void"), 48);
        f24735y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setKeywords", "com.coremedia.iso.boxes.KeywordsBox", "[Ljava.lang.String;", SearchHintActivity_.KEYWORDS_EXTRA, "", "void"), 52);
        f24736z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.KeywordsBox", "", "", "", "java.lang.String"), 87);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24737s = com.coremedia.iso.g.f(byteBuffer);
        int iP = com.coremedia.iso.g.p(byteBuffer);
        this.f24738t = new String[iP];
        for (int i10 = 0; i10 < iP; i10++) {
            com.coremedia.iso.g.p(byteBuffer);
            this.f24738t[i10] = com.coremedia.iso.g.g(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f24737s);
        com.coremedia.iso.i.m(byteBuffer, this.f24738t.length);
        for (String str : this.f24738t) {
            com.coremedia.iso.i.m(byteBuffer, com.coremedia.iso.l.c(str) + 1);
            byteBuffer.put(com.coremedia.iso.l.b(str));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        long jC = 7;
        for (String str : this.f24738t) {
            jC += (long) (com.coremedia.iso.l.c(str) + 1 + 1);
        }
        return jC;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24736z, this, this));
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("KeywordsBox[language=");
        stringBuffer.append(w());
        for (int i10 = 0; i10 < this.f24738t.length; i10++) {
            stringBuffer.append(";keyword");
            stringBuffer.append(i10);
            stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
            stringBuffer.append(this.f24738t[i10]);
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public String[] v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24733w, this, this));
        return this.f24738t;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24732v, this, this));
        return this.f24737s;
    }

    public void x(String[] strArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24735y, this, this, strArr));
        this.f24738t = strArr;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24734x, this, this, str));
        this.f24737s = str;
    }
}
