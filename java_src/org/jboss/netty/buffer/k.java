package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

/* JADX INFO: loaded from: classes10.dex */
public class k extends a implements s {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f95483f;

    public k(e eVar) {
        if (eVar == null) {
            throw new NullPointerException("buffer");
        }
        this.f95483f = eVar;
        r0(eVar.readerIndex(), eVar.writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i10, e eVar, int i11, int i12) {
        this.f95483f.G0(i10, eVar, i11, i12);
    }

    @Override // org.jboss.netty.buffer.s
    public e H0() {
        return this.f95483f;
    }

    @Override // org.jboss.netty.buffer.e
    public void M0(int i10, int i11) {
        this.f95483f.M0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void N0(int i10, byte[] bArr, int i11, int i12) {
        this.f95483f.N0(i10, bArr, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void O(int i10, byte[] bArr, int i11, int i12) {
        this.f95483f.O(i10, bArr, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void U0(int i10, e eVar, int i11, int i12) {
        this.f95483f.U0(i10, eVar, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void W(int i10, OutputStream outputStream, int i11) throws IOException {
        this.f95483f.W(i10, outputStream, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void W0(int i10, int i11) {
        this.f95483f.W0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i10, int i11) {
        return this.f95483f.a(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f95483f.array();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return this.f95483f.arrayOffset();
    }

    @Override // org.jboss.netty.buffer.e
    public void c1(int i10, ByteBuffer byteBuffer) {
        this.f95483f.c1(i10, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f95483f.capacity();
    }

    @Override // org.jboss.netty.buffer.e
    public e d0(int i10, int i11) {
        return this.f95483f.d0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new k(this);
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f95483f.factory();
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i10) {
        return this.f95483f.getByte(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i10, GatheringByteChannel gatheringByteChannel, int i11) throws IOException {
        return this.f95483f.getBytes(i10, gatheringByteChannel, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i10) {
        return this.f95483f.getInt(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i10) {
        return this.f95483f.getLong(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i10) {
        return this.f95483f.getShort(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i10) {
        return this.f95483f.getUnsignedMedium(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer h0(int i10, int i11) {
        return this.f95483f.h0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return this.f95483f.hasArray();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f95483f.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void k0(int i10, int i11) {
        this.f95483f.k0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f95483f.order();
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, InputStream inputStream, int i11) throws IOException {
        return this.f95483f.setBytes(i10, inputStream, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i10, int i11) {
        this.f95483f.setInt(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i10, long j10) {
        this.f95483f.setLong(i10, j10);
    }

    @Override // org.jboss.netty.buffer.e
    public void v0(int i10, ByteBuffer byteBuffer) {
        this.f95483f.v0(i10, byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, ScatteringByteChannel scatteringByteChannel, int i11) throws IOException {
        return this.f95483f.setBytes(i10, scatteringByteChannel, i11);
    }

    private k(k kVar) {
        this.f95483f = kVar.f95483f;
        r0(kVar.readerIndex(), kVar.writerIndex());
    }
}
