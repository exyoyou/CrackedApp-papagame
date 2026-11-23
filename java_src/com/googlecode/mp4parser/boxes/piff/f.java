package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.boxes.k1;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import com.googlecode.mp4parser.util.o;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class f extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static byte[] f33705u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33706v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33707w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33708x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33709y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33710z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    UUID f33711s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    c f33712t;

    static {
        s();
        f33705u = new byte[]{-48, -118, 79, BinaryMemcacheOpcodes.FLUSHQ, 16, -13, 74, -126, -74, -56, com.sigmob.sdk.archives.tar.e.J, -40, -85, -95, -125, -45};
    }

    public f() {
        super(k1.f24950p, f33705u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("UuidBasedProtectionSystemSpecificHeaderBox.java", f.class);
        f33706v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSystemId", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.util.UUID"), 67);
        f33707w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSystemId", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "java.util.UUID", "systemId", "", "void"), 71);
        f33708x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSystemIdString", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.lang.String"), 75);
        f33709y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getProtectionSpecificHeader", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "com.googlecode.mp4parser.boxes.piff.ProtectionSpecificHeader"), 79);
        f33710z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getProtectionSpecificHeaderString", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.lang.String"), 83);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setProtectionSpecificHeader", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "com.googlecode.mp4parser.boxes.piff.ProtectionSpecificHeader", "protectionSpecificHeader", "", "void"), 87);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.piff.UuidBasedProtectionSystemSpecificHeaderBox", "", "", "", "java.lang.String"), 92);
    }

    public void A(UUID uuid) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33707w, this, this, uuid));
        this.f33711s = uuid;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        byte[] bArr = new byte[16];
        byteBuffer.get(bArr);
        this.f33711s = o.a(bArr);
        com.googlecode.mp4parser.util.c.a(g.l(byteBuffer));
        this.f33712t = c.a(this.f33711s, byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.l(byteBuffer, this.f33711s.getMostSignificantBits());
        i.l(byteBuffer, this.f33711s.getLeastSignificantBits());
        ByteBuffer byteBufferB = this.f33712t.b();
        byteBufferB.rewind();
        i.i(byteBuffer, byteBufferB.limit());
        byteBuffer.put(byteBufferB);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f33712t.b().limit() + 24;
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] l() {
        return f33705u;
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return "UuidBasedProtectionSystemSpecificHeaderBox{systemId=" + this.f33711s.toString() + ", dataSize=" + this.f33712t.b().limit() + '}';
    }

    public c v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33709y, this, this));
        return this.f33712t;
    }

    public String w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33710z, this, this));
        return this.f33712t.toString();
    }

    public UUID x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33706v, this, this));
        return this.f33711s;
    }

    public String y() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33708x, this, this));
        return this.f33711s.toString();
    }

    public void z(c cVar) {
        j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, cVar));
        this.f33712t = cVar;
    }
}
