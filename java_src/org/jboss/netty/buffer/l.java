package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

/* JADX INFO: loaded from: classes10.dex */
public class l extends a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f f95484f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ByteOrder f95485g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private e f95486h;

    public l(int i10) {
        this(ByteOrder.BIG_ENDIAN, i10);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i10, e eVar, int i11, int i12) {
        this.f95486h.G0(i10, eVar, i11, i12);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void K0(e eVar, int i10, int i11) {
        Z0(i11);
        super.K0(eVar, i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void M0(int i10, int i11) {
        this.f95486h.M0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void N0(int i10, byte[] bArr, int i11, int i12) {
        this.f95486h.N0(i10, bArr, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void O(int i10, byte[] bArr, int i11, int i12) {
        this.f95486h.O(i10, bArr, i11, i12);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void O0(byte[] bArr, int i10, int i11) {
        Z0(i11);
        super.O0(bArr, i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void U0(int i10, e eVar, int i11, int i12) {
        this.f95486h.U0(i10, eVar, i11, i12);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void V0(int i10) {
        Z0(3);
        super.V0(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public void W(int i10, OutputStream outputStream, int i11) throws IOException {
        this.f95486h.W(i10, outputStream, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void W0(int i10, int i11) {
        this.f95486h.W0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void Y0(ByteBuffer byteBuffer) {
        Z0(byteBuffer.remaining());
        super.Y0(byteBuffer);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void Z0(int i10) {
        if (i10 <= writableBytes()) {
            return;
        }
        int iCapacity = capacity() == 0 ? 1 : capacity();
        int iWriterIndex = writerIndex() + i10;
        while (iCapacity < iWriterIndex) {
            iCapacity <<= 1;
            if (iCapacity == 0) {
                throw new IllegalStateException("Maximum size of 2gb exceeded");
            }
        }
        e eVarA = factory().a(order(), iCapacity);
        eVarA.K0(this.f95486h, 0, writerIndex());
        this.f95486h = eVarA;
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i10, int i11) {
        if (i10 == 0) {
            return i11 == 0 ? h.f95466c : new r(this, i11);
        }
        return i11 == 0 ? h.f95466c : new q(this, i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f95486h.array();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return this.f95486h.arrayOffset();
    }

    @Override // org.jboss.netty.buffer.e
    public void c1(int i10, ByteBuffer byteBuffer) {
        this.f95486h.c1(i10, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f95486h.capacity();
    }

    @Override // org.jboss.netty.buffer.e
    public e d0(int i10, int i11) {
        l lVar = new l(order(), Math.max(i11, 64), factory());
        lVar.f95486h = this.f95486h.d0(i10, i11);
        lVar.r0(0, i11);
        return lVar;
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new k(this);
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f95484f;
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i10) {
        return this.f95486h.getByte(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i10, GatheringByteChannel gatheringByteChannel, int i11) throws IOException {
        return this.f95486h.getBytes(i10, gatheringByteChannel, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i10) {
        return this.f95486h.getInt(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i10) {
        return this.f95486h.getLong(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i10) {
        return this.f95486h.getShort(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i10) {
        return this.f95486h.getUnsignedMedium(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer h0(int i10, int i11) {
        return this.f95486h.h0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return this.f95486h.hasArray();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f95486h.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void k0(int i10, int i11) {
        this.f95486h.k0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void m0(int i10) {
        Z0(i10);
        super.m0(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f95485g;
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, InputStream inputStream, int i11) throws IOException {
        return this.f95486h.setBytes(i10, inputStream, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i10, int i11) {
        this.f95486h.setInt(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i10, long j10) {
        this.f95486h.setLong(i10, j10);
    }

    @Override // org.jboss.netty.buffer.e
    public void v0(int i10, ByteBuffer byteBuffer) {
        this.f95486h.v0(i10, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void writeByte(int i10) {
        Z0(1);
        super.writeByte(i10);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public int writeBytes(InputStream inputStream, int i10) throws IOException {
        Z0(i10);
        return super.writeBytes(inputStream, i10);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void writeInt(int i10) {
        Z0(4);
        super.writeInt(i10);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void writeLong(long j10) {
        Z0(8);
        super.writeLong(j10);
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void writeShort(int i10) {
        Z0(2);
        super.writeShort(i10);
    }

    public l(ByteOrder byteOrder, int i10) {
        this(byteOrder, i10, n.h(byteOrder));
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, ScatteringByteChannel scatteringByteChannel, int i11) throws IOException {
        return this.f95486h.setBytes(i10, scatteringByteChannel, i11);
    }

    public l(ByteOrder byteOrder, int i10, f fVar) {
        if (i10 < 0) {
            throw new IllegalArgumentException("estimatedLength: " + i10);
        }
        if (byteOrder == null) {
            throw new NullPointerException("endianness");
        }
        if (fVar != null) {
            this.f95484f = fVar;
            this.f95485g = byteOrder;
            this.f95486h = fVar.a(order(), i10);
            return;
        }
        throw new NullPointerException("factory");
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        Z0(i10);
        return super.writeBytes(scatteringByteChannel, i10);
    }
}
