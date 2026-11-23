package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

/* JADX INFO: loaded from: classes10.dex */
public abstract class m extends a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final byte[] f95487f;

    protected m(int i10) {
        this(new byte[i10], 0, 0);
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i10, e eVar, int i11, int i12) {
        if (eVar instanceof m) {
            O(i10, ((m) eVar).f95487f, i11, i12);
        } else {
            eVar.N0(i11, this.f95487f, i10, i12);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void M0(int i10, int i11) {
        this.f95487f[i10] = (byte) i11;
    }

    @Override // org.jboss.netty.buffer.e
    public void N0(int i10, byte[] bArr, int i11, int i12) {
        System.arraycopy(this.f95487f, i10, bArr, i11, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void O(int i10, byte[] bArr, int i11, int i12) {
        System.arraycopy(bArr, i11, this.f95487f, i10, i12);
    }

    @Override // org.jboss.netty.buffer.e
    public void U0(int i10, e eVar, int i11, int i12) {
        if (eVar instanceof m) {
            N0(i10, ((m) eVar).f95487f, i11, i12);
        } else {
            eVar.O(i11, this.f95487f, i10, i12);
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void W(int i10, OutputStream outputStream, int i11) throws IOException {
        outputStream.write(this.f95487f, i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i10, int i11) {
        if (i10 != 0) {
            return i11 == 0 ? h.f95466c : new q(this, i10, i11);
        }
        if (i11 == 0) {
            return h.f95466c;
        }
        if (i11 != this.f95487f.length) {
            return new r(this, i11);
        }
        e eVarDuplicate = duplicate();
        eVarDuplicate.r0(0, i11);
        return eVarDuplicate;
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        return this.f95487f;
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        return 0;
    }

    @Override // org.jboss.netty.buffer.e
    public void c1(int i10, ByteBuffer byteBuffer) {
        byteBuffer.get(this.f95487f, i10, byteBuffer.remaining());
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f95487f.length;
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i10) {
        return this.f95487f[i10];
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i10, GatheringByteChannel gatheringByteChannel, int i11) throws IOException {
        return gatheringByteChannel.write(ByteBuffer.wrap(this.f95487f, i10, i11));
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer h0(int i10, int i11) {
        return ByteBuffer.wrap(this.f95487f, i10, i11).order(order());
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return true;
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return false;
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, InputStream inputStream, int i11) throws IOException {
        int i12 = 0;
        do {
            int i13 = inputStream.read(this.f95487f, i10, i11);
            if (i13 >= 0) {
                i12 += i13;
                i10 += i13;
                i11 -= i13;
            } else if (i12 == 0) {
                return -1;
            }
        } while (i11 > 0);
        return i12;
    }

    @Override // org.jboss.netty.buffer.e
    public void v0(int i10, ByteBuffer byteBuffer) {
        byteBuffer.put(this.f95487f, i10, Math.min(capacity() - i10, byteBuffer.remaining()));
    }

    protected m(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, ScatteringByteChannel scatteringByteChannel, int i11) throws IOException {
        int i12;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f95487f, i10, i11);
        int i13 = 0;
        do {
            try {
                i12 = scatteringByteChannel.read(byteBufferWrap);
            } catch (ClosedChannelException unused) {
                i12 = -1;
            }
            if (i12 < 0) {
                if (i13 == 0) {
                    return -1;
                }
            } else {
                if (i12 == 0) {
                    break;
                }
                i13 += i12;
            }
        } while (i13 < i11);
        return i13;
    }

    protected m(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            this.f95487f = bArr;
            r0(i10, i11);
            return;
        }
        throw new NullPointerException("array");
    }
}
