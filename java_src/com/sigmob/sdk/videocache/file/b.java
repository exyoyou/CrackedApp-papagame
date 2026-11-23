package com.sigmob.sdk.videocache.file;

import com.sigmob.sdk.videocache.p;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes3.dex */
public class b implements com.sigmob.sdk.videocache.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f81916b = ".download";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public File f81917a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f81918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RandomAccessFile f81919d;

    public b(File file) throws p {
        this(file, new i());
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized int a(byte[] buffer, long offset, int length) throws p {
        try {
            this.f81919d.seek(offset);
        } catch (IOException e10) {
            throw new p(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(length), Long.valueOf(offset), Long.valueOf(a()), Integer.valueOf(buffer.length)), e10);
        }
        return this.f81919d.read(buffer, 0, length);
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized void b() throws p {
        try {
            this.f81919d.close();
            this.f81918c.a(this.f81917a);
        } catch (IOException e10) {
            throw new p("Error closing file " + this.f81917a, e10);
        }
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized void c() throws p {
        if (d()) {
            return;
        }
        b();
        File file = new File(this.f81917a.getParentFile(), this.f81917a.getName().substring(0, this.f81917a.getName().length() - 9));
        if (!this.f81917a.renameTo(file)) {
            throw new p("Error renaming file " + this.f81917a + " to " + file + " for completion!");
        }
        this.f81917a = file;
        try {
            this.f81919d = new RandomAccessFile(this.f81917a, "r");
            this.f81918c.a(this.f81917a);
        } catch (IOException e10) {
            throw new p("Error opening " + this.f81917a + " as disc cache", e10);
        }
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized boolean d() {
        return !a(this.f81917a);
    }

    public File e() {
        return this.f81917a;
    }

    public b(File file, a diskUsage) throws p {
        File file2;
        try {
            if (diskUsage == null) {
                throw new NullPointerException();
            }
            this.f81918c = diskUsage;
            d.a(file.getParentFile());
            boolean zExists = file.exists();
            if (zExists) {
                file2 = file;
            } else {
                file2 = new File(file.getParentFile(), file.getName() + f81916b);
            }
            this.f81917a = file2;
            this.f81919d = new RandomAccessFile(this.f81917a, zExists ? "r" : net.lingala.zip4j.util.e.f94694e0);
        } catch (IOException e10) {
            throw new p("Error using file " + file + " as disc cache", e10);
        }
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized long a() throws p {
        try {
        } catch (IOException e10) {
            throw new p("Error reading length of file " + this.f81917a, e10);
        }
        return (int) this.f81919d.length();
    }

    @Override // com.sigmob.sdk.videocache.c
    public synchronized void a(byte[] data, int length) throws p {
        try {
            if (d()) {
                throw new p("Error append cache: cache file " + this.f81917a + " is completed!");
            }
            this.f81919d.seek(a());
            this.f81919d.write(data, 0, length);
        } catch (IOException e10) {
            throw new p(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(length), this.f81919d, Integer.valueOf(data.length)), e10);
        }
    }

    private boolean a(File file) {
        return file.getName().endsWith(f81916b);
    }
}
