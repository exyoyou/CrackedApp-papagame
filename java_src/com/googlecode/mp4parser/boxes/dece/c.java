package com.googlecode.mp4parser.boxes.dece;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.LinkedHashMap;
import java.util.Map;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes5.dex */
public class c extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;
    private static final /* synthetic */ org.aspectj.lang.c.b J = null;
    private static final /* synthetic */ org.aspectj.lang.c.b K = null;
    private static final /* synthetic */ org.aspectj.lang.c.b L = null;
    private static final /* synthetic */ org.aspectj.lang.c.b M = null;
    private static final /* synthetic */ org.aspectj.lang.c.b N = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f33476z = "cinf";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f33477s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    String f33478t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    String f33479u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    String f33480v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    String f33481w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    Map<String, String> f33482x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Map<String, String> f33483y;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f33484a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f33485b;

        public a(String str, String str2) {
            this.f33484a = str;
            this.f33485b = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            String str = this.f33484a;
            if (str == null ? aVar.f33484a != null : !str.equals(aVar.f33484a)) {
                return false;
            }
            String str2 = this.f33485b;
            String str3 = aVar.f33485b;
            return str2 == null ? str3 == null : str2.equals(str3);
        }

        public int hashCode() {
            String str = this.f33484a;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f33485b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }
    }

    static {
        s();
    }

    public c() {
        super(f33476z);
        this.f33482x = new LinkedHashMap();
        this.f33483y = new LinkedHashMap();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("ContentInformationBox.java", c.class);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMimeSubtypeName", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 144);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMimeSubtypeName", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "mimeSubtypeName", "", "void"), 148);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBrandEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.util.Map"), 184);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBrandEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.util.Map", "brandEntries", "", "void"), 188);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getIdEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.util.Map"), 192);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setIdEntries", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.util.Map", "idEntries", "", "void"), 196);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getProfileLevelIdc", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 152);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setProfileLevelIdc", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "profileLevelIdc", "", "void"), 156);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCodecs", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 160);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCodecs", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "codecs", "", "void"), 164);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getProtection", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 168);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setProtection", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "protection", "", "void"), 172);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguages", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "", "", "", "java.lang.String"), 176);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguages", "com.googlecode.mp4parser.boxes.dece.ContentInformationBox", "java.lang.String", "languages", "", "void"), 180);
    }

    public String A() {
        j.b().c(e.v(C, this, this));
        return this.f33478t;
    }

    public String B() {
        j.b().c(e.v(G, this, this));
        return this.f33480v;
    }

    public void C(Map<String, String> map) {
        j.b().c(e.w(L, this, this, map));
        this.f33482x = map;
    }

    public void D(String str) {
        j.b().c(e.w(F, this, this, str));
        this.f33479u = str;
    }

    public void E(Map<String, String> map) {
        j.b().c(e.w(N, this, this, map));
        this.f33483y = map;
    }

    public void F(String str) {
        j.b().c(e.w(J, this, this, str));
        this.f33481w = str;
    }

    public void G(String str) {
        j.b().c(e.w(B, this, this, str));
        this.f33477s = str;
    }

    public void H(String str) {
        j.b().c(e.w(D, this, this, str));
        this.f33478t = str;
    }

    public void I(String str) {
        j.b().c(e.w(H, this, this, str));
        this.f33480v = str;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33477s = g.g(byteBuffer);
        this.f33478t = g.g(byteBuffer);
        this.f33479u = g.g(byteBuffer);
        this.f33480v = g.g(byteBuffer);
        this.f33481w = g.g(byteBuffer);
        int iP = g.p(byteBuffer);
        while (true) {
            int i10 = iP - 1;
            if (iP <= 0) {
                break;
            }
            this.f33482x.put(g.g(byteBuffer), g.g(byteBuffer));
            iP = i10;
        }
        int iP2 = g.p(byteBuffer);
        while (true) {
            int i11 = iP2 - 1;
            if (iP2 <= 0) {
                return;
            }
            this.f33483y.put(g.g(byteBuffer), g.g(byteBuffer));
            iP2 = i11;
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.o(byteBuffer, this.f33477s);
        i.o(byteBuffer, this.f33478t);
        i.o(byteBuffer, this.f33479u);
        i.o(byteBuffer, this.f33480v);
        i.o(byteBuffer, this.f33481w);
        i.m(byteBuffer, this.f33482x.size());
        for (Map.Entry<String, String> entry : this.f33482x.entrySet()) {
            i.o(byteBuffer, entry.getKey());
            i.o(byteBuffer, entry.getValue());
        }
        i.m(byteBuffer, this.f33483y.size());
        for (Map.Entry<String, String> entry2 : this.f33483y.entrySet()) {
            i.o(byteBuffer, entry2.getKey());
            i.o(byteBuffer, entry2.getValue());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        long jC = ((long) (l.c(this.f33477s) + 1)) + 4 + ((long) (l.c(this.f33478t) + 1)) + ((long) (l.c(this.f33479u) + 1)) + ((long) (l.c(this.f33480v) + 1)) + ((long) (l.c(this.f33481w) + 1)) + 1;
        for (Map.Entry<String, String> entry : this.f33482x.entrySet()) {
            jC = jC + ((long) (l.c(entry.getKey()) + 1)) + ((long) (l.c(entry.getValue()) + 1));
        }
        long jC2 = jC + 1;
        for (Map.Entry<String, String> entry2 : this.f33483y.entrySet()) {
            jC2 = jC2 + ((long) (l.c(entry2.getKey()) + 1)) + ((long) (l.c(entry2.getValue()) + 1));
        }
        return jC2;
    }

    public Map<String, String> v() {
        j.b().c(e.v(K, this, this));
        return this.f33482x;
    }

    public String w() {
        j.b().c(e.v(E, this, this));
        return this.f33479u;
    }

    public Map<String, String> x() {
        j.b().c(e.v(M, this, this));
        return this.f33483y;
    }

    public String y() {
        j.b().c(e.v(I, this, this));
        return this.f33481w;
    }

    public String z() {
        j.b().c(e.v(A, this, this));
        return this.f33477s;
    }
}
