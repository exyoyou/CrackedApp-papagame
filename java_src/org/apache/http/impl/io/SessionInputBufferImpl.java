package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import org.apache.http.MessageConstraintException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class SessionInputBufferImpl implements SessionInputBuffer, BufferInfo {
    private final byte[] buffer;
    private int bufferlen;
    private int bufferpos;
    private CharBuffer cbuf;
    private final MessageConstraints constraints;
    private final CharsetDecoder decoder;
    private InputStream instream;
    private final ByteArrayBuffer linebuffer;
    private final HttpTransportMetricsImpl metrics;
    private final int minChunkLimit;

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i10, int i11, MessageConstraints messageConstraints, CharsetDecoder charsetDecoder) {
        Args.notNull(httpTransportMetricsImpl, "HTTP transport metrcis");
        Args.positive(i10, "Buffer size");
        this.metrics = httpTransportMetricsImpl;
        this.buffer = new byte[i10];
        this.bufferpos = 0;
        this.bufferlen = 0;
        this.minChunkLimit = i11 < 0 ? 512 : i11;
        this.constraints = messageConstraints == null ? MessageConstraints.DEFAULT : messageConstraints;
        this.linebuffer = new ByteArrayBuffer(i10);
        this.decoder = charsetDecoder;
    }

    private int appendDecoded(CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        int iHandleDecodingResult = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0;
        }
        if (this.cbuf == null) {
            this.cbuf = CharBuffer.allocate(1024);
        }
        this.decoder.reset();
        while (byteBuffer.hasRemaining()) {
            iHandleDecodingResult += handleDecodingResult(this.decoder.decode(byteBuffer, this.cbuf, true), charArrayBuffer, byteBuffer);
        }
        int iHandleDecodingResult2 = iHandleDecodingResult + handleDecodingResult(this.decoder.flush(this.cbuf), charArrayBuffer, byteBuffer);
        this.cbuf.clear();
        return iHandleDecodingResult2;
    }

    private int handleDecodingResult(CoderResult coderResult, CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.cbuf.flip();
        int iRemaining = this.cbuf.remaining();
        while (this.cbuf.hasRemaining()) {
            charArrayBuffer.append(this.cbuf.get());
        }
        this.cbuf.compact();
        return iRemaining;
    }

    private int lineFromLineBuffer(CharArrayBuffer charArrayBuffer) throws IOException {
        int length = this.linebuffer.length();
        if (length > 0) {
            if (this.linebuffer.byteAt(length - 1) == 10) {
                length--;
            }
            if (length > 0 && this.linebuffer.byteAt(length - 1) == 13) {
                length--;
            }
        }
        if (this.decoder == null) {
            charArrayBuffer.append(this.linebuffer, 0, length);
        } else {
            length = appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.linebuffer.buffer(), 0, length));
        }
        this.linebuffer.clear();
        return length;
    }

    private int lineFromReadBuffer(CharArrayBuffer charArrayBuffer, int i10) throws IOException {
        int i11 = this.bufferpos;
        this.bufferpos = i10 + 1;
        if (i10 > i11 && this.buffer[i10 - 1] == 13) {
            i10--;
        }
        int i12 = i10 - i11;
        if (this.decoder != null) {
            return appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.buffer, i11, i12));
        }
        charArrayBuffer.append(this.buffer, i11, i12);
        return i12;
    }

    private int locateLF() {
        for (int i10 = this.bufferpos; i10 < this.bufferlen; i10++) {
            if (this.buffer[i10] == 10) {
                return i10;
            }
        }
        return -1;
    }

    private int streamRead(byte[] bArr, int i10, int i11) throws IOException {
        Asserts.notNull(this.instream, "Input stream");
        return this.instream.read(bArr, i10, i11);
    }

    @Override // org.apache.http.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    public void bind(InputStream inputStream) {
        this.instream = inputStream;
    }

    @Override // org.apache.http.io.BufferInfo
    public int capacity() {
        return this.buffer.length;
    }

    public void clear() {
        this.bufferpos = 0;
        this.bufferlen = 0;
    }

    public int fillBuffer() throws IOException {
        int i10 = this.bufferpos;
        if (i10 > 0) {
            int i11 = this.bufferlen - i10;
            if (i11 > 0) {
                byte[] bArr = this.buffer;
                System.arraycopy(bArr, i10, bArr, 0, i11);
            }
            this.bufferpos = 0;
            this.bufferlen = i11;
        }
        int i12 = this.bufferlen;
        byte[] bArr2 = this.buffer;
        int iStreamRead = streamRead(bArr2, i12, bArr2.length - i12);
        if (iStreamRead == -1) {
            return -1;
        }
        this.bufferlen = i12 + iStreamRead;
        this.metrics.incrementBytesTransferred(iStreamRead);
        return iStreamRead;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }

    public boolean hasBufferedData() {
        return this.bufferpos < this.bufferlen;
    }

    public boolean isBound() {
        return this.instream != null;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public boolean isDataAvailable(int i10) throws IOException {
        return hasBufferedData();
    }

    @Override // org.apache.http.io.BufferInfo
    public int length() {
        return this.bufferlen - this.bufferpos;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read() throws IOException {
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        byte[] bArr = this.buffer;
        int i10 = this.bufferpos;
        this.bufferpos = i10 + 1;
        return bArr[i10] & 255;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int readLine(CharArrayBuffer charArrayBuffer) throws IOException {
        int maxLineLength;
        Args.notNull(charArrayBuffer, "Char array buffer");
        boolean z10 = true;
        int iFillBuffer = 0;
        while (z10) {
            int iLocateLF = locateLF();
            if (iLocateLF == -1) {
                if (hasBufferedData()) {
                    int i10 = this.bufferlen;
                    int i11 = this.bufferpos;
                    this.linebuffer.append(this.buffer, i11, i10 - i11);
                    this.bufferpos = this.bufferlen;
                }
                iFillBuffer = fillBuffer();
                if (iFillBuffer == -1) {
                }
                maxLineLength = this.constraints.getMaxLineLength();
                if (maxLineLength <= 0 && this.linebuffer.length() >= maxLineLength) {
                    throw new MessageConstraintException("Maximum line length limit exceeded");
                }
            } else {
                if (this.linebuffer.isEmpty()) {
                    return lineFromReadBuffer(charArrayBuffer, iLocateLF);
                }
                int i12 = iLocateLF + 1;
                int i13 = this.bufferpos;
                this.linebuffer.append(this.buffer, i13, i12 - i13);
                this.bufferpos = i12;
            }
            z10 = false;
            maxLineLength = this.constraints.getMaxLineLength();
            if (maxLineLength <= 0) {
            }
        }
        if (iFillBuffer == -1 && this.linebuffer.isEmpty()) {
            return -1;
        }
        return lineFromLineBuffer(charArrayBuffer);
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (bArr == null) {
            return 0;
        }
        if (hasBufferedData()) {
            int iMin = Math.min(i11, this.bufferlen - this.bufferpos);
            System.arraycopy(this.buffer, this.bufferpos, bArr, i10, iMin);
            this.bufferpos += iMin;
            return iMin;
        }
        if (i11 > this.minChunkLimit) {
            int iStreamRead = streamRead(bArr, i10, i11);
            if (iStreamRead > 0) {
                this.metrics.incrementBytesTransferred(iStreamRead);
            }
            return iStreamRead;
        }
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        int iMin2 = Math.min(i11, this.bufferlen - this.bufferpos);
        System.arraycopy(this.buffer, this.bufferpos, bArr, i10, iMin2);
        this.bufferpos += iMin2;
        return iMin2;
    }

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i10) {
        this(httpTransportMetricsImpl, i10, i10, null, null);
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr) throws IOException {
        if (bArr == null) {
            return 0;
        }
        return read(bArr, 0, bArr.length);
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public String readLine() throws IOException {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        if (readLine(charArrayBuffer) != -1) {
            return charArrayBuffer.toString();
        }
        return null;
    }
}
