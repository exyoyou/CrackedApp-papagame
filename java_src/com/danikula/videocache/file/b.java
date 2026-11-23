package com.danikula.videocache.file;

import com.danikula.videocache.ProxyCacheException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes9.dex */
public class b implements com.danikula.videocache.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f26026d = ".download";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f26027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public File f26028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RandomAccessFile f26029c;

    public b(File file) throws ProxyCacheException {
        this(file, new i());
    }

    private boolean d(File file) {
        return file.getName().endsWith(f26026d);
    }

    @Override // com.danikula.videocache.c
    public synchronized void a(byte[] bArr, int i10) throws ProxyCacheException {
        try {
            if (isCompleted()) {
                throw new ProxyCacheException("Error append cache: cache file " + this.f26028b + " is completed!");
            }
            this.f26029c.seek(available());
            this.f26029c.write(bArr, 0, i10);
        } catch (IOException e10) {
            throw new ProxyCacheException(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i10), this.f26029c, Integer.valueOf(bArr.length)), e10);
        }
    }

    @Override // com.danikula.videocache.c
    public synchronized long available() throws ProxyCacheException {
        try {
        } catch (IOException e10) {
            throw new ProxyCacheException("Error reading length of file " + this.f26028b, e10);
        }
        return (int) this.f26029c.length();
    }

    @Override // com.danikula.videocache.c
    public synchronized int b(byte[] bArr, long j10, int i10) throws ProxyCacheException {
        try {
            this.f26029c.seek(j10);
        } catch (IOException e10) {
            throw new ProxyCacheException(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i10), Long.valueOf(j10), Long.valueOf(available()), Integer.valueOf(bArr.length)), e10);
        }
        return this.f26029c.read(bArr, 0, i10);
    }

    public File c() {
        return this.f26028b;
    }

    @Override // com.danikula.videocache.c
    public synchronized void close() throws ProxyCacheException {
        try {
            this.f26029c.close();
            this.f26027a.a(this.f26028b);
        } catch (IOException e10) {
            throw new ProxyCacheException("Error closing file " + this.f26028b, e10);
        }
    }

    @Override // com.danikula.videocache.c
    public synchronized void complete() throws ProxyCacheException {
        if (isCompleted()) {
            return;
        }
        close();
        File file = new File(this.f26028b.getParentFile(), this.f26028b.getName().substring(0, this.f26028b.getName().length() - 9));
        if (!this.f26028b.renameTo(file)) {
            throw new ProxyCacheException("Error renaming file " + this.f26028b + " to " + file + " for completion!");
        }
        this.f26028b = file;
        try {
            this.f26029c = new RandomAccessFile(this.f26028b, "r");
            this.f26027a.a(this.f26028b);
        } catch (IOException e10) {
            throw new ProxyCacheException("Error opening " + this.f26028b + " as disc cache", e10);
        }
    }

    @Override // com.danikula.videocache.c
    public synchronized boolean isCompleted() {
        return !d(this.f26028b);
    }

    public b(File file, a aVar) throws ProxyCacheException {
        File file2;
        try {
            if (aVar == null) {
                throw new NullPointerException();
            }
            this.f26027a = aVar;
            d.b(file.getParentFile());
            boolean zExists = file.exists();
            if (zExists) {
                file2 = file;
            } else {
                file2 = new File(file.getParentFile(), file.getName() + f26026d);
            }
            this.f26028b = file2;
            this.f26029c = new RandomAccessFile(this.f26028b, zExists ? "r" : net.lingala.zip4j.util.e.f94694e0);
        } catch (IOException e10) {
            throw new ProxyCacheException("Error using file " + file + " as disc cache", e10);
        }
    }
}
