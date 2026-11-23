package com.googlecode.mp4parser;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public class f implements e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f33755d = 8192;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RandomAccessFile f33756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f33757c;

    public f(File file) throws IOException {
        this.f33756b = new RandomAccessFile(file, "r");
        this.f33757c = file.getName();
    }

    @Override // com.googlecode.mp4parser.e
    public void W(long j10) throws IOException {
        this.f33756b.seek(j10);
    }

    public int a(ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[byteBuffer.remaining()];
        int i10 = this.f33756b.read(bArr);
        byteBuffer.put(bArr, 0, i10);
        return i10;
    }

    @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33756b.close();
    }

    @Override // com.googlecode.mp4parser.e
    public long position() throws IOException {
        return this.f33756b.getFilePointer();
    }

    @Override // com.googlecode.mp4parser.e
    public ByteBuffer r(long j10, long j11) throws IOException {
        this.f33756b.seek(j10);
        byte[] bArr = new byte[com.googlecode.mp4parser.util.c.a(j11)];
        this.f33756b.readFully(bArr);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.googlecode.mp4parser.e
    public int read(ByteBuffer byteBuffer) throws IOException {
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[8192];
        int i10 = 0;
        int i11 = 0;
        while (i10 < iRemaining) {
            i11 = this.f33756b.read(bArr, 0, Math.min(iRemaining - i10, 8192));
            if (i11 < 0) {
                break;
            }
            i10 += i11;
            byteBuffer.put(bArr, 0, i11);
        }
        if (i11 >= 0 || i10 != 0) {
            return i10;
        }
        return -1;
    }

    @Override // com.googlecode.mp4parser.e
    public long size() throws IOException {
        return this.f33756b.length();
    }

    public String toString() {
        return this.f33757c;
    }

    @Override // com.googlecode.mp4parser.e
    public long w(long j10, long j11, WritableByteChannel writableByteChannel) throws IOException {
        return writableByteChannel.write(r(j10, j11));
    }
}
