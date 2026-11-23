package com.czhj.wire.okio;

import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes9.dex */
public final class Okio {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f25957a = Logger.getLogger(Okio.class.getName());

    private Okio() {
    }

    private static AsyncTimeout a(final Socket socket) {
        return new AsyncTimeout() { // from class: com.czhj.wire.okio.Okio.4
            @Override // com.czhj.wire.okio.AsyncTimeout
            protected IOException newTimeoutException(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // com.czhj.wire.okio.AsyncTimeout
            protected void timedOut() {
                Level level;
                StringBuilder sb2;
                Logger logger;
                Throwable th;
                try {
                    socket.close();
                } catch (AssertionError e10) {
                    if (!Okio.a(e10)) {
                        throw e10;
                    }
                    Logger logger2 = Okio.f25957a;
                    level = Level.WARNING;
                    sb2 = new StringBuilder();
                    th = e10;
                    logger = logger2;
                    sb2.append("Failed to close timed out socket ");
                    sb2.append(socket);
                    logger.log(level, sb2.toString(), th);
                } catch (Exception e11) {
                    Logger logger3 = Okio.f25957a;
                    level = Level.WARNING;
                    sb2 = new StringBuilder();
                    th = e11;
                    logger = logger3;
                    sb2.append("Failed to close timed out socket ");
                    sb2.append(socket);
                    logger.log(level, sb2.toString(), th);
                }
            }
        };
    }

    public static Sink appendingSink(File file) throws FileNotFoundException {
        if (file != null) {
            return sink(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static Sink blackhole() {
        return new Sink() { // from class: com.czhj.wire.okio.Okio.3
            @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
            }

            @Override // com.czhj.wire.okio.Sink, java.io.Flushable
            public void flush() throws IOException {
            }

            @Override // com.czhj.wire.okio.Sink
            public Timeout timeout() {
                return Timeout.NONE;
            }

            @Override // com.czhj.wire.okio.Sink
            public void write(Buffer buffer, long j10) throws IOException {
                buffer.skip(j10);
            }
        };
    }

    public static BufferedSink buffer(Sink sink) {
        return new RealBufferedSink(sink);
    }

    public static Sink sink(File file) throws FileNotFoundException {
        if (file != null) {
            return sink(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static Source source(File file) throws FileNotFoundException {
        if (file != null) {
            return source(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    private static Sink a(final OutputStream outputStream, final Timeout timeout) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (timeout != null) {
            return new Sink() { // from class: com.czhj.wire.okio.Okio.1
                @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    outputStream.close();
                }

                @Override // com.czhj.wire.okio.Sink, java.io.Flushable
                public void flush() throws IOException {
                    outputStream.flush();
                }

                @Override // com.czhj.wire.okio.Sink
                public Timeout timeout() {
                    return timeout;
                }

                public String toString() {
                    return "sink(" + outputStream + ")";
                }

                @Override // com.czhj.wire.okio.Sink
                public void write(Buffer buffer, long j10) throws IOException {
                    Util.checkOffsetAndCount(buffer.f25917c, 0L, j10);
                    while (j10 > 0) {
                        timeout.throwIfReached();
                        Segment segment = buffer.f25916b;
                        int iMin = (int) Math.min(j10, segment.f25994e - segment.f25993d);
                        outputStream.write(segment.f25992c, segment.f25993d, iMin);
                        int i10 = segment.f25993d + iMin;
                        segment.f25993d = i10;
                        long j11 = iMin;
                        j10 -= j11;
                        buffer.f25917c -= j11;
                        if (i10 == segment.f25994e) {
                            buffer.f25916b = segment.pop();
                            SegmentPool.a(segment);
                        }
                    }
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static BufferedSource buffer(Source source) {
        return new RealBufferedSource(source);
    }

    public static Sink sink(OutputStream outputStream) {
        return a(outputStream, new Timeout());
    }

    public static Source source(InputStream inputStream) {
        return a(inputStream, new Timeout());
    }

    private static Source a(final InputStream inputStream, final Timeout timeout) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (timeout != null) {
            return new Source() { // from class: com.czhj.wire.okio.Okio.2
                @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    inputStream.close();
                }

                @Override // com.czhj.wire.okio.Source
                public long read(Buffer buffer, long j10) throws IOException {
                    if (j10 < 0) {
                        throw new IllegalArgumentException("byteCount < 0: " + j10);
                    }
                    if (j10 == 0) {
                        return 0L;
                    }
                    try {
                        timeout.throwIfReached();
                        Segment segmentA = buffer.a(1);
                        int i10 = inputStream.read(segmentA.f25992c, segmentA.f25994e, (int) Math.min(j10, 8192 - segmentA.f25994e));
                        if (i10 != -1) {
                            segmentA.f25994e += i10;
                            long j11 = i10;
                            buffer.f25917c += j11;
                            return j11;
                        }
                        if (segmentA.f25993d != segmentA.f25994e) {
                            return -1L;
                        }
                        buffer.f25916b = segmentA.pop();
                        SegmentPool.a(segmentA);
                        return -1L;
                    } catch (AssertionError e10) {
                        if (Okio.a(e10)) {
                            throw new IOException(e10);
                        }
                        throw e10;
                    }
                }

                @Override // com.czhj.wire.okio.Source
                public Timeout timeout() {
                    return timeout;
                }

                public String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static Sink sink(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        AsyncTimeout asyncTimeoutA = a(socket);
        return asyncTimeoutA.sink(a(socket.getOutputStream(), asyncTimeoutA));
    }

    public static Source source(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        AsyncTimeout asyncTimeoutA = a(socket);
        return asyncTimeoutA.source(a(socket.getInputStream(), asyncTimeoutA));
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static Sink sink(Path path, OpenOption... openOptionArr) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException("path == null");
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                return sink(Files.newOutputStream(path, openOptionArr));
            }
            throw new IOException("no support os version");
        } catch (Throwable th) {
            throw new IOException(th.getMessage());
        }
    }

    public static Source source(Path path, OpenOption... openOptionArr) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException("path == null");
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                return source(Files.newInputStream(path, openOptionArr));
            }
            throw new IOException("no support os version");
        } catch (Throwable th) {
            throw new IOException(th.getMessage());
        }
    }
}
