package net.lingala.zip4j.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes.dex */
public class g extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RandomAccessFile f94651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f94652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f94653d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f94654e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f94655f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f94656g;

    public g(String str) throws ZipException, FileNotFoundException {
        this(net.lingala.zip4j.util.h.A(str) ? new File(str) : null);
    }

    private boolean g(byte[] bArr) {
        if (bArr != null && bArr.length >= 4) {
            int iE = net.lingala.zip4j.util.f.e(bArr, 0);
            long[] jArrL = net.lingala.zip4j.util.h.l();
            if (jArrL != null && jArrL.length > 0) {
                for (long j10 : jArrL) {
                    if (j10 != 134695760 && j10 == iE) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private void j() throws IOException {
        String string;
        File file;
        try {
            String strZ = net.lingala.zip4j.util.h.z(this.f94654e.getName());
            String absolutePath = this.f94653d.getAbsolutePath();
            if (this.f94654e.getParent() == null) {
                string = "";
            } else {
                StringBuffer stringBuffer = new StringBuffer(String.valueOf(this.f94654e.getParent()));
                stringBuffer.append(System.getProperty("file.separator"));
                string = stringBuffer.toString();
            }
            if (this.f94655f < 9) {
                StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(string));
                stringBuffer2.append(strZ);
                stringBuffer2.append(".z0");
                stringBuffer2.append(this.f94655f + 1);
                file = new File(stringBuffer2.toString());
            } else {
                StringBuffer stringBuffer3 = new StringBuffer(String.valueOf(string));
                stringBuffer3.append(strZ);
                stringBuffer3.append(".z");
                stringBuffer3.append(this.f94655f + 1);
                file = new File(stringBuffer3.toString());
            }
            this.f94651b.close();
            if (file.exists()) {
                StringBuffer stringBuffer4 = new StringBuffer("split file: ");
                stringBuffer4.append(file.getName());
                stringBuffer4.append(" already exists in the current directory, cannot rename this file");
                throw new IOException(stringBuffer4.toString());
            }
            if (!this.f94653d.renameTo(file)) {
                throw new IOException("cannot rename newly created split file");
            }
            this.f94653d = new File(absolutePath);
            this.f94651b = new RandomAccessFile(this.f94653d, net.lingala.zip4j.util.e.f94694e0);
            this.f94655f++;
        } catch (ZipException e10) {
            throw new IOException(e10.getMessage());
        }
    }

    public boolean a(int i10) throws ZipException {
        if (i10 < 0) {
            throw new ZipException("negative buffersize for checkBuffSizeAndStartNextSplitFile");
        }
        if (f(i10)) {
            return false;
        }
        try {
            j();
            this.f94656g = 0L;
            return true;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    public int b() {
        return this.f94655f;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f94651b;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    public long d() throws IOException {
        return this.f94651b.getFilePointer();
    }

    public long e() {
        return this.f94652c;
    }

    public boolean f(int i10) throws ZipException {
        if (i10 < 0) {
            throw new ZipException("negative buffersize for isBuffSizeFitForCurrSplitFile");
        }
        long j10 = this.f94652c;
        return j10 < 65536 || this.f94656g + ((long) i10) <= j10;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
    }

    public boolean h() {
        return this.f94652c != -1;
    }

    public void seek(long j10) throws IOException {
        this.f94651b.seek(j10);
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public g(File file) throws ZipException, FileNotFoundException {
        this(file, -1L);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 <= 0) {
            return;
        }
        long j10 = this.f94652c;
        if (j10 == -1) {
            this.f94651b.write(bArr, i10, i11);
            this.f94656g += (long) i11;
            return;
        }
        if (j10 >= 65536) {
            long j11 = this.f94656g;
            if (j11 >= j10) {
                j();
                this.f94651b.write(bArr, i10, i11);
                this.f94656g = i11;
                return;
            }
            long j12 = i11;
            if (j11 + j12 > j10) {
                if (g(bArr)) {
                    j();
                    this.f94651b.write(bArr, i10, i11);
                    this.f94656g = j12;
                    return;
                }
                this.f94651b.write(bArr, i10, (int) (this.f94652c - this.f94656g));
                j();
                RandomAccessFile randomAccessFile = this.f94651b;
                long j13 = this.f94652c;
                long j14 = this.f94656g;
                randomAccessFile.write(bArr, i10 + ((int) (j13 - j14)), (int) (j12 - (j13 - j14)));
                this.f94656g = j12 - (this.f94652c - this.f94656g);
                return;
            }
            this.f94651b.write(bArr, i10, i11);
            this.f94656g += j12;
            return;
        }
        throw new IOException("split length less than minimum allowed split length of 65536 Bytes");
    }

    public g(String str, long j10) throws ZipException, FileNotFoundException {
        this(!net.lingala.zip4j.util.h.A(str) ? new File(str) : null, j10);
    }

    public g(File file, long j10) throws ZipException, FileNotFoundException {
        if (j10 >= 0 && j10 < 65536) {
            throw new ZipException("split length less than minimum allowed split length of 65536 Bytes");
        }
        this.f94651b = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
        this.f94652c = j10;
        this.f94654e = file;
        this.f94653d = file;
        this.f94655f = 0;
        this.f94656g = 0L;
    }
}
