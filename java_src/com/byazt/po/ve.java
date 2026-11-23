package com.byazt.po;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1403, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f18780c = new byte[2];
    public final byte[] tt = new byte[4];

    public int c(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.tt);
        return tt(this.tt);
    }

    public int tt(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.f18780c);
        return c(this.f18780c);
    }

    private int tt(byte[] bArr) {
        return ((((bArr[3] & 255) << 8) | (bArr[2] & 255)) << 16) | (bArr[0] & 255) | ((bArr[1] & 255) << 8);
    }

    public void c(RandomAccessFile randomAccessFile, int i10) throws IOException {
        c(this.f18780c, i10);
        randomAccessFile.write(this.f18780c);
    }

    private void tt(byte[] bArr, int i10) {
        bArr[3] = (byte) (i10 >>> 24);
        bArr[2] = (byte) (i10 >>> 16);
        bArr[1] = (byte) (i10 >>> 8);
        bArr[0] = (byte) (i10 & 255);
    }

    public void c(ByteArrayOutputStream byteArrayOutputStream, int i10) throws IOException {
        c(this.f18780c, i10);
        byteArrayOutputStream.write(this.f18780c);
    }

    public void c(OutputStream outputStream, int i10) throws IOException {
        tt(this.tt, i10);
        outputStream.write(this.tt);
    }

    private int c(byte[] bArr) {
        return ((bArr[1] & 255) << 8) | (bArr[0] & 255);
    }

    private void c(byte[] bArr, int i10) {
        bArr[1] = (byte) (i10 >>> 8);
        bArr[0] = (byte) (i10 & 255);
    }
}
