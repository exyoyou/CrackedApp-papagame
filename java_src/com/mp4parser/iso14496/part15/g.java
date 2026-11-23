package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class g extends com.googlecode.mp4parser.boxes.mp4.samplegrouping.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f75671c = "sync";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f75672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f75673b;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1);
        com.coremedia.iso.i.m(byteBufferAllocate, this.f75673b + (this.f75672a << 6));
        return (ByteBuffer) byteBufferAllocate.rewind();
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void b(ByteBuffer byteBuffer) {
        int iP = com.coremedia.iso.g.p(byteBuffer);
        this.f75672a = (iP & 192) >> 6;
        this.f75673b = iP & 63;
    }

    public int d() {
        return this.f75673b;
    }

    public int e() {
        return this.f75672a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f75673b == gVar.f75673b && this.f75672a == gVar.f75672a;
    }

    public void f(int i10) {
        this.f75673b = i10;
    }

    public void g(int i10) {
        this.f75672a = i10;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String getType() {
        return f75671c;
    }

    public int hashCode() {
        return (this.f75672a * 31) + this.f75673b;
    }

    public String toString() {
        return "SyncSampleEntry{reserved=" + this.f75672a + ", nalUnitType=" + this.f75673b + '}';
    }
}
