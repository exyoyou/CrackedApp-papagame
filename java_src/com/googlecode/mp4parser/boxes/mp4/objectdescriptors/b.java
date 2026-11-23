package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {0})
public abstract class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ boolean f33593d = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f33594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f33595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f33596c;

    public int a() {
        return this.f33595b + 1 + this.f33596c;
    }

    public int b() {
        return this.f33596c;
    }

    public int c() {
        return this.f33595b;
    }

    public int d() {
        return this.f33594a;
    }

    public final void e(int i10, ByteBuffer byteBuffer) throws IOException {
        this.f33594a = i10;
        int iP = com.coremedia.iso.g.p(byteBuffer);
        this.f33595b = iP & 127;
        int i11 = 1;
        while ((iP >>> 7) == 1) {
            iP = com.coremedia.iso.g.p(byteBuffer);
            i11++;
            this.f33595b = (this.f33595b << 7) | (iP & 127);
        }
        this.f33596c = i11;
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBufferSlice.limit(this.f33595b);
        f(byteBufferSlice);
        byteBuffer.position(byteBuffer.position() + this.f33595b);
    }

    public abstract void f(ByteBuffer byteBuffer) throws IOException;

    public String toString() {
        return "BaseDescriptor{tag=" + this.f33594a + ", sizeOfInstance=" + this.f33595b + '}';
    }
}
