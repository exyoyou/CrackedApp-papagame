package com.kwad.sdk.pngencrypt;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int bjq;
    private boolean bjr;
    private long bjs;
    private byte[] buf;
    private boolean eof;
    private int offset;
    private InputStream stream;

    public a(InputStream inputStream) {
        this(inputStream, 16384);
    }

    private void SC() {
        if (this.bjq > 0 || this.eof) {
            return;
        }
        try {
            this.offset = 0;
            int i10 = this.stream.read(this.buf);
            this.bjq = i10;
            if (i10 == 0) {
                new PngjException("This should not happen: stream.read(buf) returned 0");
            } else if (i10 < 0) {
                close();
            } else {
                this.bjs += (long) i10;
            }
        } catch (IOException e10) {
            new PngjException(e10);
        }
    }

    public final int a(f fVar) {
        return a(fVar, Integer.MAX_VALUE);
    }

    public final int b(f fVar, int i10) {
        int i11 = 36;
        while (i11 > 0) {
            int iA = a(fVar, i11);
            if (iA <= 0) {
                return iA;
            }
            i11 -= iA;
        }
        return 36;
    }

    public final void ch(boolean z10) {
        this.bjr = z10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.eof = true;
        this.buf = null;
        this.bjq = 0;
        this.offset = 0;
        InputStream inputStream = this.stream;
        if (inputStream != null && this.bjr) {
            com.kwad.sdk.pngencrypt.a.a.closeQuietly(inputStream);
        }
        this.stream = null;
    }

    private a(InputStream inputStream, int i10) {
        this.eof = false;
        this.bjr = true;
        this.bjs = 0L;
        this.stream = inputStream;
        this.buf = new byte[16384];
    }

    private int a(f fVar, int i10) {
        SC();
        if (i10 <= 0 || i10 >= this.bjq) {
            i10 = this.bjq;
        }
        if (i10 <= 0) {
            if (!this.eof) {
                new PngjException("This should not happen");
            }
            return fVar.isDone() ? -1 : 0;
        }
        int iA = fVar.a(this.buf, this.offset, i10);
        if (iA > 0) {
            this.offset += iA;
            this.bjq -= iA;
        }
        if (iA > 0) {
            return iA;
        }
        if (!fVar.isDone()) {
            new PngjException("This should not happen!");
        }
        return -1;
    }
}
