package de.robv.android.xposed.services;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public final class DirectAccessService extends BaseService {
    @Override // de.robv.android.xposed.services.BaseService
    public boolean checkFileAccess(String str, int i10) {
        File file = new File(str);
        if (i10 == 0 && !file.exists()) {
            return false;
        }
        if ((i10 & 4) != 0 && !file.canRead()) {
            return false;
        }
        if ((i10 & 2) == 0 || file.canWrite()) {
            return (i10 & 1) == 0 || file.canExecute();
        }
        return false;
    }

    @Override // de.robv.android.xposed.services.BaseService
    public boolean checkFileExists(String str) {
        return new File(str).exists();
    }

    @Override // de.robv.android.xposed.services.BaseService
    public InputStream getFileInputStream(String str) throws IOException {
        return new BufferedInputStream(new FileInputStream(str), 16384);
    }

    @Override // de.robv.android.xposed.services.BaseService
    public boolean hasDirectFileAccess() {
        return true;
    }

    @Override // de.robv.android.xposed.services.BaseService
    public byte[] readFile(String str) throws IOException {
        File file = new File(str);
        byte[] bArr = new byte[(int) file.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        fileInputStream.read(bArr);
        fileInputStream.close();
        return bArr;
    }

    @Override // de.robv.android.xposed.services.BaseService
    public FileResult statFile(String str) throws IOException {
        File file = new File(str);
        return new FileResult(file.length(), file.lastModified());
    }

    @Override // de.robv.android.xposed.services.BaseService
    public FileResult getFileInputStream(String str, long j10, long j11) throws IOException {
        File file = new File(str);
        long length = file.length();
        long jLastModified = file.lastModified();
        return (j10 == length && j11 == jLastModified) ? new FileResult(length, jLastModified) : new FileResult(new BufferedInputStream(new FileInputStream(str), 16384), length, jLastModified);
    }

    @Override // de.robv.android.xposed.services.BaseService
    public FileResult readFile(String str, long j10, long j11) throws IOException {
        File file = new File(str);
        long length = file.length();
        long jLastModified = file.lastModified();
        if (j10 == length && j11 == jLastModified) {
            return new FileResult(length, jLastModified);
        }
        return new FileResult(readFile(str), length, jLastModified);
    }

    @Override // de.robv.android.xposed.services.BaseService
    public FileResult readFile(String str, int i10, int i11, long j10, long j11) throws IOException {
        File file = new File(str);
        long length = file.length();
        long jLastModified = file.lastModified();
        if (j10 == length && j11 == jLastModified) {
            return new FileResult(length, jLastModified);
        }
        if (i10 <= 0 && i11 <= 0) {
            return new FileResult(readFile(str), length, jLastModified);
        }
        if (i10 > 0 && i10 >= length) {
            throw new IllegalArgumentException("Offset " + i10 + " is out of range for " + str);
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > 0 && i10 + i11 > length) {
            throw new IllegalArgumentException("Length " + i11 + " is out of range for " + str);
        }
        if (i11 <= 0) {
            i11 = (int) (length - ((long) i10));
        }
        byte[] bArr = new byte[i11];
        FileInputStream fileInputStream = new FileInputStream(file);
        fileInputStream.skip(i10);
        fileInputStream.read(bArr);
        fileInputStream.close();
        return new FileResult(bArr, length, jLastModified);
    }
}
