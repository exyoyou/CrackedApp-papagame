package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.base.GeneratorBase;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* JADX INFO: loaded from: classes9.dex */
public class UTF32Reader extends Reader {
    protected static final int LAST_VALID_UNICODE_CHAR = 1114111;
    protected static final char NC = 0;
    protected final boolean _bigEndian;
    protected byte[] _buffer;
    protected int _byteCount;
    protected int _charCount;
    protected final IOContext _context;
    protected InputStream _in;
    protected int _length;
    protected final boolean _managedBuffers;
    protected int _ptr;
    protected char _surrogate = 0;
    protected char[] _tmpBuf;

    public UTF32Reader(IOContext iOContext, InputStream inputStream, byte[] bArr, int i10, int i11, boolean z10) {
        this._context = iOContext;
        this._in = inputStream;
        this._buffer = bArr;
        this._ptr = i10;
        this._length = i11;
        this._bigEndian = z10;
        this._managedBuffers = inputStream != null;
    }

    private void freeBuffers() {
        byte[] bArr = this._buffer;
        if (bArr != null) {
            this._buffer = null;
            this._context.releaseReadIOBuffer(bArr);
        }
    }

    private boolean loadMore(int i10) throws IOException {
        int i11;
        this._byteCount += this._length - i10;
        if (i10 > 0) {
            int i12 = this._ptr;
            if (i12 > 0) {
                byte[] bArr = this._buffer;
                System.arraycopy(bArr, i12, bArr, 0, i10);
                this._ptr = 0;
            }
            this._length = i10;
        } else {
            this._ptr = 0;
            InputStream inputStream = this._in;
            int i13 = inputStream == null ? -1 : inputStream.read(this._buffer);
            if (i13 < 1) {
                this._length = 0;
                if (i13 < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    return false;
                }
                reportStrangeStream();
            }
            this._length = i13;
        }
        while (true) {
            int i14 = this._length;
            if (i14 >= 4) {
                return true;
            }
            InputStream inputStream2 = this._in;
            if (inputStream2 == null) {
                i11 = -1;
            } else {
                byte[] bArr2 = this._buffer;
                i11 = inputStream2.read(bArr2, i14, bArr2.length - i14);
            }
            if (i11 < 1) {
                if (i11 < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    reportUnexpectedEOF(this._length, 4);
                }
                reportStrangeStream();
            }
            this._length += i11;
        }
    }

    private void reportBounds(char[] cArr, int i10, int i11) throws IOException {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i10 + "," + i11 + "), cbuf[" + cArr.length + "]");
    }

    private void reportInvalid(int i10, int i11, String str) throws IOException {
        int i12 = (this._byteCount + this._ptr) - 1;
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i10) + str + " at char #" + (this._charCount + i11) + ", byte #" + i12 + ")");
    }

    private void reportStrangeStream() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    private void reportUnexpectedEOF(int i10, int i11) throws IOException {
        int i12 = this._byteCount + i10;
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i10 + ", needed " + i11 + ", at char #" + this._charCount + ", byte #" + i12 + ")");
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this._in;
        if (inputStream != null) {
            this._in = null;
            freeBuffers();
            inputStream.close();
        }
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this._tmpBuf == null) {
            this._tmpBuf = new char[1];
        }
        if (read(this._tmpBuf, 0, 1) < 1) {
            return -1;
        }
        return this._tmpBuf[0];
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00ce A[LOOP:0: B:24:0x003e->B:41:0x00ce, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:45:0x00cc A[SYNTHETIC] */
    @Override // java.io.Reader
    public int read(char[] cArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        int i14;
        int i15;
        if (this._buffer == null) {
            return -1;
        }
        if (i11 < 1) {
            return i11;
        }
        if (i10 < 0 || i10 + i11 > cArr.length) {
            reportBounds(cArr, i10, i11);
        }
        int i16 = i11 + i10;
        char c10 = this._surrogate;
        if (c10 != 0) {
            i12 = i10 + 1;
            cArr[i10] = c10;
            this._surrogate = (char) 0;
        } else {
            int i17 = this._length - this._ptr;
            if (i17 < 4 && !loadMore(i17)) {
                if (i17 == 0) {
                    return -1;
                }
                reportUnexpectedEOF(this._length - this._ptr, 4);
            }
            i12 = i10;
        }
        int i18 = this._length - 4;
        while (i12 < i16) {
            int i19 = this._ptr;
            if (this._bigEndian) {
                byte[] bArr = this._buffer;
                i13 = (bArr[i19] << 8) | (bArr[i19 + 1] & 255);
                i14 = (bArr[i19 + 3] & 255) | ((bArr[i19 + 2] & 255) << 8);
            } else {
                byte[] bArr2 = this._buffer;
                int i20 = (bArr2[i19] & 255) | ((bArr2[i19 + 1] & 255) << 8);
                i13 = (bArr2[i19 + 3] << 8) | (bArr2[i19 + 2] & 255);
                i14 = i20;
            }
            this._ptr = i19 + 4;
            if (i13 != 0) {
                int i21 = 65535 & i13;
                int i22 = i14 | ((i21 - 1) << 16);
                if (i21 > 16) {
                    reportInvalid(i22, i12 - i10, String.format(" (above 0x%08x)", 1114111));
                }
                i15 = i12 + 1;
                cArr[i12] = (char) ((i22 >> 10) + GeneratorBase.SURR1_FIRST);
                int i23 = (i22 & 1023) | 56320;
                if (i15 >= i16) {
                    this._surrogate = (char) i22;
                } else {
                    i14 = i23;
                    i12 = i15;
                    i15 = i12 + 1;
                    cArr[i12] = (char) i14;
                    if (this._ptr > i18) {
                        i12 = i15;
                    }
                }
            } else {
                i15 = i12 + 1;
                cArr[i12] = (char) i14;
                if (this._ptr > i18) {
                    i12 = i15;
                }
            }
            i12 = i15;
            break;
        }
        int i24 = i12 - i10;
        this._charCount += i24;
        return i24;
    }
}
