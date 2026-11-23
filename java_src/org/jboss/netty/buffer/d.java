package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

/* JADX INFO: loaded from: classes10.dex */
public class d extends a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ByteBuffer f95451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ByteOrder f95452g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f95453h;

    public d(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new NullPointerException("buffer");
        }
        ByteOrder byteOrderOrder = byteBuffer.order();
        this.f95452g = byteOrderOrder;
        this.f95451f = byteBuffer.slice().order(byteOrderOrder);
        int iRemaining = byteBuffer.remaining();
        this.f95453h = iRemaining;
        u0(iRemaining);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i10, e eVar, int i11, int i12) {
        if (eVar instanceof d) {
            ByteBuffer byteBufferDuplicate = ((d) eVar).f95451f.duplicate();
            byteBufferDuplicate.limit(i12 + i11).position(i11);
            c1(i10, byteBufferDuplicate);
        } else if (this.f95451f.hasArray()) {
            eVar.N0(i11, this.f95451f.array(), i10 + this.f95451f.arrayOffset(), i12);
        } else {
            eVar.U0(i11, this, i10, i12);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void M0(int i10, int i11) {
        this.f95451f.put(i10, (byte) i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void N0(int i10, byte[] bArr, int i11, int i12) {
        ByteBuffer byteBufferDuplicate = this.f95451f.duplicate();
        int i13 = i10 + i12;
        try {
            byteBufferDuplicate.limit(i13).position(i10);
            byteBufferDuplicate.get(bArr, i11, i12);
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + i13 + ", maximum is " + byteBufferDuplicate.limit());
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void O(int i10, byte[] bArr, int i11, int i12) {
        ByteBuffer byteBufferDuplicate = this.f95451f.duplicate();
        byteBufferDuplicate.limit(i10 + i12).position(i10);
        byteBufferDuplicate.put(bArr, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void U0(int i10, e eVar, int i11, int i12) {
        if (eVar instanceof d) {
            ByteBuffer byteBufferDuplicate = ((d) eVar).f95451f.duplicate();
            byteBufferDuplicate.limit(i12 + i11).position(i11);
            v0(i10, byteBufferDuplicate);
        } else if (this.f95451f.hasArray()) {
            eVar.O(i11, this.f95451f.array(), i10 + this.f95451f.arrayOffset(), i12);
        } else {
            eVar.G0(i11, this, i10, i12);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void W(int i10, OutputStream outputStream, int i11) throws IOException {
        if (i11 == 0) {
            return;
        }
        if (this.f95451f.hasArray()) {
            outputStream.write(this.f95451f.array(), i10 + this.f95451f.arrayOffset(), i11);
            return;
        }
        byte[] bArr = new byte[i11];
        ((ByteBuffer) this.f95451f.duplicate().position(i10)).get(bArr);
        outputStream.write(bArr);
    }

    @Override // org.jboss.netty.buffer.e
    public void W0(int i10, int i11) {
        this.f95451f.putShort(i10, (short) i11);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i10, int i11) {
        if (i10 != 0 || i11 != capacity()) {
            return (i10 < 0 || i11 != 0) ? new d(((ByteBuffer) this.f95451f.duplicate().position(i10).limit(i10 + i11)).order(order())) : h.f95466c;
        }
        e eVarDuplicate = duplicate();
        eVarDuplicate.r0(0, i11);
        return eVarDuplicate;
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f95451f.array();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return this.f95451f.arrayOffset();
    }

    @Override // org.jboss.netty.buffer.e
    public void c1(int i10, ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = this.f95451f.duplicate();
        byteBufferDuplicate.limit(byteBuffer.remaining() + i10).position(i10);
        byteBufferDuplicate.put(byteBuffer);
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f95453h;
    }

    @Override // org.jboss.netty.buffer.e
    public e d0(int i10, int i11) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) this.f95451f.duplicate().position(i10).limit(i10 + i11);
            ByteBuffer byteBufferAllocateDirect = this.f95451f.isDirect() ? ByteBuffer.allocateDirect(i11) : ByteBuffer.allocate(i11);
            byteBufferAllocateDirect.put(byteBuffer);
            byteBufferAllocateDirect.order(order());
            byteBufferAllocateDirect.clear();
            return new d(byteBufferAllocateDirect);
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + (i10 + i11));
        }
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new d(this);
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return this.f95451f.isDirect() ? j.j(order()) : n.h(order());
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i10) {
        return this.f95451f.get(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i10, GatheringByteChannel gatheringByteChannel, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        return gatheringByteChannel.write((ByteBuffer) this.f95451f.duplicate().position(i10).limit(i10 + i11));
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i10) {
        return this.f95451f.getInt(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i10) {
        return this.f95451f.getLong(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i10) {
        return this.f95451f.getShort(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i10) {
        return (getByte(i10 + 2) & 255) | ((getByte(i10) & 255) << 16) | ((getByte(i10 + 1) & 255) << 8);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer h0(int i10, int i11) {
        return (i10 == 0 && i11 == capacity()) ? this.f95451f.duplicate().order(order()) : ((ByteBuffer) this.f95451f.duplicate().position(i10).limit(i10 + i11)).slice().order(order());
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return this.f95451f.hasArray();
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return this.f95451f.isDirect();
    }

    @Override // org.jboss.netty.buffer.e
    public void k0(int i10, int i11) {
        M0(i10, (byte) (i11 >>> 16));
        M0(i10 + 1, (byte) (i11 >>> 8));
        M0(i10 + 2, (byte) i11);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f95452g;
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, InputStream inputStream, int i11) throws IOException {
        int i12 = 0;
        if (this.f95451f.hasArray()) {
            int iArrayOffset = i10 + this.f95451f.arrayOffset();
            do {
                int i13 = inputStream.read(this.f95451f.array(), iArrayOffset, i11);
                if (i13 < 0) {
                    if (i12 == 0) {
                        return -1;
                    }
                    return i12;
                }
                i12 += i13;
                iArrayOffset += i13;
                i11 -= i13;
            } while (i11 > 0);
            return i12;
        }
        byte[] bArr = new byte[i11];
        int i14 = 0;
        do {
            int i15 = inputStream.read(bArr, i12, i11 - i12);
            if (i15 < 0) {
                if (i14 != 0) {
                    break;
                }
                return -1;
            }
            i14 += i15;
            i12 += i14;
        } while (i12 < i11);
        int i16 = i14;
        ((ByteBuffer) this.f95451f.duplicate().position(i10)).put(bArr);
        return i16;
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i10, int i11) {
        this.f95451f.putInt(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i10, long j10) {
        this.f95451f.putLong(i10, j10);
    }

    @Override // org.jboss.netty.buffer.e
    public void v0(int i10, ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = this.f95451f.duplicate();
        int iMin = Math.min(capacity() - i10, byteBuffer.remaining()) + i10;
        try {
            byteBufferDuplicate.limit(iMin).position(i10);
            byteBuffer.put(byteBufferDuplicate);
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + iMin + ", maximum is " + byteBufferDuplicate.limit());
        }
    }

    private d(d dVar) {
        this.f95451f = dVar.f95451f;
        this.f95452g = dVar.f95452g;
        this.f95453h = dVar.f95453h;
        r0(dVar.readerIndex(), dVar.writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, ScatteringByteChannel scatteringByteChannel, int i11) throws IOException {
        int i12;
        ByteBuffer byteBuffer = (ByteBuffer) this.f95451f.duplicate().limit(i10 + i11).position(i10);
        int i13 = 0;
        while (i13 < i11) {
            try {
                i12 = scatteringByteChannel.read(byteBuffer);
            } catch (ClosedChannelException unused) {
                i12 = -1;
            }
            if (i12 < 0) {
                if (i13 == 0) {
                    return -1;
                }
                return i13;
            }
            if (i12 == 0) {
                break;
            }
            i13 += i12;
        }
        return i13;
    }
}
