package com.byazt.t;

import com.byazt.m.BaseException;
import com.byazt.w.a;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 66, 46})
public class n implements Closeable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BufferedOutputStream f20101c;
    public FileDescriptor tt;
    public RandomAccessFile ve;

    public n(File file, int i10) throws BaseException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, e.f94694e0);
            this.ve = randomAccessFile;
            this.tt = randomAccessFile.getFD();
            if (i10 <= 0) {
                this.f20101c = new BufferedOutputStream(new FileOutputStream(this.ve.getFD()));
                return;
            }
            if (i10 < 8192) {
                i10 = 8192;
            } else if (i10 > 131072) {
                i10 = 131072;
            }
            this.f20101c = new BufferedOutputStream(new FileOutputStream(this.ve.getFD()), i10);
        } catch (IOException e10) {
            throw new BaseException(1039, e10);
        }
    }

    public void c(byte[] bArr, int i10, int i11) throws IOException {
        this.f20101c.write(bArr, i10, i11);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a.c(this.ve, this.f20101c);
    }

    public void tt() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.f20101c;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
    }

    public void ve() throws IOException {
        FileDescriptor fileDescriptor = this.tt;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }

    public void c() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.f20101c;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
        FileDescriptor fileDescriptor = this.tt;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }

    public void tt(long j10) throws IOException {
        this.ve.setLength(j10);
    }

    public void c(long j10) throws IOException {
        this.ve.seek(j10);
    }
}
