package com.sigmob.sdk.base.network;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79611a = "e";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f79612g = 4096;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f79613b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f79614c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f79615d = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f79616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f79617f;

    public interface a {
        void a(long totalBytes, long currBytes, String filename);

        void a(File downloadFile, String filename);

        void a(Exception e10, String filename);

        void b(long totalBytes, long currBytes, String filename);

        void c(long totalBytes, long currBytes, String filename);
    }

    public interface b {
        void a(Exception exception);

        void a(String response);
    }

    private int a(long contentLengthLong, long downloadedLength) {
        if (contentLengthLong <= 0) {
            return -1;
        }
        return (int) ((downloadedLength * 100) / contentLengthLong);
    }

    private static long b(HttpURLConnection connection) {
        return Build.VERSION.SDK_INT >= 24 ? connection.getContentLengthLong() : connection.getContentLength();
    }

    private long a(HttpURLConnection connection) {
        try {
            if (Long.parseLong(connection.getHeaderField("Content-Length")) <= 0) {
                return b(connection);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return b(connection);
    }

    public void b() {
        this.f79617f = true;
    }

    public void c() {
        this.f79614c.removeCallbacksAndMessages(null);
        ExecutorService executorService = this.f79615d;
        if (executorService == null) {
            return;
        }
        executorService.shutdown();
    }

    private String a(InputStream is) throws IOException {
        if (is == null) {
            return "";
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return sb2.toString();
            }
            sb2.append(line);
            sb2.append('\n');
        }
    }

    public void a() {
        this.f79616e = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, Exception exc, File file) {
        aVar.a(exc, file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:33:0x00bf  */
    public /* synthetic */ void b(String str, final b bVar) throws Throwable {
        final Exception e10;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                try {
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setReadTimeout(10000);
                    httpURLConnection.setConnectTimeout(com.join.mgps.socket.entity.b.f73001c);
                    int i10 = 0;
                    while (i10 < 3) {
                        int responseCode = httpURLConnection.getResponseCode();
                        String responseMessage = httpURLConnection.getResponseMessage();
                        com.sigmob.sdk.base.utils.k.c(f79611a, "GET response code = " + responseCode + ", response message = " + responseMessage, new Object[0]);
                        if (responseCode == 200) {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                            final String strA = a(bufferedInputStream);
                            bufferedInputStream.close();
                            if (bVar == null) {
                                break;
                            }
                            this.f79614c.post(new Runnable() { // from class: com.sigmob.sdk.base.network.n
                                @Override // java.lang.Runnable
                                public final void run() {
                                    bVar.a(strA);
                                }
                            });
                            break;
                        }
                        TimeUnit.SECONDS.sleep((long) Math.pow(2.0d, i10));
                        i10++;
                    }
                    if (i10 == 3) {
                        throw new IOException("Failed to connect after retries.");
                    }
                } catch (Exception e11) {
                    e10 = e11;
                    com.sigmob.sdk.base.utils.k.f(f79611a, "Error during GET request error = " + e10.getMessage(), new Object[0]);
                    if (bVar != null) {
                        this.f79614c.post(new Runnable() { // from class: com.sigmob.sdk.base.network.o
                            @Override // java.lang.Runnable
                            public final void run() {
                                bVar.a(e10);
                            }
                        });
                    }
                    if (httpURLConnection == null) {
                        return;
                    }
                }
            } catch (Throwable th) {
                th = th;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        } catch (Exception e12) {
            e10 = e12;
            httpURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        httpURLConnection.disconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:153:0x02bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:154:0x02be A[Catch: Exception -> 0x02ba, TRY_LEAVE, TryCatch #22 {Exception -> 0x02ba, blocks: (B:150:0x02b6, B:154:0x02be), top: B:183:0x02b6 }] */
    /* JADX WARN: Code duplicated, block: B:158:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:164:0x02d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:165:0x02d5 A[Catch: Exception -> 0x02d1, TRY_LEAVE, TryCatch #18 {Exception -> 0x02d1, blocks: (B:161:0x02cd, B:165:0x02d5), top: B:181:0x02cd }] */
    /* JADX WARN: Code duplicated, block: B:169:0x02de  */
    /* JADX WARN: Code duplicated, block: B:173:0x02a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x02cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x02b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:? A[RETURN, SYNTHETIC] */
    public /* synthetic */ void b(String str, String str2, final a aVar) throws Throwable {
        Throwable th;
        InputStream inputStream;
        HttpURLConnection httpURLConnection;
        RandomAccessFile randomAccessFile;
        InputStream inputStream2;
        RandomAccessFile randomAccessFile2;
        long j10;
        InputStream inputStream3;
        HttpURLConnection httpURLConnection2;
        String str3;
        final File file = new File(str);
        long length = file.length();
        long j11 = file.exists() ? length : 0L;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
            try {
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setRequestProperty("Range", "bytes=" + j11 + "-");
                httpURLConnection.connect();
                try {
                    if (this.f79617f) {
                        httpURLConnection.disconnect();
                        httpURLConnection.disconnect();
                        return;
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    String responseMessage = httpURLConnection.getResponseMessage();
                    boolean z10 = true;
                    boolean z11 = responseCode == 200;
                    if (responseCode != 206) {
                        z10 = false;
                    }
                    String str4 = f79611a;
                    com.sigmob.sdk.base.utils.k.c(str4, "downloadFile: responseCode = " + responseCode + ", isOK = " + z11 + ", isResumeSupported = " + z10, new Object[0]);
                    if (!z10 && !z11) {
                        if (aVar != null) {
                            final Exception exc = new Exception("HTTP request failed with status code = " + responseCode + ", response message = " + responseMessage);
                            this.f79614c.post(new Runnable() { // from class: com.sigmob.sdk.base.network.r
                                @Override // java.lang.Runnable
                                public final void run() {
                                    e.a(aVar, exc, file);
                                }
                            });
                        }
                        httpURLConnection.disconnect();
                        return;
                    }
                    if (z10) {
                        j10 = j11;
                    } else {
                        file.delete();
                        j10 = 0;
                    }
                    inputStream = httpURLConnection.getInputStream();
                    try {
                        randomAccessFile2 = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
                        try {
                            randomAccessFile2.seek(j10);
                            long jA = a(httpURLConnection) + length;
                            if (aVar != null) {
                                try {
                                    inputStream3 = inputStream;
                                    httpURLConnection2 = httpURLConnection;
                                    str3 = str4;
                                    try {
                                        aVar.a(jA, j10, file.getName());
                                    } catch (Exception e10) {
                                        e = e10;
                                        httpURLConnection = httpURLConnection2;
                                        randomAccessFile = randomAccessFile2;
                                        inputStream2 = inputStream3;
                                        if (aVar != null) {
                                            try {
                                                aVar.a(e, file.getName());
                                            } catch (Throwable th2) {
                                                th = th2;
                                                randomAccessFile2 = randomAccessFile;
                                                inputStream = inputStream2;
                                                if (inputStream != null) {
                                                    try {
                                                        inputStream.close();
                                                        if (randomAccessFile2 != null) {
                                                            randomAccessFile2.close();
                                                        }
                                                    } catch (Exception e11) {
                                                        e11.printStackTrace();
                                                        if (httpURLConnection == null) {
                                                            throw th;
                                                        }
                                                        httpURLConnection.disconnect();
                                                        throw th;
                                                    }
                                                } else if (randomAccessFile2 != null) {
                                                    randomAccessFile2.close();
                                                }
                                                if (httpURLConnection == null) {
                                                    throw th;
                                                }
                                                httpURLConnection.disconnect();
                                                throw th;
                                            }
                                        }
                                        if (inputStream2 != null) {
                                            try {
                                                inputStream2.close();
                                                if (randomAccessFile != null) {
                                                    randomAccessFile.close();
                                                }
                                            } catch (Exception e12) {
                                                e12.printStackTrace();
                                            }
                                        } else if (randomAccessFile != null) {
                                            randomAccessFile.close();
                                        }
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                    } catch (Throwable th3) {
                                        httpURLConnection = httpURLConnection2;
                                        th = th3;
                                        inputStream = inputStream3;
                                        if (inputStream != null) {
                                            inputStream.close();
                                            if (randomAccessFile2 != null) {
                                                randomAccessFile2.close();
                                            }
                                        } else if (randomAccessFile2 != null) {
                                            randomAccessFile2.close();
                                        }
                                        if (httpURLConnection == null) {
                                            throw th;
                                        }
                                        httpURLConnection.disconnect();
                                        throw th;
                                    }
                                } catch (Exception e13) {
                                    e = e13;
                                    inputStream3 = inputStream;
                                } catch (Throwable th4) {
                                    th = th4;
                                    th = th;
                                    if (inputStream != null) {
                                        inputStream.close();
                                        if (randomAccessFile2 != null) {
                                            randomAccessFile2.close();
                                        }
                                    } else if (randomAccessFile2 != null) {
                                        randomAccessFile2.close();
                                    }
                                    if (httpURLConnection == null) {
                                        throw th;
                                    }
                                    httpURLConnection.disconnect();
                                    throw th;
                                }
                            } else {
                                str3 = str4;
                                inputStream3 = inputStream;
                                httpURLConnection2 = httpURLConnection;
                            }
                            try {
                                com.sigmob.sdk.base.utils.k.c(str3, "downloadFile onStart: downloadedBytes = " + j10 + ", totalBytes = " + jA + ", file = " + file.getName(), new Object[0]);
                                byte[] bArr = new byte[4096];
                                long j12 = j10;
                                inputStream2 = inputStream3;
                                while (true) {
                                    try {
                                        int i10 = inputStream2.read(bArr);
                                        if (i10 != -1) {
                                            if (this.f79617f) {
                                                randomAccessFile2.close();
                                                file.delete();
                                                httpURLConnection2.disconnect();
                                                try {
                                                    inputStream2.close();
                                                    randomAccessFile2.close();
                                                } catch (Exception e14) {
                                                    e14.printStackTrace();
                                                }
                                                httpURLConnection2.disconnect();
                                                return;
                                            }
                                            if (this.f79616e) {
                                                if (aVar != null) {
                                                    aVar.b(jA, j12, file.getName());
                                                }
                                                randomAccessFile2.close();
                                                httpURLConnection2.disconnect();
                                                try {
                                                    inputStream2.close();
                                                    randomAccessFile2.close();
                                                } catch (Exception e15) {
                                                    e15.printStackTrace();
                                                }
                                                httpURLConnection2.disconnect();
                                                return;
                                            }
                                            synchronized (this.f79613b) {
                                                randomAccessFile2.write(bArr, 0, i10);
                                            }
                                            j12 += (long) i10;
                                            if (aVar != null) {
                                                aVar.c(jA, j12, file.getName());
                                                j12 = j12;
                                            }
                                            int iA = a(jA, j12);
                                            com.sigmob.sdk.base.utils.k.c(f79611a, "downloadFile onProgress: downloadedBytes = " + j12 + ", totalBytes = " + jA + ", progress = " + iA + ", file = " + file.getName(), new Object[0]);
                                        } else {
                                            if (this.f79617f) {
                                                file.delete();
                                                httpURLConnection2.disconnect();
                                                try {
                                                    inputStream2.close();
                                                    randomAccessFile2.close();
                                                } catch (Exception e16) {
                                                    e16.printStackTrace();
                                                }
                                                httpURLConnection2.disconnect();
                                                return;
                                            }
                                            randomAccessFile2.close();
                                            httpURLConnection2.disconnect();
                                            if (!this.f79616e) {
                                                if (aVar != null) {
                                                    aVar.a(file, file.getName());
                                                }
                                                com.sigmob.sdk.base.utils.k.c(f79611a, "downloadFile onCompleted: filename = " + file.getName() + ", fileSize = " + file.length(), new Object[0]);
                                            } else if (aVar != null) {
                                                aVar.b(jA, j12, file.getName());
                                            }
                                            try {
                                                inputStream2.close();
                                                randomAccessFile2.close();
                                            } catch (Exception e17) {
                                                e17.printStackTrace();
                                            }
                                            httpURLConnection2.disconnect();
                                            return;
                                        }
                                    } catch (Exception e18) {
                                        e = e18;
                                        httpURLConnection = httpURLConnection2;
                                        randomAccessFile = randomAccessFile2;
                                        if (aVar != null) {
                                            aVar.a(e, file.getName());
                                        }
                                        if (inputStream2 != null) {
                                            inputStream2.close();
                                            if (randomAccessFile != null) {
                                                randomAccessFile.close();
                                            }
                                        } else if (randomAccessFile != null) {
                                            randomAccessFile.close();
                                        }
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        httpURLConnection = httpURLConnection2;
                                        th = th;
                                        inputStream = inputStream2;
                                        if (inputStream != null) {
                                            inputStream.close();
                                            if (randomAccessFile2 != null) {
                                                randomAccessFile2.close();
                                            }
                                        } else if (randomAccessFile2 != null) {
                                            randomAccessFile2.close();
                                        }
                                        if (httpURLConnection == null) {
                                            throw th;
                                        }
                                        httpURLConnection.disconnect();
                                        throw th;
                                    }
                                }
                            } catch (Exception e19) {
                                e = e19;
                                inputStream2 = inputStream3;
                            } catch (Throwable th6) {
                                th = th6;
                                inputStream2 = inputStream3;
                            }
                        } catch (Exception e20) {
                            e = e20;
                            inputStream2 = inputStream;
                        } catch (Throwable th7) {
                            th = th7;
                        }
                    } catch (Exception e21) {
                        e = e21;
                        inputStream2 = inputStream;
                        randomAccessFile = null;
                    } catch (Throwable th8) {
                        th = th8;
                        randomAccessFile2 = null;
                        if (inputStream != null) {
                            inputStream.close();
                            if (randomAccessFile2 != null) {
                                randomAccessFile2.close();
                            }
                        } else if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        if (httpURLConnection == null) {
                            throw th;
                        }
                        httpURLConnection.disconnect();
                        throw th;
                    }
                } catch (Exception e22) {
                    e = e22;
                    randomAccessFile = null;
                    inputStream2 = null;
                } catch (Throwable th9) {
                    th = th9;
                    th = th;
                    inputStream = null;
                    randomAccessFile2 = null;
                    if (inputStream != null) {
                        inputStream.close();
                        if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                    } else if (randomAccessFile2 != null) {
                        randomAccessFile2.close();
                    }
                    if (httpURLConnection == null) {
                        throw th;
                    }
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Exception e23) {
                e = e23;
            } catch (Throwable th10) {
                th = th10;
            }
            randomAccessFile = null;
        } catch (Exception e24) {
            e = e24;
            randomAccessFile = null;
            httpURLConnection = null;
        } catch (Throwable th11) {
            th = th11;
            inputStream = null;
            httpURLConnection = null;
        }
        inputStream2 = null;
        if (aVar != null) {
            aVar.a(e, file.getName());
        }
        if (inputStream2 != null) {
            inputStream2.close();
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        } else if (randomAccessFile != null) {
            randomAccessFile.close();
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, String str2, final b bVar) throws Throwable {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection2.setRequestMethod("POST");
                    httpURLConnection2.setReadTimeout(10000);
                    httpURLConnection2.setConnectTimeout(com.join.mgps.socket.entity.b.f73001c);
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
                    OutputStream outputStream = httpURLConnection2.getOutputStream();
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, Charset.forName("UTF-8")));
                    if (str2 == null) {
                        str2 = "";
                    }
                    bufferedWriter.write(str2);
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    outputStream.close();
                    int responseCode = httpURLConnection2.getResponseCode();
                    String responseMessage = httpURLConnection2.getResponseMessage();
                    com.sigmob.sdk.base.utils.k.c(f79611a, "POST response code = " + responseCode + ", response message = " + responseMessage, new Object[0]);
                    if (responseCode != 200) {
                        throw new IOException("Unexpected HTTP response code = " + responseCode + ", response message = " + responseMessage);
                    }
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection2.getInputStream());
                    final String strA = a(bufferedInputStream);
                    bufferedInputStream.close();
                    if (bVar != null) {
                        this.f79614c.post(new Runnable() { // from class: com.sigmob.sdk.base.network.p
                            @Override // java.lang.Runnable
                            public final void run() {
                                bVar.a(strA);
                            }
                        });
                    }
                    httpURLConnection2.disconnect();
                } catch (Exception e10) {
                    e = e10;
                    httpURLConnection = httpURLConnection2;
                    com.sigmob.sdk.base.utils.k.f(f79611a, "Error during POST request error = " + e.getMessage(), new Object[0]);
                    if (bVar != null) {
                        this.f79614c.post(new Runnable() { // from class: com.sigmob.sdk.base.network.q
                            @Override // java.lang.Runnable
                            public final void run() {
                                bVar.a(e);
                            }
                        });
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void a(final String urlStr, final b callback) {
        this.f79615d.submit(new Runnable() { // from class: com.sigmob.sdk.base.network.l
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f79636b.b(urlStr, callback);
            }
        });
    }

    public void a(final String urlString, final String destinationPath, final a listener) {
        this.f79616e = false;
        this.f79617f = false;
        this.f79615d.submit(new Runnable() { // from class: com.sigmob.sdk.base.network.m
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f79639b.b(destinationPath, urlString, listener);
            }
        });
    }

    public void a(final String urlStr, final String jsonStr, final b callback) {
        this.f79615d.submit(new Runnable() { // from class: com.sigmob.sdk.base.network.s
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f79654b.b(urlStr, jsonStr, callback);
            }
        });
    }
}
