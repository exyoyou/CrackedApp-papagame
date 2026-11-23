package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

/* JADX INFO: loaded from: classes10.dex */
public class p extends a implements s {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f95490f;

    public p(e eVar) {
        if (eVar == null) {
            throw new NullPointerException("buffer");
        }
        this.f95490f = eVar;
        r0(eVar.readerIndex(), eVar.writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i10, e eVar, int i11, int i12) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.s
    public e H0() {
        return this.f95490f;
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void L() {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void M0(int i10, int i11) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void N0(int i10, byte[] bArr, int i11, int i12) {
        this.f95490f.N0(i10, bArr, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void O(int i10, byte[] bArr, int i11, int i12) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void U0(int i10, e eVar, int i11, int i12) {
        this.f95490f.U0(i10, eVar, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void W(int i10, OutputStream outputStream, int i11) throws IOException {
        this.f95490f.W(i10, outputStream, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void W0(int i10, int i11) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i10, int i11) {
        return new p(this.f95490f.a(i10, i11));
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void c1(int i10, ByteBuffer byteBuffer) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f95490f.capacity();
    }

    @Override // org.jboss.netty.buffer.e
    public e d0(int i10, int i11) {
        return this.f95490f.d0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new p(this);
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f95490f.factory();
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i10) {
        return this.f95490f.getByte(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i10, GatheringByteChannel gatheringByteChannel, int i11) throws IOException {
        return this.f95490f.getBytes(i10, gatheringByteChannel, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i10) {
        return this.f95490f.getInt(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i10) {
        return this.f95490f.getLong(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i10) {
        return this.f95490f.getShort(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i10) {
        return this.f95490f.getUnsignedMedium(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer h0(int i10, int i11) {
        return this.f95490f.h0(i10, i11).asReadOnlyBuffer();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return false;
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f95490f.isDirect();
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public ByteBuffer[] j0(int i10, int i11) {
        ByteBuffer[] byteBufferArrJ0 = this.f95490f.j0(i10, i11);
        for (int i12 = 0; i12 < byteBufferArrJ0.length; i12++) {
            byteBufferArrJ0[i12] = byteBufferArrJ0[i12].asReadOnlyBuffer();
        }
        return byteBufferArrJ0;
    }

    @Override // org.jboss.netty.buffer.e
    public void k0(int i10, int i11) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f95490f.order();
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, InputStream inputStream, int i11) throws IOException {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i10, int i11) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i10, long j10) {
        throw new ReadOnlyBufferException();
    }

    @Override // org.jboss.netty.buffer.e
    public void v0(int i10, ByteBuffer byteBuffer) {
        this.f95490f.v0(i10, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, ScatteringByteChannel scatteringByteChannel, int i11) throws IOException {
        throw new ReadOnlyBufferException();
    }

    private p(p pVar) {
        this.f95490f = pVar.f95490f;
        r0(pVar.readerIndex(), pVar.writerIndex());
    }
}
