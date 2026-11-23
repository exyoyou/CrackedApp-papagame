package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class i0 extends j {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f33283y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f33284z;

    static {
        s();
    }

    public i0() {
        super("trkn", 0);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleTrackNumberBox.java", i0.class);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getA", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "", "", "", "int"), 16);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setA", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "int", "a", "", "void"), 20);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getB", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "", "", "", "int"), 24);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setB", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "int", com.kuaishou.weapon.p0.t.f74887l, "", "void"), 28);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected byte[] C() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putInt(this.f33283y);
        byteBufferAllocate.putInt(this.f33284z);
        return byteBufferAllocate.array();
    }

    public int E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f33283y;
    }

    public int F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f33284z;
    }

    public void G(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33283y = i10;
    }

    public void H(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33284z = i10;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return 8;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        this.f33283y = byteBuffer.getInt();
        this.f33284z = byteBuffer.getInt();
    }
}
