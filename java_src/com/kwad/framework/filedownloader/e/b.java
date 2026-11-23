package com.kwad.framework.filedownloader.e;

import com.kwad.framework.filedownloader.f.c;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.kwad.framework.filedownloader.e.a {
    private final BufferedOutputStream aDm;
    private final RandomAccessFile aDn;

    /* JADX INFO: renamed from: fd, reason: collision with root package name */
    private final FileDescriptor f75304fd;

    public static class a implements c.e {
        @Override // com.kwad.framework.filedownloader.f.c.e
        public final com.kwad.framework.filedownloader.e.a c(File file) {
            return new b(file);
        }
    }

    b(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, e.f94694e0);
        this.aDn = randomAccessFile;
        this.f75304fd = randomAccessFile.getFD();
        this.aDm = new BufferedOutputStream(new FileOutputStream(randomAccessFile.getFD()));
    }

    @Override // com.kwad.framework.filedownloader.e.a
    public final void Du() throws IOException {
        this.aDm.flush();
        this.f75304fd.sync();
    }

    @Override // com.kwad.framework.filedownloader.e.a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.aDm.close();
        this.aDn.close();
    }

    @Override // com.kwad.framework.filedownloader.e.a
    public final void seek(long j10) throws IOException {
        this.aDn.seek(j10);
    }

    @Override // com.kwad.framework.filedownloader.e.a
    public final void setLength(long j10) throws IOException {
        this.aDn.setLength(j10);
    }

    @Override // com.kwad.framework.filedownloader.e.a
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        this.aDm.write(bArr, 0, i11);
    }
}
