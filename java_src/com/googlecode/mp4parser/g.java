package com.googlecode.mp4parser;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public class g implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    FileChannel f33758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f33759c;

    public g(File file) throws FileNotFoundException {
        this.f33758b = new FileInputStream(file).getChannel();
        this.f33759c = file.getName();
    }

    @Override // com.googlecode.mp4parser.e
    public void W(long j10) throws IOException {
        this.f33758b.position(j10);
    }

    @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33758b.close();
    }

    @Override // com.googlecode.mp4parser.e
    public long position() throws IOException {
        return this.f33758b.position();
    }

    @Override // com.googlecode.mp4parser.e
    public ByteBuffer r(long j10, long j11) throws IOException {
        return this.f33758b.map(FileChannel.MapMode.READ_ONLY, j10, j11);
    }

    @Override // com.googlecode.mp4parser.e
    public int read(ByteBuffer byteBuffer) throws IOException {
        return this.f33758b.read(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.e
    public long size() throws IOException {
        return this.f33758b.size();
    }

    public String toString() {
        return this.f33759c;
    }

    @Override // com.googlecode.mp4parser.e
    public long w(long j10, long j11, WritableByteChannel writableByteChannel) throws IOException {
        return this.f33758b.transferTo(j10, j11, writableByteChannel);
    }

    public g(String str) throws FileNotFoundException {
        File file = new File(str);
        this.f33758b = new FileInputStream(file).getChannel();
        this.f33759c = file.getName();
    }

    public g(FileChannel fileChannel) {
        this.f33758b = fileChannel;
        this.f33759c = "unknown";
    }

    public g(FileChannel fileChannel, String str) {
        this.f33758b = fileChannel;
        this.f33759c = str;
    }
}
