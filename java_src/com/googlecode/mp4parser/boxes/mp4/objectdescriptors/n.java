package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {6})
public class n extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f33649e;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f33649e == ((n) obj).f33649e;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        this.f33649e = com.coremedia.iso.g.p(byteBuffer);
    }

    public int g() {
        return this.f33649e;
    }

    public ByteBuffer h() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        com.coremedia.iso.i.m(byteBufferAllocate, 6);
        com.coremedia.iso.i.m(byteBufferAllocate, 1);
        com.coremedia.iso.i.m(byteBufferAllocate, this.f33649e);
        return byteBufferAllocate;
    }

    public int hashCode() {
        return this.f33649e;
    }

    public int i() {
        return 3;
    }

    public void j(int i10) {
        this.f33649e = i10;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "SLConfigDescriptor{predefined=" + this.f33649e + '}';
    }
}
