package com.sigmob.sdk.downloader.core.file;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes3.dex */
public class b implements com.sigmob.sdk.downloader.core.file.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ParcelFileDescriptor f80631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final BufferedOutputStream f80632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final FileOutputStream f80633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FileChannel f80634d;

    public static class a implements com.sigmob.sdk.downloader.core.file.a.InterfaceC1028a {
        @Override // com.sigmob.sdk.downloader.core.file.a.InterfaceC1028a
        public com.sigmob.sdk.downloader.core.file.a a(Context context, Uri uri, int flushBufferSize) throws FileNotFoundException {
            return new b(context, uri, flushBufferSize);
        }

        @Override // com.sigmob.sdk.downloader.core.file.a.InterfaceC1028a
        public com.sigmob.sdk.downloader.core.file.a a(Context context, File file, int flushBufferSize) throws FileNotFoundException {
            return new b(context, Uri.fromFile(file), flushBufferSize);
        }

        @Override // com.sigmob.sdk.downloader.core.file.a.InterfaceC1028a
        public boolean a() {
            return true;
        }
    }

    public b(Context context, Uri uri, int bufferSize) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, net.lingala.zip4j.util.e.f94694e0);
        if (parcelFileDescriptorOpenFileDescriptor == null) {
            throw new FileNotFoundException("result of " + uri + " is null!");
        }
        this.f80631a = parcelFileDescriptorOpenFileDescriptor;
        FileOutputStream fileOutputStream = new FileOutputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
        this.f80633c = fileOutputStream;
        this.f80634d = fileOutputStream.getChannel();
        this.f80632b = new BufferedOutputStream(fileOutputStream, bufferSize);
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void a() throws IOException {
        this.f80632b.close();
        this.f80633c.close();
        this.f80631a.close();
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void b() throws IOException {
        this.f80632b.flush();
        this.f80631a.getFileDescriptor().sync();
    }

    b(FileChannel channel, ParcelFileDescriptor pdf, FileOutputStream fos, BufferedOutputStream out) {
        this.f80634d = channel;
        this.f80631a = pdf;
        this.f80633c = fos;
        this.f80632b = out;
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void a(long offset) throws IOException {
        this.f80634d.position(offset);
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void b(long newLength) {
        StringBuilder sb2;
        try {
            Os.posix_fallocate(this.f80631a.getFileDescriptor(), 0L, newLength);
        } catch (Throwable th) {
            th = th;
            if (th instanceof ErrnoException) {
                int i10 = th.errno;
                if (i10 == OsConstants.ENOSYS || i10 == OsConstants.ENOTSUP) {
                    com.sigmob.sdk.downloader.core.c.a("DownloadUriOutputStream", "fallocate() not supported; falling back to ftruncate()");
                    try {
                        Os.ftruncate(this.f80631a.getFileDescriptor(), newLength);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        sb2 = new StringBuilder();
                        sb2.append("It can't pre-allocate length(");
                        sb2.append(newLength);
                        sb2.append(") on the sdk version(");
                        sb2.append(Build.VERSION.SDK_INT);
                        sb2.append("), because of ");
                        sb2.append(th);
                        com.sigmob.sdk.downloader.core.c.a("DownloadUriOutputStream", sb2.toString());
                    }
                }
                return;
            }
            sb2 = new StringBuilder();
            sb2.append("It can't pre-allocate length(");
            sb2.append(newLength);
            sb2.append(") on the sdk version(");
            sb2.append(Build.VERSION.SDK_INT);
            sb2.append("), because of ");
            sb2.append(th);
            com.sigmob.sdk.downloader.core.c.a("DownloadUriOutputStream", sb2.toString());
        }
    }

    @Override // com.sigmob.sdk.downloader.core.file.a
    public void a(byte[] b10, int off, int len) throws IOException {
        this.f80632b.write(b10, off, len);
    }
}
