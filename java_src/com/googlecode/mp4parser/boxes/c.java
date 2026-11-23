package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.boxes.k1;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33413v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33414w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33415x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33416y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33417z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f33418s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f33419t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    byte[] f33420u;

    static {
        s();
    }

    protected c(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AbstractTrackEncryptionBox.java", c.class);
        f33413v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 24);
        f33414w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultAlgorithmId", "", "void"), 28);
        f33415x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 32);
        f33416y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultIvSize", "", "void"), 36);
        f33417z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "java.util.UUID"), 40);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.util.UUID", k1.f24950p, "", "void"), 46);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.lang.Object", "o", "", "boolean"), 76);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 90);
    }

    public void A(UUID uuid) {
        j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, uuid));
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[16]);
        byteBufferWrap.putLong(uuid.getMostSignificantBits());
        byteBufferWrap.putLong(uuid.getLeastSignificantBits());
        this.f33420u = byteBufferWrap.array();
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33418s = g.k(byteBuffer);
        this.f33419t = g.p(byteBuffer);
        byte[] bArr = new byte[16];
        this.f33420u = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.h(byteBuffer, this.f33418s);
        i.m(byteBuffer, this.f33419t);
        byteBuffer.put(this.f33420u);
    }

    public boolean equals(Object obj) {
        j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f33418s == cVar.f33418s && this.f33419t == cVar.f33419t && Arrays.equals(this.f33420u, cVar.f33420u);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 24L;
    }

    public int hashCode() {
        j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        int i10 = ((this.f33418s * 31) + this.f33419t) * 31;
        byte[] bArr = this.f33420u;
        return i10 + (bArr != null ? Arrays.hashCode(bArr) : 0);
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33413v, this, this));
        return this.f33418s;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33415x, this, this));
        return this.f33419t;
    }

    public UUID x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33417z, this, this));
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f33420u);
        byteBufferWrap.order(ByteOrder.BIG_ENDIAN);
        return new UUID(byteBufferWrap.getLong(), byteBufferWrap.getLong());
    }

    public void y(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33414w, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33418s = i10;
    }

    public void z(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33416y, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33419t = i10;
    }
}
