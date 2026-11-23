package com.byazt.vnu;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 42})
public final class i extends FilterInputStream implements DataInput {
    public i(n nVar) {
        super(nVar);
    }

    public static int c(byte b10, byte b11, byte b12, byte b13) {
        return (b10 << BinaryMemcacheOpcodes.FLUSHQ) | ((b11 & 255) << 16) | ((b12 & 255) << 8) | (b13 & 255);
    }

    private byte tt() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        if (-1 != i10) {
            return (byte) i10;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        return readUnsignedByte() != 0;
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        return (byte) readUnsignedByte();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        return (char) readUnsignedShort();
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        uj.c(this, bArr);
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        byte bTt = tt();
        byte bTt2 = tt();
        return c(tt(), tt(), bTt2, bTt);
    }

    @Override // java.io.DataInput
    public String readLine() {
        throw new UnsupportedOperationException("readLine is not supported");
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        byte bTt = tt();
        byte bTt2 = tt();
        byte bTt3 = tt();
        byte bTt4 = tt();
        byte bTt5 = tt();
        byte bTt6 = tt();
        return c(tt(), tt(), bTt6, bTt5, bTt4, bTt3, bTt2, bTt);
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        return (short) readUnsignedShort();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        return new DataInputStream(((FilterInputStream) this).in).readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 >= 0) {
            return i10;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        return c((byte) 0, (byte) 0, tt(), tt());
    }

    @Override // java.io.DataInput
    public int skipBytes(int i10) throws IOException {
        return (int) ((FilterInputStream) this).in.skip(i10);
    }

    public static long c(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17) {
        return ((((long) b11) & 255) << 48) | ((((long) b10) & 255) << 56) | ((((long) b12) & 255) << 40) | ((((long) b13) & 255) << 32) | ((((long) b14) & 255) << 24) | ((((long) b15) & 255) << 16) | ((((long) b16) & 255) << 8) | (((long) b17) & 255);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        uj.c(this, bArr, i10, i11);
    }

    public n c() {
        return (n) ((FilterInputStream) this).in;
    }
}
