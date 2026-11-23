package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class InputStreamEntityHC4 extends AbstractHttpEntityHC4 {
    private final InputStream content;
    private final long length;

    public InputStreamEntityHC4(InputStream inputStream) {
        this(inputStream, -1L);
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        return this.content;
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.length;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        int i10;
        Args.notNull(outputStream, "Output stream");
        InputStream inputStream = this.content;
        try {
            byte[] bArr = new byte[4096];
            long j10 = this.length;
            if (j10 < 0) {
                while (true) {
                    int i11 = inputStream.read(bArr);
                    if (i11 == -1) {
                        break;
                    } else {
                        outputStream.write(bArr, 0, i11);
                    }
                }
            } else {
                while (j10 > 0 && (i10 = inputStream.read(bArr, 0, (int) Math.min(4096L, j10))) != -1) {
                    outputStream.write(bArr, 0, i10);
                    j10 -= (long) i10;
                }
            }
        } finally {
            inputStream.close();
        }
    }

    public InputStreamEntityHC4(InputStream inputStream, long j10) {
        this(inputStream, j10, null);
    }

    public InputStreamEntityHC4(InputStream inputStream, ContentType contentType) {
        this(inputStream, -1L, contentType);
    }

    public InputStreamEntityHC4(InputStream inputStream, long j10, ContentType contentType) {
        this.content = (InputStream) Args.notNull(inputStream, "Source input stream");
        this.length = j10;
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }
}
