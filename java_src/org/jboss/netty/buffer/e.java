package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes10.dex */
public interface e extends Comparable<e> {
    @Deprecated
    e A0(g gVar);

    @Deprecated
    int B0(g gVar);

    @Deprecated
    String C0(String str, g gVar);

    void D0(int i10, byte[] bArr);

    void E0(e eVar);

    void F0(byte[] bArr);

    void G0(int i10, e eVar, int i11, int i12);

    boolean I0();

    void J0(int i10, e eVar, int i11);

    void K0(e eVar, int i10, int i11);

    void L();

    @Deprecated
    e M(g gVar);

    void M0(int i10, int i11);

    e N(int i10);

    void N0(int i10, byte[] bArr, int i11, int i12);

    void O(int i10, byte[] bArr, int i11, int i12);

    void O0(byte[] bArr, int i10, int i11);

    int P0(g gVar);

    ByteBuffer Q0();

    int R0(e eVar);

    void T(e eVar);

    int T0(int i10, g gVar);

    void U(int i10, e eVar);

    void U0(int i10, e eVar, int i11, int i12);

    void V(byte[] bArr);

    void V0(int i10);

    void W(int i10, OutputStream outputStream, int i11) throws IOException;

    void W0(int i10, int i11);

    void X(int i10, e eVar, int i11);

    void X0();

    @Deprecated
    String Y(int i10, int i11, String str);

    void Y0(ByteBuffer byteBuffer);

    int Z(int i10, int i11, g gVar);

    void Z0(int i10);

    e a(int i10, int i11);

    void a0(e eVar, int i10);

    void a1(int i10, int i11);

    byte[] array();

    int arrayOffset();

    void b(int i10, int i11);

    void b0();

    void b1(OutputStream outputStream, int i10) throws IOException;

    int bytesBefore(byte b10);

    int bytesBefore(int i10, byte b10);

    int bytesBefore(int i10, int i11, byte b10);

    @Deprecated
    String c0(int i10, int i11, String str, g gVar);

    void c1(int i10, ByteBuffer byteBuffer);

    int capacity();

    void clear();

    e copy();

    e d0(int i10, int i11);

    e duplicate();

    e e0(int i10);

    boolean equals(Object obj);

    void f0(int i10);

    f factory();

    int g0(int i10, int i11, g gVar);

    byte getByte(int i10);

    int getBytes(int i10, GatheringByteChannel gatheringByteChannel, int i11) throws IOException;

    char getChar(int i10);

    double getDouble(int i10);

    float getFloat(int i10);

    int getInt(int i10);

    long getLong(int i10);

    int getMedium(int i10);

    short getShort(int i10);

    short getUnsignedByte(int i10);

    long getUnsignedInt(int i10);

    int getUnsignedMedium(int i10);

    int getUnsignedShort(int i10);

    ByteBuffer h0(int i10, int i11);

    boolean hasArray();

    int hashCode();

    void i0(ByteBuffer byteBuffer);

    int indexOf(int i10, int i11, byte b10);

    boolean isDirect();

    ByteBuffer[] j0(int i10, int i11);

    void k0(int i10, int i11);

    void l0();

    void m0(int i10);

    void n0(int i10, byte[] bArr);

    void o0(int i10, e eVar);

    ByteOrder order();

    void p0();

    void q0(e eVar, int i10, int i11);

    void r0(int i10, int i11);

    byte readByte();

    int readBytes(GatheringByteChannel gatheringByteChannel, int i10) throws IOException;

    char readChar();

    double readDouble();

    float readFloat();

    int readInt();

    long readLong();

    int readMedium();

    short readShort();

    short readUnsignedByte();

    long readUnsignedInt();

    int readUnsignedMedium();

    int readUnsignedShort();

    int readableBytes();

    int readerIndex();

    void s0(byte[] bArr, int i10, int i11);

    int setBytes(int i10, InputStream inputStream, int i11) throws IOException;

    int setBytes(int i10, ScatteringByteChannel scatteringByteChannel, int i11) throws IOException;

    void setDouble(int i10, double d10);

    void setFloat(int i10, float f10);

    void setInt(int i10, int i11);

    void setLong(int i10, long j10);

    void skipBytes(int i10);

    String toString();

    String toString(int i10, int i11, Charset charset);

    @Deprecated
    String toString(String str);

    String toString(Charset charset);

    void u0(int i10);

    void v0(int i10, ByteBuffer byteBuffer);

    void w0(e eVar, int i10);

    int writableBytes();

    void writeByte(int i10);

    int writeBytes(InputStream inputStream, int i10) throws IOException;

    int writeBytes(ScatteringByteChannel scatteringByteChannel, int i10) throws IOException;

    void writeChar(int i10);

    void writeDouble(double d10);

    void writeFloat(float f10);

    void writeInt(int i10);

    void writeLong(long j10);

    void writeShort(int i10);

    int writerIndex();

    ByteBuffer[] x0();

    e y0();

    boolean z0();
}
