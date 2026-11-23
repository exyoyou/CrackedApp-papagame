package com.efs.sdk.net.a.a;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes9.dex */
public final class e extends FilterOutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ExecutorService f26537b = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Future<Void> f26538a;

    static class a implements Callable<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InputStream f26539a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final OutputStream f26540b;

        public a(InputStream inputStream, OutputStream outputStream) {
            this.f26539a = inputStream;
            this.f26540b = outputStream;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws IOException {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(this.f26539a);
            try {
                i.a(gZIPInputStream, this.f26540b, new byte[1024]);
                return null;
            } finally {
                gZIPInputStream.close();
                this.f26540b.close();
            }
        }
    }

    private e(OutputStream outputStream, Future<Void> future) {
        super(outputStream);
        this.f26538a = future;
    }

    public static e a(OutputStream outputStream) {
        PipedInputStream pipedInputStream = new PipedInputStream();
        return new e(new PipedOutputStream(pipedInputStream), f26537b.submit(new a(pipedInputStream, outputStream)));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        try {
            super.close();
            a(this.f26538a);
        } catch (Throwable th) {
            try {
                a(this.f26538a);
            } catch (IOException unused) {
            }
            throw th;
        }
    }

    private static <T> T a(Future<T> future) throws Throwable {
        while (true) {
            try {
                return future.get();
            } catch (InterruptedException unused) {
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                d.a(cause, IOException.class);
                d.a(cause, Error.class);
                d.a(cause, RuntimeException.class);
                throw new RuntimeException(cause);
            }
        }
    }
}
