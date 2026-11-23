package net.sf.sevenzipjbinding.impl;

import java.io.IOException;
import java.io.RandomAccessFile;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.SevenZipException;

/* JADX INFO: loaded from: classes.dex */
public class RandomAccessFileInStream implements IInStream {
    private final RandomAccessFile randomAccessFile;

    public RandomAccessFileInStream(RandomAccessFile randomAccessFile) {
        this.randomAccessFile = randomAccessFile;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.randomAccessFile.close();
    }

    @Override // net.sf.sevenzipjbinding.ISequentialInStream
    public synchronized int read(byte[] bArr) throws SevenZipException {
        try {
            int i10 = this.randomAccessFile.read(bArr);
            if (i10 == -1) {
                return 0;
            }
            return i10;
        } catch (IOException e10) {
            throw new SevenZipException("Error reading random access file", e10);
        }
    }

    @Override // net.sf.sevenzipjbinding.ISeekableStream
    public synchronized long seek(long j10, int i10) throws SevenZipException {
        try {
            if (i10 == 0) {
                this.randomAccessFile.seek(j10);
            } else if (i10 == 1) {
                RandomAccessFile randomAccessFile = this.randomAccessFile;
                randomAccessFile.seek(randomAccessFile.getFilePointer() + j10);
            } else {
                if (i10 != 2) {
                    throw new RuntimeException("Seek: unknown origin: " + i10);
                }
                RandomAccessFile randomAccessFile2 = this.randomAccessFile;
                randomAccessFile2.seek(randomAccessFile2.length() + j10);
            }
        } catch (IOException e10) {
            throw new SevenZipException("Error while seek operation", e10);
        }
        return this.randomAccessFile.getFilePointer();
    }
}
