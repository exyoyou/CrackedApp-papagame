package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.boxes.k1;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class d extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33694t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33695u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33696v = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public List<a> f33697s;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f33698a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f33699b;

        public a() {
        }

        public long a() {
            return this.f33699b;
        }

        public long b() {
            return this.f33698a;
        }

        public String toString() {
            return "Entry{fragmentAbsoluteTime=" + this.f33698a + ", fragmentAbsoluteDuration=" + this.f33699b + '}';
        }
    }

    static {
        s();
    }

    public d() {
        super(k1.f24950p);
        this.f33697s = new ArrayList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TfrfBox.java", d.class);
        f33694t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFragmentCount", "com.googlecode.mp4parser.boxes.piff.TfrfBox", "", "", "", MethodReflectParams.LONG), 91);
        f33695u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.piff.TfrfBox", "", "", "", "java.util.List"), 95);
        f33696v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.piff.TfrfBox", "", "", "", "java.lang.String"), 100);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int iP = g.p(byteBuffer);
        for (int i10 = 0; i10 < iP; i10++) {
            a aVar = new a();
            if (getVersion() == 1) {
                aVar.f33698a = g.o(byteBuffer);
                aVar.f33699b = g.o(byteBuffer);
            } else {
                aVar.f33698a = g.l(byteBuffer);
                aVar.f33699b = g.l(byteBuffer);
            }
            this.f33697s.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.m(byteBuffer, this.f33697s.size());
        for (a aVar : this.f33697s) {
            if (getVersion() == 1) {
                i.l(byteBuffer, aVar.f33698a);
                i.l(byteBuffer, aVar.f33699b);
            } else {
                i.i(byteBuffer, aVar.f33698a);
                i.i(byteBuffer, aVar.f33699b);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f33697s.size() * (getVersion() == 1 ? 16 : 8)) + 5;
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] l() {
        return new byte[]{-44, -128, 126, -14, -54, 57, 70, -107, -114, 84, 38, -53, -98, 70, -89, -97};
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33696v, this, this));
        return "TfrfBox{entries=" + this.f33697s + '}';
    }

    public List<a> v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33695u, this, this));
        return this.f33697s;
    }

    public long w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33694t, this, this));
        return this.f33697s.size();
    }
}
