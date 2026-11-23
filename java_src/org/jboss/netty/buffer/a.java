package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import java.util.NoSuchElementException;
import kotlin.UShort;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f95446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f95447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f95448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f95449e;

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public e A0(g gVar) {
        int iZ = Z(this.f95446b, this.f95447c, gVar);
        if (iZ >= 0) {
            return e0(iZ - this.f95446b);
        }
        throw new NoSuchElementException();
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public int B0(g gVar) {
        int i10 = this.f95446b;
        int iZ = Z(i10, this.f95447c, gVar);
        if (iZ < 0) {
            throw new NoSuchElementException();
        }
        f0(iZ);
        return iZ - i10;
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public String C0(String str, g gVar) {
        return c0(this.f95446b, readableBytes(), str, gVar);
    }

    @Override // org.jboss.netty.buffer.e
    public void D0(int i10, byte[] bArr) {
        N0(i10, bArr, 0, bArr.length);
    }

    @Override // org.jboss.netty.buffer.e
    public void E0(e eVar) {
        a0(eVar, eVar.readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void F0(byte[] bArr) {
        s0(bArr, 0, bArr.length);
    }

    @Override // org.jboss.netty.buffer.e
    public boolean I0() {
        return writableBytes() > 0;
    }

    @Override // org.jboss.netty.buffer.e
    public void J0(int i10, e eVar, int i11) {
        if (i11 <= eVar.readableBytes()) {
            G0(i10, eVar, eVar.readerIndex(), i11);
            eVar.f0(eVar.readerIndex() + i11);
            return;
        }
        throw new IndexOutOfBoundsException("Too many bytes to write: Need " + i11 + ", maximum is " + eVar.readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void K0(e eVar, int i10, int i11) {
        G0(this.f95447c, eVar, i10, i11);
        this.f95447c += i11;
    }

    @Override // org.jboss.netty.buffer.e
    public void L() {
        int i10 = this.f95446b;
        if (i10 == 0) {
            return;
        }
        G0(0, this, i10, this.f95447c - i10);
        int i11 = this.f95447c;
        int i12 = this.f95446b;
        this.f95447c = i11 - i12;
        this.f95448d = Math.max(this.f95448d - i12, 0);
        this.f95449e = Math.max(this.f95449e - this.f95446b, 0);
        this.f95446b = 0;
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public e M(g gVar) {
        int iZ = Z(this.f95446b, this.f95447c, gVar);
        if (iZ >= 0) {
            return N(iZ - this.f95446b);
        }
        throw new NoSuchElementException();
    }

    @Override // org.jboss.netty.buffer.e
    public e N(int i10) {
        c(i10);
        if (i10 == 0) {
            return h.f95466c;
        }
        e eVarA = factory().a(order(), i10);
        eVarA.K0(this, this.f95446b, i10);
        this.f95446b += i10;
        return eVarA;
    }

    @Override // org.jboss.netty.buffer.e
    public void O0(byte[] bArr, int i10, int i11) {
        O(this.f95447c, bArr, i10, i11);
        this.f95447c += i11;
    }

    @Override // org.jboss.netty.buffer.e
    public int P0(g gVar) {
        return g0(readerIndex(), readableBytes(), gVar);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer Q0() {
        return h0(this.f95446b, readableBytes());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: R0, reason: merged with bridge method [inline-methods] */
    public int compareTo(e eVar) {
        return h.c(this, eVar);
    }

    @Override // org.jboss.netty.buffer.e
    public void T(e eVar) {
        w0(eVar, eVar.writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public int T0(int i10, g gVar) {
        c(i10);
        return g0(readerIndex(), i10, gVar);
    }

    @Override // org.jboss.netty.buffer.e
    public void U(int i10, e eVar) {
        X(i10, eVar, eVar.writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void V(byte[] bArr) {
        O0(bArr, 0, bArr.length);
    }

    @Override // org.jboss.netty.buffer.e
    public void V0(int i10) {
        k0(this.f95447c, i10);
        this.f95447c += 3;
    }

    @Override // org.jboss.netty.buffer.e
    public void X(int i10, e eVar, int i11) {
        if (i11 <= eVar.writableBytes()) {
            U0(i10, eVar, eVar.writerIndex(), i11);
            eVar.u0(eVar.writerIndex() + i11);
            return;
        }
        throw new IndexOutOfBoundsException("Too many bytes to be read: Need " + i11 + ", maximum is " + eVar.writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void X0() {
        this.f95449e = this.f95447c;
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public String Y(int i10, int i11, String str) {
        return toString(i10, i11, Charset.forName(str));
    }

    @Override // org.jboss.netty.buffer.e
    public void Y0(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        c1(this.f95447c, byteBuffer);
        this.f95447c += iRemaining;
    }

    @Override // org.jboss.netty.buffer.e
    public int Z(int i10, int i11, g gVar) {
        return h.R(this, i10, i11, gVar);
    }

    @Override // org.jboss.netty.buffer.e
    public void Z0(int i10) {
        if (i10 <= writableBytes()) {
            return;
        }
        throw new IndexOutOfBoundsException("Writable bytes exceeded: Got " + i10 + ", maximum is " + writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void a0(e eVar, int i10) {
        if (i10 <= eVar.readableBytes()) {
            K0(eVar, eVar.readerIndex(), i10);
            eVar.f0(eVar.readerIndex() + i10);
            return;
        }
        throw new IndexOutOfBoundsException("Too many bytes to write - Need " + i10 + ", maximum is " + eVar.readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void a1(int i10, int i11) {
        if (i11 == 0) {
            return;
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("length must be 0 or greater than 0.");
        }
        int i12 = i11 & 7;
        for (int i13 = i11 >>> 3; i13 > 0; i13--) {
            setLong(i10, 0L);
            i10 += 8;
        }
        if (i12 == 4) {
            setInt(i10, 0);
            return;
        }
        if (i12 < 4) {
            while (i12 > 0) {
                M0(i10, 0);
                i10++;
                i12--;
            }
            return;
        }
        setInt(i10, 0);
        int i14 = i10 + 4;
        for (int i15 = i12 - 4; i15 > 0; i15--) {
            M0(i14, 0);
            i14++;
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void b(int i10, int i11) {
        W0(i10, i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void b0() {
        this.f95447c = this.f95449e;
    }

    @Override // org.jboss.netty.buffer.e
    public void b1(OutputStream outputStream, int i10) throws IOException {
        c(i10);
        W(this.f95446b, outputStream, i10);
        this.f95446b += i10;
    }

    @Override // org.jboss.netty.buffer.e
    public int bytesBefore(byte b10) {
        return bytesBefore(readerIndex(), readableBytes(), b10);
    }

    protected void c(int i10) {
        if (readableBytes() >= i10) {
            return;
        }
        throw new IndexOutOfBoundsException("Not enough readable bytes - Need " + i10 + ", maximum is " + readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public String c0(int i10, int i11, String str, g gVar) {
        if (gVar == null) {
            return Y(i10, i11, str);
        }
        int iZ = Z(i10, i10 + i11, gVar);
        return iZ < 0 ? Y(i10, i11, str) : Y(i10, iZ - i10, str);
    }

    @Override // org.jboss.netty.buffer.e
    public void clear() {
        this.f95447c = 0;
        this.f95446b = 0;
    }

    @Override // org.jboss.netty.buffer.e
    public e copy() {
        return d0(this.f95446b, readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public e e0(int i10) {
        e eVarA = a(this.f95446b, i10);
        this.f95446b += i10;
        return eVarA;
    }

    @Override // org.jboss.netty.buffer.e
    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return h.J(this, (e) obj);
        }
        return false;
    }

    @Override // org.jboss.netty.buffer.e
    public void f0(int i10) {
        if (i10 < 0 || i10 > this.f95447c) {
            throw new IndexOutOfBoundsException();
        }
        this.f95446b = i10;
    }

    @Override // org.jboss.netty.buffer.e
    public int g0(int i10, int i11, g gVar) {
        int iZ = Z(i10, i11 + i10, gVar);
        if (iZ < 0) {
            return -1;
        }
        return iZ - i10;
    }

    @Override // org.jboss.netty.buffer.e
    public char getChar(int i10) {
        return (char) getShort(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public double getDouble(int i10) {
        return Double.longBitsToDouble(getLong(i10));
    }

    @Override // org.jboss.netty.buffer.e
    public float getFloat(int i10) {
        return Float.intBitsToFloat(getInt(i10));
    }

    @Override // org.jboss.netty.buffer.e
    public int getMedium(int i10) {
        int unsignedMedium = getUnsignedMedium(i10);
        return (8388608 & unsignedMedium) != 0 ? unsignedMedium | (-16777216) : unsignedMedium;
    }

    @Override // org.jboss.netty.buffer.e
    public short getUnsignedByte(int i10) {
        return (short) (getByte(i10) & 255);
    }

    @Override // org.jboss.netty.buffer.e
    public long getUnsignedInt(int i10) {
        return ((long) getInt(i10)) & 4294967295L;
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedShort(int i10) {
        return getShort(i10) & UShort.MAX_VALUE;
    }

    @Override // org.jboss.netty.buffer.e
    public int hashCode() {
        return h.M(this);
    }

    @Override // org.jboss.netty.buffer.e
    public void i0(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        c(iRemaining);
        v0(this.f95446b, byteBuffer);
        this.f95446b += iRemaining;
    }

    @Override // org.jboss.netty.buffer.e
    public int indexOf(int i10, int i11, byte b10) {
        return h.Q(this, i10, i11, b10);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer[] j0(int i10, int i11) {
        return new ByteBuffer[]{h0(i10, i11)};
    }

    @Override // org.jboss.netty.buffer.e
    public void l0() {
        this.f95448d = this.f95446b;
    }

    @Override // org.jboss.netty.buffer.e
    public void m0(int i10) {
        if (i10 == 0) {
            return;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("length must be 0 or greater than 0.");
        }
        int i11 = i10 & 7;
        for (int i12 = i10 >>> 3; i12 > 0; i12--) {
            writeLong(0L);
        }
        if (i11 == 4) {
            writeInt(0);
            return;
        }
        if (i11 < 4) {
            while (i11 > 0) {
                writeByte(0);
                i11--;
            }
        } else {
            writeInt(0);
            for (int i13 = i11 - 4; i13 > 0; i13--) {
                writeByte(0);
            }
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void n0(int i10, byte[] bArr) {
        O(i10, bArr, 0, bArr.length);
    }

    @Override // org.jboss.netty.buffer.e
    public void o0(int i10, e eVar) {
        J0(i10, eVar, eVar.readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public void p0() {
        f0(this.f95448d);
    }

    @Override // org.jboss.netty.buffer.e
    public void q0(e eVar, int i10, int i11) {
        c(i11);
        U0(this.f95446b, eVar, i10, i11);
        this.f95446b += i11;
    }

    @Override // org.jboss.netty.buffer.e
    public void r0(int i10, int i11) {
        if (i10 >= 0 && i10 <= i11 && i11 <= capacity()) {
            this.f95446b = i10;
            this.f95447c = i11;
            return;
        }
        throw new IndexOutOfBoundsException("Invalid writerIndex: " + i11 + " - Maximum is " + i10 + " or " + capacity());
    }

    @Override // org.jboss.netty.buffer.e
    public byte readByte() {
        int i10 = this.f95446b;
        if (i10 != this.f95447c) {
            this.f95446b = i10 + 1;
            return getByte(i10);
        }
        throw new IndexOutOfBoundsException("Readable byte limit exceeded: " + this.f95446b);
    }

    @Override // org.jboss.netty.buffer.e
    public int readBytes(GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        c(i10);
        int bytes = getBytes(this.f95446b, gatheringByteChannel, i10);
        this.f95446b += bytes;
        return bytes;
    }

    @Override // org.jboss.netty.buffer.e
    public char readChar() {
        return (char) readShort();
    }

    @Override // org.jboss.netty.buffer.e
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // org.jboss.netty.buffer.e
    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // org.jboss.netty.buffer.e
    public int readInt() {
        c(4);
        int i10 = getInt(this.f95446b);
        this.f95446b += 4;
        return i10;
    }

    @Override // org.jboss.netty.buffer.e
    public long readLong() {
        c(8);
        long j10 = getLong(this.f95446b);
        this.f95446b += 8;
        return j10;
    }

    @Override // org.jboss.netty.buffer.e
    public int readMedium() {
        int unsignedMedium = readUnsignedMedium();
        return (8388608 & unsignedMedium) != 0 ? unsignedMedium | (-16777216) : unsignedMedium;
    }

    @Override // org.jboss.netty.buffer.e
    public short readShort() {
        c(2);
        short s10 = getShort(this.f95446b);
        this.f95446b += 2;
        return s10;
    }

    @Override // org.jboss.netty.buffer.e
    public short readUnsignedByte() {
        return (short) (readByte() & 255);
    }

    @Override // org.jboss.netty.buffer.e
    public long readUnsignedInt() {
        return ((long) readInt()) & 4294967295L;
    }

    @Override // org.jboss.netty.buffer.e
    public int readUnsignedMedium() {
        c(3);
        int unsignedMedium = getUnsignedMedium(this.f95446b);
        this.f95446b += 3;
        return unsignedMedium;
    }

    @Override // org.jboss.netty.buffer.e
    public int readUnsignedShort() {
        return readShort() & UShort.MAX_VALUE;
    }

    @Override // org.jboss.netty.buffer.e
    public int readableBytes() {
        return this.f95447c - this.f95446b;
    }

    @Override // org.jboss.netty.buffer.e
    public int readerIndex() {
        return this.f95446b;
    }

    @Override // org.jboss.netty.buffer.e
    public void s0(byte[] bArr, int i10, int i11) {
        c(i11);
        N0(this.f95446b, bArr, i10, i11);
        this.f95446b += i11;
    }

    @Override // org.jboss.netty.buffer.e
    public void setDouble(int i10, double d10) {
        setLong(i10, Double.doubleToRawLongBits(d10));
    }

    @Override // org.jboss.netty.buffer.e
    public void setFloat(int i10, float f10) {
        setInt(i10, Float.floatToRawIntBits(f10));
    }

    @Override // org.jboss.netty.buffer.e
    public void skipBytes(int i10) {
        int i11 = this.f95446b + i10;
        if (i11 <= this.f95447c) {
            this.f95446b = i11;
            return;
        }
        throw new IndexOutOfBoundsException("Readable bytes exceeded - Need " + i11 + ", maximum is " + this.f95447c);
    }

    @Override // org.jboss.netty.buffer.e
    public String toString(Charset charset) {
        return toString(this.f95446b, readableBytes(), charset);
    }

    @Override // org.jboss.netty.buffer.e
    public void u0(int i10) {
        if (i10 >= this.f95446b && i10 <= capacity()) {
            this.f95447c = i10;
            return;
        }
        throw new IndexOutOfBoundsException("Invalid readerIndex: " + this.f95446b + " - Maximum is " + i10);
    }

    @Override // org.jboss.netty.buffer.e
    public void w0(e eVar, int i10) {
        if (i10 <= eVar.writableBytes()) {
            q0(eVar, eVar.writerIndex(), i10);
            eVar.u0(eVar.writerIndex() + i10);
            return;
        }
        throw new IndexOutOfBoundsException("Too many bytes to be read: Need " + i10 + ", maximum is " + eVar.writableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public int writableBytes() {
        return capacity() - this.f95447c;
    }

    @Override // org.jboss.netty.buffer.e
    public void writeByte(int i10) {
        int i11 = this.f95447c;
        this.f95447c = i11 + 1;
        M0(i11, i10);
    }

    @Override // org.jboss.netty.buffer.e
    public int writeBytes(InputStream inputStream, int i10) throws IOException {
        int bytes = setBytes(this.f95447c, inputStream, i10);
        if (bytes > 0) {
            this.f95447c += bytes;
        }
        return bytes;
    }

    @Override // org.jboss.netty.buffer.e
    public void writeChar(int i10) {
        writeShort(i10);
    }

    @Override // org.jboss.netty.buffer.e
    public void writeDouble(double d10) {
        writeLong(Double.doubleToRawLongBits(d10));
    }

    @Override // org.jboss.netty.buffer.e
    public void writeFloat(float f10) {
        writeInt(Float.floatToRawIntBits(f10));
    }

    @Override // org.jboss.netty.buffer.e
    public void writeInt(int i10) {
        setInt(this.f95447c, i10);
        this.f95447c += 4;
    }

    @Override // org.jboss.netty.buffer.e
    public void writeLong(long j10) {
        setLong(this.f95447c, j10);
        this.f95447c += 8;
    }

    @Override // org.jboss.netty.buffer.e
    public void writeShort(int i10) {
        W0(this.f95447c, i10);
        this.f95447c += 2;
    }

    @Override // org.jboss.netty.buffer.e
    public int writerIndex() {
        return this.f95447c;
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer[] x0() {
        return j0(this.f95446b, readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public e y0() {
        return a(this.f95446b, readableBytes());
    }

    @Override // org.jboss.netty.buffer.e
    public boolean z0() {
        return readableBytes() > 0;
    }

    @Override // org.jboss.netty.buffer.e
    public int bytesBefore(int i10, byte b10) {
        c(i10);
        return bytesBefore(readerIndex(), i10, b10);
    }

    @Override // org.jboss.netty.buffer.e
    public String toString(int i10, int i11, Charset charset) {
        return i11 == 0 ? "" : h.z(h0(i10, i11), charset);
    }

    @Override // org.jboss.netty.buffer.e
    @Deprecated
    public String toString(String str) {
        return toString(Charset.forName(str));
    }

    @Override // org.jboss.netty.buffer.e
    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        int bytes = setBytes(this.f95447c, scatteringByteChannel, i10);
        if (bytes > 0) {
            this.f95447c += bytes;
        }
        return bytes;
    }

    @Override // org.jboss.netty.buffer.e
    public int bytesBefore(int i10, int i11, byte b10) {
        int iIndexOf = indexOf(i10, i11 + i10, b10);
        if (iIndexOf < 0) {
            return -1;
        }
        return iIndexOf - i10;
    }

    @Override // org.jboss.netty.buffer.e
    public String toString() {
        return getClass().getSimpleName() + "(ridx=" + this.f95446b + ", widx=" + this.f95447c + ", cap=" + capacity() + ')';
    }
}
