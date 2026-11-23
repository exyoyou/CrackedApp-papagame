package com.facebook.soloader;

import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class n implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FileOutputStream f29034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final FileLock f29035c;

    private n(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        this.f29034b = fileOutputStream;
        try {
            FileLock fileLockLock = fileOutputStream.getChannel().lock();
            if (fileLockLock == null) {
                fileOutputStream.close();
            }
            this.f29035c = fileLockLock;
        } catch (Throwable th) {
            this.f29034b.close();
            throw th;
        }
    }

    public static n a(File file) throws IOException {
        return new n(file);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            FileLock fileLock = this.f29035c;
            if (fileLock != null) {
                fileLock.release();
            }
        } finally {
            this.f29034b.close();
        }
    }
}
