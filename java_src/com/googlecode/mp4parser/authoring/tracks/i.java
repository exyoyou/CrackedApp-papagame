package com.googlecode.mp4parser.authoring.tracks;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class i extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f33143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f33144c;

    public i(InputStream inputStream) {
        super(inputStream);
        this.f33143b = -1;
        this.f33144c = -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i10 = super.read();
        if (i10 == 3 && this.f33143b == 0 && this.f33144c == 0) {
            this.f33143b = -1;
            this.f33144c = -1;
            i10 = super.read();
        }
        this.f33143b = this.f33144c;
        this.f33144c = i10;
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        bArr.getClass();
        if (i10 < 0 || i11 < 0 || i11 > bArr.length - i10) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return 0;
        }
        int i12 = read();
        if (i12 == -1) {
            return -1;
        }
        bArr[i10] = (byte) i12;
        int i13 = 1;
        while (i13 < i11) {
            try {
                int i14 = read();
                if (i14 == -1) {
                    break;
                }
                bArr[i10 + i13] = (byte) i14;
                i13++;
            } catch (IOException unused) {
            }
        }
        return i13;
    }
}
