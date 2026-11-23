package io.netty.handler.codec.serialization;

import io.netty.util.internal.ObjectUtil;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInput;
import java.io.StreamCorruptedException;

/* JADX INFO: loaded from: classes.dex */
public class ObjectDecoderInputStream extends InputStream implements ObjectInput {
    private final ClassResolver classResolver;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private final DataInputStream f91641in;
    private final int maxObjectSize;

    public ObjectDecoderInputStream(InputStream inputStream) {
        this(inputStream, (ClassLoader) null);
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public int available() throws IOException {
        return this.f91641in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable, java.io.ObjectInput
    public void close() throws IOException {
        this.f91641in.close();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.f91641in.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f91641in.markSupported();
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public int read() throws IOException {
        return this.f91641in.read();
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() throws IOException {
        return this.f91641in.readBoolean();
    }

    @Override // java.io.DataInput
    public final byte readByte() throws IOException {
        return this.f91641in.readByte();
    }

    @Override // java.io.DataInput
    public final char readChar() throws IOException {
        return this.f91641in.readChar();
    }

    @Override // java.io.DataInput
    public final double readDouble() throws IOException {
        return this.f91641in.readDouble();
    }

    @Override // java.io.DataInput
    public final float readFloat() throws IOException {
        return this.f91641in.readFloat();
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i10, int i11) throws IOException {
        this.f91641in.readFully(bArr, i10, i11);
    }

    @Override // java.io.DataInput
    public final int readInt() throws IOException {
        return this.f91641in.readInt();
    }

    @Override // java.io.DataInput
    @Deprecated
    public final String readLine() throws IOException {
        return this.f91641in.readLine();
    }

    @Override // java.io.DataInput
    public final long readLong() throws IOException {
        return this.f91641in.readLong();
    }

    @Override // java.io.ObjectInput
    public Object readObject() throws IOException, ClassNotFoundException {
        int i10 = readInt();
        if (i10 <= 0) {
            throw new StreamCorruptedException("invalid data length: " + i10);
        }
        if (i10 <= this.maxObjectSize) {
            return new CompactObjectInputStream(this.f91641in, this.classResolver).readObject();
        }
        throw new StreamCorruptedException("data length too big: " + i10 + " (max: " + this.maxObjectSize + ')');
    }

    @Override // java.io.DataInput
    public final short readShort() throws IOException {
        return this.f91641in.readShort();
    }

    @Override // java.io.DataInput
    public final String readUTF() throws IOException {
        return this.f91641in.readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() throws IOException {
        return this.f91641in.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws IOException {
        return this.f91641in.readUnsignedShort();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f91641in.reset();
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public long skip(long j10) throws IOException {
        return this.f91641in.skip(j10);
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i10) throws IOException {
        return this.f91641in.skipBytes(i10);
    }

    public ObjectDecoderInputStream(InputStream inputStream, ClassLoader classLoader) {
        this(inputStream, classLoader, 1048576);
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.f91641in.read(bArr, i10, i11);
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws IOException {
        this.f91641in.readFully(bArr);
    }

    public ObjectDecoderInputStream(InputStream inputStream, int i10) {
        this(inputStream, null, i10);
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public final int read(byte[] bArr) throws IOException {
        return this.f91641in.read(bArr);
    }

    public ObjectDecoderInputStream(InputStream inputStream, ClassLoader classLoader, int i10) {
        ObjectUtil.checkNotNull(inputStream, "in");
        ObjectUtil.checkPositive(i10, "maxObjectSize");
        if (inputStream instanceof DataInputStream) {
            this.f91641in = (DataInputStream) inputStream;
        } else {
            this.f91641in = new DataInputStream(inputStream);
        }
        this.classResolver = ClassResolvers.weakCachingResolver(classLoader);
        this.maxObjectSize = i10;
    }
}
