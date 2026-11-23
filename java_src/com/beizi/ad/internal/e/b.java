package com.beizi.ad.internal.e;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    public interface a {
        @UiThread
        void a();

        @UiThread
        void a(InterfaceC0219b interfaceC0219b);

        @UiThread
        void a(d dVar);
    }

    /* JADX INFO: renamed from: com.beizi.ad.internal.e.b$b, reason: collision with other inner class name */
    public interface InterfaceC0219b {
        @UiThread
        void a(int i10);

        @UiThread
        void a(long j10, long j11);

        @WorkerThread
        boolean a(File file);

        @UiThread
        void b(File file);
    }

    public static final class c implements a, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private HandlerThread f8943a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private InterfaceC0219b f8944b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private Handler f8945c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Handler f8946d = new Handler(Looper.getMainLooper());

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d f8947e;

        public c() {
            HandlerThread handlerThread = new HandlerThread("download");
            this.f8943a = handlerThread;
            handlerThread.start();
            this.f8945c = new Handler(this.f8943a.getLooper());
        }

        private void b(final File file) {
            this.f8946d.post(new Runnable() { // from class: com.beizi.ad.internal.e.b.c.2
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f8944b != null) {
                        c.this.f8944b.b(file);
                    }
                }
            });
        }

        @Override // java.lang.Runnable
        @WorkerThread
        public void run() throws Throwable {
            HttpURLConnection httpURLConnection;
            InputStream inputStream;
            d dVar = this.f8947e;
            dVar.f8955a = true;
            File file = new File(dVar.f8959e);
            if (!file.exists() && !file.mkdirs()) {
                a(3);
                return;
            }
            String str = dVar.f8959e + File.separator + dVar.f8960f;
            File file2 = new File(str);
            RandomAccessFile randomAccessFile = null;
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(dVar.f8958d).openConnection();
                    try {
                        if (dVar.f8962h != 0) {
                            httpURLConnection.setRequestProperty("Range", "bytes=" + dVar.f8962h + "-");
                        }
                        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
                        int responseCode = httpURLConnection.getResponseCode();
                        if (responseCode == 200 || responseCode == 206) {
                            String headerField = httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f80446j);
                            String contentType = httpURLConnection.getContentType();
                            long contentLengthLong = Build.VERSION.SDK_INT >= 24 ? httpURLConnection.getContentLengthLong() : httpURLConnection.getContentLength();
                            if (responseCode == 200) {
                                dVar.f8962h = 0L;
                                dVar.f8961g = contentLengthLong;
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(headerField);
                            sb2.append(contentType);
                            inputStream = httpURLConnection.getInputStream();
                            try {
                                byte[] bArr = new byte[8192];
                                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, net.lingala.zip4j.util.e.f94694e0);
                                try {
                                    randomAccessFile2.seek(dVar.f8962h);
                                    int i10 = 0;
                                    while (true) {
                                        int i11 = inputStream.read(bArr);
                                        if (i11 == -1) {
                                            randomAccessFile2.getFD().sync();
                                            if (a(file2)) {
                                                dVar.f8955a = false;
                                                b(file2);
                                            } else {
                                                dVar.f8955a = false;
                                                a(4);
                                            }
                                            randomAccessFile = randomAccessFile2;
                                            break;
                                        }
                                        i10++;
                                        randomAccessFile2.write(bArr, 0, i11);
                                        d.c(dVar, i11);
                                        if (i10 % 64 == 0) {
                                            if (dVar.f8956b) {
                                                dVar.f8955a = false;
                                                a(1);
                                                try {
                                                    randomAccessFile2.getFD().sync();
                                                } catch (IOException unused) {
                                                }
                                                try {
                                                    randomAccessFile2.close();
                                                } catch (IOException unused2) {
                                                }
                                                try {
                                                    inputStream.close();
                                                } catch (IOException unused3) {
                                                }
                                                httpURLConnection.disconnect();
                                                return;
                                            }
                                            if (dVar.f8957c) {
                                                dVar.f8955a = false;
                                                a(6);
                                                try {
                                                    randomAccessFile2.getFD().sync();
                                                } catch (IOException unused4) {
                                                }
                                                try {
                                                    randomAccessFile2.close();
                                                } catch (IOException unused5) {
                                                }
                                                try {
                                                    inputStream.close();
                                                } catch (IOException unused6) {
                                                }
                                                httpURLConnection.disconnect();
                                                return;
                                            }
                                            if (i10 % 16 == 0) {
                                                a(dVar.f8962h, dVar.f8961g);
                                            }
                                        }
                                    }
                                } catch (IOException e10) {
                                    e = e10;
                                    randomAccessFile = randomAccessFile2;
                                    e.printStackTrace();
                                    dVar.f8955a = false;
                                    a(5);
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.getFD().sync();
                                        } catch (IOException unused7) {
                                        }
                                    }
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                        } catch (IOException unused8) {
                                        }
                                    }
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException unused9) {
                                        }
                                    }
                                    if (httpURLConnection == null) {
                                        return;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    randomAccessFile = randomAccessFile2;
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.getFD().sync();
                                        } catch (IOException unused10) {
                                        }
                                    }
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                        } catch (IOException unused11) {
                                        }
                                    }
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException unused12) {
                                        }
                                    }
                                    if (httpURLConnection == null) {
                                        throw th;
                                    }
                                    httpURLConnection.disconnect();
                                    throw th;
                                }
                            } catch (IOException e11) {
                                e = e11;
                            }
                        } else {
                            dVar.f8955a = false;
                            a(2);
                            inputStream = null;
                        }
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.getFD().sync();
                            } catch (IOException unused13) {
                            }
                        }
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (IOException unused14) {
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused15) {
                            }
                        }
                    } catch (IOException e12) {
                        e = e12;
                        inputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e13) {
                e = e13;
                httpURLConnection = null;
                inputStream = null;
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = null;
                inputStream = null;
            }
            httpURLConnection.disconnect();
        }

        @Override // com.beizi.ad.internal.e.b.a
        public void a(InterfaceC0219b interfaceC0219b) {
            this.f8944b = interfaceC0219b;
        }

        @Override // com.beizi.ad.internal.e.b.a
        public void a(d dVar) {
            if (!dVar.f8955a) {
                d dVar2 = this.f8947e;
                if (dVar2 != null && !dVar.equals(dVar2)) {
                    this.f8947e.f8956b = true;
                }
                this.f8947e = dVar;
                dVar.a();
                Handler handler = this.f8945c;
                if (handler != null) {
                    handler.post(this);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Invalid request,it's downloading");
        }

        @Override // com.beizi.ad.internal.e.b.a
        public void a() {
            HandlerThread handlerThread = this.f8943a;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            this.f8945c = null;
            this.f8943a = null;
        }

        private void a(final long j10, final long j11) {
            this.f8946d.post(new Runnable() { // from class: com.beizi.ad.internal.e.b.c.1
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f8944b != null) {
                        c.this.f8944b.a(j10, j11);
                    }
                }
            });
        }

        private boolean a(File file) {
            InterfaceC0219b interfaceC0219b = this.f8944b;
            return interfaceC0219b != null && interfaceC0219b.a(file);
        }

        private void a(final int i10) {
            this.f8946d.post(new Runnable() { // from class: com.beizi.ad.internal.e.b.c.3
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f8944b != null) {
                        c.this.f8944b.a(i10);
                    }
                }
            });
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile boolean f8955a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile boolean f8956b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile boolean f8957c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f8958d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f8959e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f8960f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private volatile long f8961g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private volatile long f8962h;

        public d(String str, String str2, String str3) {
            this.f8958d = str;
            this.f8959e = str2;
            this.f8960f = str3;
            a();
        }

        static /* synthetic */ long c(d dVar, long j10) {
            long j11 = dVar.f8962h + j10;
            dVar.f8962h = j11;
            return j11;
        }

        public void a() {
            this.f8961g = 0L;
            this.f8962h = 0L;
            this.f8956b = false;
            this.f8957c = false;
            this.f8955a = false;
        }
    }

    public static a a() {
        return new c();
    }
}
