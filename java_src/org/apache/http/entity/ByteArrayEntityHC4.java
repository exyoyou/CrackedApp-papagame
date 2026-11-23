package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class ByteArrayEntityHC4 extends AbstractHttpEntityHC4 implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f95044b;

    @Deprecated
    protected final byte[] content;
    private final int len;
    private final int off;

    public ByteArrayEntityHC4(byte[] bArr, ContentType contentType) {
        Args.notNull(bArr, "Source byte array");
        this.content = bArr;
        this.f95044b = bArr;
        this.off = 0;
        this.len = bArr.length;
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() {
        return new ByteArrayInputStream(this.f95044b, this.off, this.len);
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.len;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        outputStream.write(this.f95044b, this.off, this.len);
        outputStream.flush();
    }

    public ByteArrayEntityHC4(byte[] bArr, int i10, int i11, ContentType contentType) {
        int i12;
        Args.notNull(bArr, "Source byte array");
        if (i10 >= 0 && i10 <= bArr.length && i11 >= 0 && (i12 = i10 + i11) >= 0 && i12 <= bArr.length) {
            this.content = bArr;
            this.f95044b = bArr;
            this.off = i10;
            this.len = i11;
            if (contentType != null) {
                setContentType(contentType.toString());
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException("off: " + i10 + " len: " + i11 + " b.length: " + bArr.length);
    }

    public ByteArrayEntityHC4(byte[] bArr) {
        this(bArr, null);
    }

    public ByteArrayEntityHC4(byte[] bArr, int i10, int i11) {
        this(bArr, i10, i11, null);
    }
}
