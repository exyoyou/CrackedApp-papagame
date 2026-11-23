package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends InputStream {
    @Override // java.io.InputStream
    public int available() throws IOException {
        return 0;
    }

    public net.lingala.zip4j.unzip.d b() {
        return null;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return 0;
    }

    public void seek(long j10) throws IOException {
    }
}
