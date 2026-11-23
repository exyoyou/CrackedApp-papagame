package com.coremedia.iso.boxes;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class i1 extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f24925p = "hint";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f24926q = "cdsc";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24927r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24928s = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long[] f24929o;

    static {
        s();
    }

    public i1(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackReferenceTypeBox.java", i1.class);
        f24927r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTrackIds", "com.coremedia.iso.boxes.TrackReferenceTypeBox", "", "", "", "[J"), 40);
        f24928s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.TrackReferenceTypeBox", "", "", "", "java.lang.String"), 65);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining() / 4;
        this.f24929o = new long[iRemaining];
        for (int i10 = 0; i10 < iRemaining; i10++) {
            this.f24929o[i10] = com.coremedia.iso.g.l(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        for (long j10 : this.f24929o) {
            com.coremedia.iso.i.i(byteBuffer, j10);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f24929o.length * 4;
    }

    public long[] t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24927r, this, this));
        return this.f24929o;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24928s, this, this));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TrackReferenceTypeBox[type=");
        sb2.append(getType());
        for (int i10 = 0; i10 < this.f24929o.length; i10++) {
            sb2.append(";trackId");
            sb2.append(i10);
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb2.append(this.f24929o[i10]);
        }
        sb2.append("]");
        return sb2.toString();
    }
}
