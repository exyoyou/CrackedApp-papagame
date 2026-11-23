package org.jboss.netty.buffer;

import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes10.dex */
public class o extends m {
    public o(int i10) {
        super(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public void W0(int i10, int i11) {
        byte[] bArr = this.f95487f;
        bArr[i10] = (byte) i11;
        bArr[i10 + 1] = (byte) (i11 >>> 8);
    }

    @Override // org.jboss.netty.buffer.e
    public e d0(int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            int i12 = i10 + i11;
            byte[] bArr = this.f95487f;
            if (i12 <= bArr.length) {
                byte[] bArr2 = new byte[i11];
                System.arraycopy(bArr, i10, bArr2, 0, i11);
                return new o(bArr2);
            }
        }
        throw new IndexOutOfBoundsException("Too many bytes to copy - Need " + (i10 + i11) + ", maximum is " + this.f95487f.length);
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new o(this.f95487f, readerIndex(), writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return n.h(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i10) {
        byte[] bArr = this.f95487f;
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i10) {
        byte[] bArr = this.f95487f;
        return (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48) | ((255 & ((long) bArr[i10 + 7])) << 56);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i10) {
        byte[] bArr = this.f95487f;
        return (short) ((bArr[i10 + 1] << 8) | (bArr[i10] & 255));
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i10) {
        byte[] bArr = this.f95487f;
        return ((bArr[i10 + 2] & 255) << 16) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8);
    }

    @Override // org.jboss.netty.buffer.e
    public void k0(int i10, int i11) {
        byte[] bArr = this.f95487f;
        bArr[i10] = (byte) i11;
        bArr[i10 + 1] = (byte) (i11 >>> 8);
        bArr[i10 + 2] = (byte) (i11 >>> 16);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return ByteOrder.LITTLE_ENDIAN;
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i10, int i11) {
        byte[] bArr = this.f95487f;
        bArr[i10] = (byte) i11;
        bArr[i10 + 1] = (byte) (i11 >>> 8);
        bArr[i10 + 2] = (byte) (i11 >>> 16);
        bArr[i10 + 3] = (byte) (i11 >>> 24);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i10, long j10) {
        byte[] bArr = this.f95487f;
        bArr[i10] = (byte) j10;
        bArr[i10 + 1] = (byte) (j10 >>> 8);
        bArr[i10 + 2] = (byte) (j10 >>> 16);
        bArr[i10 + 3] = (byte) (j10 >>> 24);
        bArr[i10 + 4] = (byte) (j10 >>> 32);
        bArr[i10 + 5] = (byte) (j10 >>> 40);
        bArr[i10 + 6] = (byte) (j10 >>> 48);
        bArr[i10 + 7] = (byte) (j10 >>> 56);
    }

    public o(byte[] bArr) {
        super(bArr);
    }

    private o(byte[] bArr, int i10, int i11) {
        super(bArr, i10, i11);
    }
}
