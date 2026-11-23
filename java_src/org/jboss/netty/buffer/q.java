package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

/* JADX INFO: loaded from: classes10.dex */
public class q extends a implements s {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f95491f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f95492g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f95493h;

    public q(e eVar, int i10, int i11) {
        if (i10 < 0 || i10 > eVar.capacity()) {
            throw new IndexOutOfBoundsException("Invalid index of " + i10 + ", maximum is " + eVar.capacity());
        }
        int i12 = i10 + i11;
        if (i12 <= eVar.capacity()) {
            this.f95491f = eVar;
            this.f95492g = i10;
            this.f95493h = i11;
            u0(i11);
            return;
        }
        throw new IndexOutOfBoundsException("Invalid combined index of " + i12 + ", maximum is " + eVar.capacity());
    }

    private void e(int i10) {
        if (i10 < 0 || i10 >= capacity()) {
            throw new IndexOutOfBoundsException("Invalid index: " + i10 + ", maximum is " + capacity());
        }
    }

    private void f(int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("length is negative: " + i11);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("startIndex cannot be negative");
        }
        int i12 = i10 + i11;
        if (i12 <= capacity()) {
            return;
        }
        throw new IndexOutOfBoundsException("Index too big - Bytes needed: " + i12 + ", maximum is " + capacity());
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i10, e eVar, int i11, int i12) {
        f(i10, i12);
        this.f95491f.G0(i10 + this.f95492g, eVar, i11, i12);
    }

    @Override // org.jboss.netty.buffer.s
    public e H0() {
        return this.f95491f;
    }

    @Override // org.jboss.netty.buffer.e
    public void M0(int i10, int i11) {
        e(i10);
        this.f95491f.M0(i10 + this.f95492g, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void N0(int i10, byte[] bArr, int i11, int i12) {
        f(i10, i12);
        this.f95491f.N0(i10 + this.f95492g, bArr, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void O(int i10, byte[] bArr, int i11, int i12) {
        f(i10, i12);
        this.f95491f.O(i10 + this.f95492g, bArr, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void U0(int i10, e eVar, int i11, int i12) {
        f(i10, i12);
        this.f95491f.U0(i10 + this.f95492g, eVar, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void W(int i10, OutputStream outputStream, int i11) throws IOException {
        f(i10, i11);
        this.f95491f.W(i10 + this.f95492g, outputStream, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void W0(int i10, int i11) {
        f(i10, 2);
        this.f95491f.W0(i10 + this.f95492g, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i10, int i11) {
        f(i10, i11);
        return i11 == 0 ? h.f95466c : new q(this.f95491f, i10 + this.f95492g, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f95491f.array();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return this.f95491f.arrayOffset() + this.f95492g;
    }

    @Override // org.jboss.netty.buffer.e
    public void c1(int i10, ByteBuffer byteBuffer) {
        f(i10, byteBuffer.remaining());
        this.f95491f.c1(i10 + this.f95492g, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f95493h;
    }

    @Override // org.jboss.netty.buffer.e
    public e d0(int i10, int i11) {
        f(i10, i11);
        return this.f95491f.d0(i10 + this.f95492g, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        q qVar = new q(this.f95491f, this.f95492g, this.f95493h);
        qVar.r0(readerIndex(), writerIndex());
        return qVar;
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f95491f.factory();
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i10) {
        e(i10);
        return this.f95491f.getByte(i10 + this.f95492g);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i10, GatheringByteChannel gatheringByteChannel, int i11) throws IOException {
        f(i10, i11);
        return this.f95491f.getBytes(i10 + this.f95492g, gatheringByteChannel, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i10) {
        f(i10, 4);
        return this.f95491f.getInt(i10 + this.f95492g);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i10) {
        f(i10, 8);
        return this.f95491f.getLong(i10 + this.f95492g);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i10) {
        f(i10, 2);
        return this.f95491f.getShort(i10 + this.f95492g);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i10) {
        f(i10, 3);
        return this.f95491f.getUnsignedMedium(i10 + this.f95492g);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer h0(int i10, int i11) {
        f(i10, i11);
        return this.f95491f.h0(i10 + this.f95492g, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return this.f95491f.hasArray();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f95491f.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void k0(int i10, int i11) {
        f(i10, 3);
        this.f95491f.k0(i10 + this.f95492g, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f95491f.order();
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, InputStream inputStream, int i11) throws IOException {
        f(i10, i11);
        return this.f95491f.setBytes(i10 + this.f95492g, inputStream, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i10, int i11) {
        f(i10, 4);
        this.f95491f.setInt(i10 + this.f95492g, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i10, long j10) {
        f(i10, 8);
        this.f95491f.setLong(i10 + this.f95492g, j10);
    }

    @Override // org.jboss.netty.buffer.e
    public void v0(int i10, ByteBuffer byteBuffer) {
        f(i10, byteBuffer.remaining());
        this.f95491f.v0(i10 + this.f95492g, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, ScatteringByteChannel scatteringByteChannel, int i11) throws IOException {
        f(i10, i11);
        return this.f95491f.setBytes(i10 + this.f95492g, scatteringByteChannel, i11);
    }
}
