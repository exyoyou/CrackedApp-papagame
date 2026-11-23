package com.mp4parser.iso14496.part12;

import com.coremedia.iso.f;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f75571v = "saio";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75572w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75573x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75574y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75575z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long[] f75576s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f75577t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f75578u;

    static {
        s();
    }

    public b() {
        super(f75571v);
        this.f75576s = new long[0];
    }

    private static /* synthetic */ void s() {
        e eVar = new e("SampleAuxiliaryInformationOffsetsBox.java", b.class);
        f75572w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 107);
        f75573x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoType", "", "void"), 111);
        f75574y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 115);
        f75575z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 119);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "[J"), 123);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "[J", "offsets", "", "void"), 127);
    }

    public void A(long[] jArr) {
        j.b().c(e.w(B, this, this, jArr));
        this.f75576s = jArr;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if ((getFlags() & 1) == 1) {
            this.f75577t = g.b(byteBuffer);
            this.f75578u = g.b(byteBuffer);
        }
        int iA = com.googlecode.mp4parser.util.c.a(g.l(byteBuffer));
        this.f75576s = new long[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            if (getVersion() == 0) {
                this.f75576s[i10] = g.l(byteBuffer);
            } else {
                this.f75576s[i10] = g.o(byteBuffer);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if ((getFlags() & 1) == 1) {
            byteBuffer.put(f.t(this.f75577t));
            byteBuffer.put(f.t(this.f75578u));
        }
        i.i(byteBuffer, this.f75576s.length);
        for (long j10 : this.f75576s) {
            Long lValueOf = Long.valueOf(j10);
            if (getVersion() == 0) {
                i.i(byteBuffer, lValueOf.longValue());
            } else {
                i.l(byteBuffer, lValueOf.longValue());
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (getVersion() == 0 ? this.f75576s.length * 4 : this.f75576s.length * 8) + 8 + ((getFlags() & 1) != 1 ? 0 : 8);
    }

    public String v() {
        j.b().c(e.v(f75572w, this, this));
        return this.f75577t;
    }

    public String w() {
        j.b().c(e.v(f75574y, this, this));
        return this.f75578u;
    }

    public long[] x() {
        j.b().c(e.v(A, this, this));
        return this.f75576s;
    }

    public void y(String str) {
        j.b().c(e.w(f75573x, this, this, str));
        this.f75577t = str;
    }

    public void z(String str) {
        j.b().c(e.w(f75575z, this, this, str));
        this.f75578u = str;
    }
}
