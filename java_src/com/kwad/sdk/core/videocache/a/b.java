package com.kwad.sdk.core.videocache.a;

import com.kwad.sdk.core.videocache.ProxyCacheException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.kwad.sdk.core.videocache.a {
    private final a aZM;
    private RandomAccessFile baD;
    public File file;

    public b(File file, a aVar) throws ProxyCacheException {
        File file2;
        try {
            if (aVar == null) {
                throw new NullPointerException();
            }
            this.aZM = aVar;
            d.u(file.getParentFile());
            boolean zExists = file.exists();
            if (zExists) {
                file2 = file;
            } else {
                file2 = new File(file.getParentFile(), file.getName() + ".download");
            }
            this.file = file2;
            this.baD = new RandomAccessFile(this.file, zExists ? "r" : net.lingala.zip4j.util.e.f94694e0);
        } catch (IOException e10) {
            throw new ProxyCacheException("Error using file " + file + " as disc cache", e10);
        }
    }

    private static boolean t(File file) {
        return file.getName().endsWith(".download");
    }

    @Override // com.kwad.sdk.core.videocache.a
    public final synchronized long OV() {
        try {
        } catch (IOException e10) {
            throw new ProxyCacheException("Error reading length of file " + this.file, e10);
        }
        return (int) this.baD.length();
    }

    @Override // com.kwad.sdk.core.videocache.a
    public final synchronized int a(byte[] bArr, long j10, int i10) {
        try {
            this.baD.seek(j10);
        } catch (IOException e10) {
            throw new ProxyCacheException(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i10), Long.valueOf(j10), Long.valueOf(OV()), Integer.valueOf(bArr.length)), e10);
        }
        return this.baD.read(bArr, 0, i10);
    }

    @Override // com.kwad.sdk.core.videocache.a
    public final synchronized void close() {
        try {
            this.baD.close();
            this.aZM.s(this.file);
        } catch (IOException e10) {
            throw new ProxyCacheException("Error closing file " + this.file, e10);
        }
    }

    @Override // com.kwad.sdk.core.videocache.a
    public final synchronized void complete() {
        if (isCompleted()) {
            return;
        }
        close();
        File file = new File(this.file.getParentFile(), this.file.getName().substring(0, this.file.getName().length() - 9));
        if (!this.file.renameTo(file)) {
            throw new ProxyCacheException("Error renaming file " + this.file + " to " + file + " for completion!");
        }
        this.file = file;
        try {
            this.baD = new RandomAccessFile(this.file, "r");
            this.aZM.s(this.file);
        } catch (IOException e10) {
            throw new ProxyCacheException("Error opening " + this.file + " as disc cache", e10);
        }
    }

    @Override // com.kwad.sdk.core.videocache.a
    public final synchronized void d(byte[] bArr, int i10) {
        try {
            if (isCompleted()) {
                throw new ProxyCacheException("Error append cache: cache file " + this.file + " is completed!");
            }
            this.baD.seek(OV());
            this.baD.write(bArr, 0, i10);
        } catch (IOException e10) {
            throw new ProxyCacheException(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i10), this.baD, 1024), e10);
        }
    }

    @Override // com.kwad.sdk.core.videocache.a
    public final synchronized boolean isCompleted() {
        return !t(this.file);
    }
}
