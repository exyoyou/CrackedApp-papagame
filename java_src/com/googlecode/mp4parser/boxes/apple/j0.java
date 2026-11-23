package com.googlecode.mp4parser.boxes.apple;

import com.haima.hmcp.beans.HmInputMappingContent;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j0 extends j {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    long f33295y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f33296z;

    static {
        s();
    }

    protected j0(String str) {
        super(str, 15);
        this.f33296z = 1;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleVariableSignedIntegerBox.java", j0.class);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getIntLength", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "", "", "", "int"), 19);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setIntLength", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "int", "intLength", "", "void"), 23);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getValue", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", "", "", "", MethodReflectParams.LONG), 27);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setValue", "com.googlecode.mp4parser.boxes.apple.AppleVariableSignedIntegerBox", MethodReflectParams.LONG, HmInputMappingContent.FIELD_VALUE, "", "void"), 36);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected byte[] C() {
        int iV = v();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[iV]);
        com.coremedia.iso.j.a(this.f33295y, byteBufferWrap, iV);
        return byteBufferWrap.array();
    }

    public int E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f33296z;
    }

    public long F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        if (!m()) {
            o();
        }
        return this.f33295y;
    }

    public void G(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33296z = i10;
    }

    public void H(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.m(j10)));
        if (j10 <= 127 && j10 > -128) {
            this.f33296z = 1;
        } else if (j10 <= 32767 && j10 > -32768 && this.f33296z < 2) {
            this.f33296z = 2;
        } else if (j10 > 8388607 || j10 <= -8388608 || this.f33296z >= 3) {
            this.f33296z = 4;
        } else {
            this.f33296z = 3;
        }
        this.f33295y = j10;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return this.f33296z;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        this.f33295y = com.coremedia.iso.h.a(byteBuffer, iRemaining);
        this.f33296z = iRemaining;
    }
}
