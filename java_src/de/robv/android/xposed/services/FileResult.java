package de.robv.android.xposed.services;

import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public final class FileResult {
    public final byte[] content;
    public final long mtime;
    public final long size;
    public final InputStream stream;

    public FileResult(long j10, long j11) {
        this.content = null;
        this.stream = null;
        this.size = j10;
        this.mtime = j11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        if (this.content != null) {
            sb2.append("content.length: ");
            sb2.append(this.content.length);
            sb2.append(", ");
        }
        if (this.stream != null) {
            sb2.append("stream: ");
            sb2.append(this.stream.toString());
            sb2.append(", ");
        }
        sb2.append("size: ");
        sb2.append(this.size);
        sb2.append(", mtime: ");
        sb2.append(this.mtime);
        sb2.append("}");
        return sb2.toString();
    }

    public FileResult(byte[] bArr, long j10, long j11) {
        this.content = bArr;
        this.stream = null;
        this.size = j10;
        this.mtime = j11;
    }

    public FileResult(InputStream inputStream, long j10, long j11) {
        this.content = null;
        this.stream = inputStream;
        this.size = j10;
        this.mtime = j11;
    }
}
