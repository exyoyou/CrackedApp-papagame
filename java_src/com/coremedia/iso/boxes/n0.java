package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class n0 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24995t = "pdin";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24996u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24997v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24998w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    List<a> f24999s;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f25000a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f25001b;

        public a(long j10, long j11) {
            this.f25000a = j10;
            this.f25001b = j11;
        }

        public long a() {
            return this.f25001b;
        }

        public long b() {
            return this.f25000a;
        }

        public void c(long j10) {
            this.f25001b = j10;
        }

        public void d(long j10) {
            this.f25000a = j10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f25001b == aVar.f25001b && this.f25000a == aVar.f25000a;
        }

        public int hashCode() {
            long j10 = this.f25000a;
            int i10 = ((int) (j10 ^ (j10 >>> 32))) * 31;
            long j11 = this.f25001b;
            return i10 + ((int) (j11 ^ (j11 >>> 32)));
        }

        public String toString() {
            return "Entry{rate=" + this.f25000a + ", initialDelay=" + this.f25001b + '}';
        }
    }

    static {
        s();
    }

    public n0() {
        super(f24995t);
        this.f24999s = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ProgressiveDownloadInformationBox.java", n0.class);
        f24996u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox", "", "", "", "java.util.List"), 38);
        f24997v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox", "java.util.List", "entries", "", "void"), 42);
        f24998w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox", "", "", "", "java.lang.String"), 112);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24999s = new LinkedList();
        while (byteBuffer.remaining() >= 8) {
            this.f24999s.add(new a(com.coremedia.iso.g.l(byteBuffer), com.coremedia.iso.g.l(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        for (a aVar : this.f24999s) {
            com.coremedia.iso.i.i(byteBuffer, aVar.b());
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f24999s.size() * 8) + 4;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24998w, this, this));
        return "ProgressiveDownloadInfoBox{entries=" + this.f24999s + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24996u, this, this));
        return this.f24999s;
    }

    public void w(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24997v, this, this, list));
        this.f24999s = list;
    }
}
