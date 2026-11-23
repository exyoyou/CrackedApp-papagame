package com.googlecode.mp4parser.boxes.dece;

import com.baidu.mobads.sdk.api.IAdInterListener;
import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f33457u = "ainf";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final /* synthetic */ boolean f33458v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33459w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33460x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33461y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33462z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f33463s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    String f33464t;

    /* JADX INFO: renamed from: com.googlecode.mp4parser.boxes.dece.a$a, reason: collision with other inner class name */
    public static class C0619a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f33465a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f33466b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f33467c;

        public C0619a(String str, String str2, String str3) {
            this.f33465a = str;
            this.f33466b = str2;
            this.f33467c = str3;
        }

        public int a() {
            return l.c(this.f33465a) + 3 + l.c(this.f33466b) + l.c(this.f33467c);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0619a c0619a = (C0619a) obj;
            return this.f33467c.equals(c0619a.f33467c) && this.f33465a.equals(c0619a.f33465a) && this.f33466b.equals(c0619a.f33466b);
        }

        public int hashCode() {
            return (((this.f33465a.hashCode() * 31) + this.f33466b.hashCode()) * 31) + this.f33467c.hashCode();
        }

        public String toString() {
            return "{namespace='" + this.f33465a + "', profileLevelIdc='" + this.f33466b + "', assetId='" + this.f33467c + "'}";
        }
    }

    static {
        s();
    }

    public a() {
        super(f33457u);
        this.f33463s = "";
        this.f33464t = "0000";
    }

    private static /* synthetic */ void s() {
        e eVar = new e("AssetInformationBox.java", a.class);
        f33459w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getApid", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "", "", "", "java.lang.String"), 131);
        f33460x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setApid", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "java.lang.String", IAdInterListener.AdReqParam.APID, "", "void"), 135);
        f33461y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getProfileVersion", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "", "", "", "java.lang.String"), 139);
        f33462z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setProfileVersion", "com.googlecode.mp4parser.boxes.dece.AssetInformationBox", "java.lang.String", "profileVersion", "", "void"), 143);
    }

    public void A(String str) {
        j.b().c(e.w(f33462z, this, this, str));
        this.f33464t = str;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33464t = g.h(byteBuffer, 4);
        this.f33463s = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() != 0) {
            throw new RuntimeException("Unknown ainf version " + getVersion());
        }
        byteBuffer.put(l.b(this.f33464t), 0, 4);
        byteBuffer.put(l.b(this.f33463s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return l.c(this.f33463s) + 9;
    }

    public String v() {
        j.b().c(e.v(f33459w, this, this));
        return this.f33463s;
    }

    public String w() {
        j.b().c(e.v(f33461y, this, this));
        return this.f33464t;
    }

    @DoNotParseDetail
    public boolean x() {
        return (getFlags() & 1) == 1;
    }

    public void y(String str) {
        j.b().c(e.w(f33460x, this, this, str));
        this.f33463s = str;
    }

    @DoNotParseDetail
    public void z(boolean z10) {
        int flags = getFlags();
        if (x() ^ z10) {
            if (z10) {
                setFlags(flags | 1);
            } else {
                setFlags(16777214 & flags);
            }
        }
    }
}
