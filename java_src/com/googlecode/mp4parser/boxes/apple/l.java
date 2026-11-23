package com.googlecode.mp4parser.boxes.apple;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class l extends j {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f33297y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    short f33298z;

    static {
        s();
    }

    public l() {
        super("disk", 0);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleDiskNumberBox.java", l.class);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getA", "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox", "", "", "", "int"), 16);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setA", "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox", "int", "a", "", "void"), 20);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getB", "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox", "", "", "", MethodReflectParams.SHORT), 24);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setB", "com.googlecode.mp4parser.boxes.apple.AppleDiskNumberBox", MethodReflectParams.SHORT, com.kuaishou.weapon.p0.t.f74887l, "", "void"), 28);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected byte[] C() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(6);
        byteBufferAllocate.putInt(this.f33297y);
        byteBufferAllocate.putShort(this.f33298z);
        return byteBufferAllocate.array();
    }

    public int E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f33297y;
    }

    public short F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f33298z;
    }

    public void G(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33297y = i10;
    }

    public void H(short s10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.o(s10)));
        this.f33298z = s10;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return 6;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        this.f33297y = byteBuffer.getInt();
        this.f33298z = byteBuffer.getShort();
    }
}
