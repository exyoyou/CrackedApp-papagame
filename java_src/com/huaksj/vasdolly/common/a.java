package com.huaksj.vasdolly.common;

import com.huaksj.vasdolly.common.apk.SignatureNotFoundException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static int f34371g = 536870912;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f34372a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f34373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c<ByteBuffer, Long> f34374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c<ByteBuffer, Long> f34375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c<ByteBuffer, Long> f34376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c<ByteBuffer, Long> f34377f;

    public void a() throws SignatureNotFoundException {
        long jF = com.huaksj.vasdolly.common.apk.a.f(this.f34377f.b(), this.f34377f.c().longValue());
        if (jF == this.f34376e.c().longValue()) {
            return;
        }
        throw new RuntimeException("CentralDirOffset mismatch , EocdCentralDirOffset : " + jF + ", centralDirOffset : " + this.f34376e.c());
    }

    public void b() throws SignatureNotFoundException {
        boolean z10 = this.f34372a;
        if ((!z10 && this.f34374c == null) || this.f34375d == null || this.f34376e == null || this.f34377f == null) {
            throw new RuntimeException("ApkSectionInfo paramters is not valid : " + toString());
        }
        if ((z10 || (this.f34374c.c().longValue() == 0 && ((long) this.f34374c.b().remaining()) == this.f34375d.c().longValue())) && ((long) this.f34375d.b().remaining()) + this.f34375d.c().longValue() == this.f34376e.c().longValue() && ((long) this.f34376e.b().remaining()) + this.f34376e.c().longValue() == this.f34377f.c().longValue() && ((long) this.f34377f.b().remaining()) + this.f34377f.c().longValue() == this.f34373b) {
            a();
            return;
        }
        throw new RuntimeException("ApkSectionInfo paramters is not valid : " + toString());
    }

    public boolean c() {
        return this.f34372a;
    }

    public void d() {
        c<ByteBuffer, Long> cVar = this.f34374c;
        if (cVar != null) {
            cVar.b().rewind();
        }
        c<ByteBuffer, Long> cVar2 = this.f34375d;
        if (cVar2 != null) {
            cVar2.b().rewind();
        }
        c<ByteBuffer, Long> cVar3 = this.f34376e;
        if (cVar3 != null) {
            cVar3.b().rewind();
        }
        c<ByteBuffer, Long> cVar4 = this.f34377f;
        if (cVar4 != null) {
            cVar4.b().rewind();
        }
    }

    public void e(boolean z10) {
    }

    public String toString() {
        return "lowMemory : " + this.f34372a + "\n apkSize : " + this.f34373b + "\n contentEntry : " + this.f34374c + "\n schemeV2Block : " + this.f34375d + "\n centralDir : " + this.f34376e + "\n eocd : " + this.f34377f;
    }
}
