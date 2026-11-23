package org.jboss.netty.channel.socket.nio;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
final class w implements org.jboss.netty.util.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ByteBuffer f95639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f95640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f95641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f95642d;

    w() {
        this(16, 80);
    }

    private ByteBuffer d(int i10) {
        ByteBuffer byteBuffer = this.f95639a;
        if (byteBuffer != null) {
            this.f95640b = 0;
            org.jboss.netty.util.internal.a.a(byteBuffer);
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(e(i10));
        this.f95639a = byteBufferAllocateDirect;
        return byteBufferAllocateDirect;
    }

    private static int e(int i10) {
        int i11 = i10 >>> 10;
        if ((i10 & 1023) != 0) {
            i11++;
        }
        return i11 << 10;
    }

    @Override // org.jboss.netty.util.b
    public void a() {
        ByteBuffer byteBuffer = this.f95639a;
        if (byteBuffer != null) {
            org.jboss.netty.util.internal.a.a(byteBuffer);
        }
    }

    ByteBuffer c(int i10) {
        ByteBuffer byteBuffer = this.f95639a;
        if (byteBuffer == null) {
            return d(i10);
        }
        if (byteBuffer.capacity() < i10) {
            return d(i10);
        }
        if ((this.f95639a.capacity() * this.f95642d) / 100 > i10) {
            int i11 = this.f95640b + 1;
            this.f95640b = i11;
            if (i11 == this.f95641c) {
                return d(i10);
            }
            this.f95639a.clear();
        } else {
            this.f95640b = 0;
            this.f95639a.clear();
        }
        return this.f95639a;
    }

    w(int i10, int i11) {
        this.f95641c = i10;
        this.f95642d = i11;
    }
}
