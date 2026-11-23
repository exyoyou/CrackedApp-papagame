package com.googlecode.mp4parser.boxes.dece;

import com.coremedia.iso.g;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes5.dex */
public class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f33468u = "bloc";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33469v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33470w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33471x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33472y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33473z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f33474s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    String f33475t;

    static {
        s();
    }

    public b() {
        super(f33468u);
        this.f33474s = "";
        this.f33475t = "";
    }

    private static /* synthetic */ void s() {
        e eVar = new e("BaseLocationBox.java", b.class);
        f33469v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "java.lang.String"), 44);
        f33470w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "java.lang.String", "baseLocation", "", "void"), 48);
        f33471x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPurchaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "java.lang.String"), 52);
        f33472y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPurchaseLocation", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "java.lang.String", "purchaseLocation", "", "void"), 56);
        f33473z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "java.lang.Object", "o", "", "boolean"), 86);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "int"), 100);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.dece.BaseLocationBox", "", "", "", "java.lang.String"), 107);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        String strG = g.g(byteBuffer);
        this.f33474s = strG;
        byteBuffer.get(new byte[(256 - l.c(strG)) - 1]);
        String strG2 = g.g(byteBuffer);
        this.f33475t = strG2;
        byteBuffer.get(new byte[(256 - l.c(strG2)) - 1]);
        byteBuffer.get(new byte[512]);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(l.b(this.f33474s));
        byteBuffer.put(new byte[256 - l.c(this.f33474s)]);
        byteBuffer.put(l.b(this.f33475t));
        byteBuffer.put(new byte[256 - l.c(this.f33475t)]);
        byteBuffer.put(new byte[512]);
    }

    public boolean equals(Object obj) {
        j.b().c(e.w(f33473z, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        String str = this.f33474s;
        if (str == null ? bVar.f33474s != null : !str.equals(bVar.f33474s)) {
            return false;
        }
        String str2 = this.f33475t;
        String str3 = bVar.f33475t;
        return str2 == null ? str3 == null : str2.equals(str3);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 1028L;
    }

    public int hashCode() {
        j.b().c(e.v(A, this, this));
        String str = this.f33474s;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f33475t;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        j.b().c(e.v(B, this, this));
        return "BaseLocationBox{baseLocation='" + this.f33474s + "', purchaseLocation='" + this.f33475t + "'}";
    }

    public String v() {
        j.b().c(e.v(f33469v, this, this));
        return this.f33474s;
    }

    public String w() {
        j.b().c(e.v(f33471x, this, this));
        return this.f33475t;
    }

    public void x(String str) {
        j.b().c(e.w(f33470w, this, this, str));
        this.f33474s = str;
    }

    public void y(String str) {
        j.b().c(e.w(f33472y, this, this, str));
        this.f33475t = str;
    }

    public b(String str, String str2) {
        super(f33468u);
        this.f33474s = str;
        this.f33475t = str2;
    }
}
