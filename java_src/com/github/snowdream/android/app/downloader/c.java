package com.github.snowdream.android.app.downloader;

import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.tk.AdBaseConstants;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.t2;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f29308r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f29309s = 3;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f29310t = 4;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f29311u = 5;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f29312v = 2;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f29313w = 6;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f29314x = 7;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f29316c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f29318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f29319f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f29320g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f29321h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f29322i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private File f29323j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private HttpURLConnection f29324k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private HttpURLConnection f29325l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f29328o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    String f29329p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f29330q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f29315b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f29317d = 3;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RandomAccessFile f29326m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private InputStream f29327n = null;

    public c(String url, String fileName, String downloadPath, long expectSize) {
        this.f29320g = url;
        this.f29321h = fileName;
        this.f29322i = downloadPath;
        if (!downloadPath.endsWith(net.lingala.zip4j.util.e.F0)) {
            this.f29322i = downloadPath + net.lingala.zip4j.util.e.F0;
        }
        this.f29318e = expectSize;
    }

    private void b() {
        try {
            HttpURLConnection httpURLConnection = this.f29324k;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        } catch (Exception unused) {
        }
        try {
            InputStream inputStream = this.f29327n;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        RandomAccessFile randomAccessFile = this.f29326m;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        HttpURLConnection httpURLConnection2 = this.f29325l;
        if (httpURLConnection2 != null) {
            try {
                httpURLConnection2.disconnect();
                this.f29325l = null;
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    private void j() throws IOException {
        byte[] bArr = new byte[4096];
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (true) {
            int i10 = this.f29327n.read(bArr, 0, 4096);
            if (i10 <= 0) {
                return;
            }
            if (this.f29315b.get()) {
                q();
                return;
            }
            this.f29326m.write(bArr, 0, i10);
            this.f29328o += (long) i10;
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            long j10 = jCurrentTimeMillis2 - jCurrentTimeMillis;
            if (j10 > 200) {
                this.f29329p = UtilsMy.e(((long) (i10 * 1000)) / j10);
                this.f29330q = (int) ((this.f29328o * 100) / this.f29319f);
                k(5);
                jCurrentTimeMillis = jCurrentTimeMillis2;
            }
        }
    }

    private void k(int status) {
        if (this.f29316c == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = status;
        if (status == 5) {
            messageObtain.obj = this.f29320g + ";" + this.f29329p + ";" + this.f29330q;
            messageObtain.arg1 = this.f29330q;
        } else if (status == 7) {
            messageObtain.obj = Long.valueOf(this.f29319f);
        } else {
            messageObtain.obj = this.f29320g;
        }
        this.f29316c.sendMessage(messageObtain);
    }

    private void q() {
        b();
        File file = this.f29323j;
        if (file != null) {
            UtilsMy.delete(file);
        }
        k(3);
    }

    public void a() {
        this.f29315b.set(true);
    }

    public long c() {
        return this.f29319f;
    }

    public String d() {
        return this.f29322i;
    }

    public long e() {
        return this.f29318e;
    }

    public File g() {
        return this.f29323j;
    }

    public String h() {
        return this.f29321h;
    }

    public String i() {
        return this.f29320g;
    }

    public void l(String downloadPath) {
        this.f29322i = downloadPath;
    }

    public void m(long expectSize) {
        this.f29318e = expectSize;
    }

    public void n(String fileName) {
        this.f29321h = fileName;
    }

    public void o(Handler handler) {
        this.f29316c = handler;
    }

    public void p(String url) {
        this.f29320g = url;
    }

    /* JADX WARN: Code duplicated, block: B:197:0x0390 A[PHI: r9
      0x0390: PHI (r9v7 boolean) = (r9v5 boolean), (r9v3 boolean), (r9v3 boolean), (r9v3 boolean), (r9v3 boolean), (r9v3 boolean) binds: [B:196:0x038e, B:181:0x035c, B:138:0x028e, B:161:0x02eb, B:66:0x0159, B:51:0x0117] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:204:0x03b1  */
    @Override // java.lang.Runnable
    public void run() throws Throwable {
        boolean z10;
        k(2);
        Process.setThreadPriority(19);
        if (t2.h(this.f29320g)) {
            k(4);
            return;
        }
        o0.K(this.f29322i);
        File file = new File(this.f29322i + this.f29321h);
        this.f29323j = file;
        if (!file.exists()) {
            try {
                this.f29323j.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
                k(4);
                return;
            }
        }
        if (this.f29315b.get()) {
            q();
            return;
        }
        boolean z11 = false;
        while (this.f29317d > 0) {
            long length = this.f29323j.exists() ? this.f29323j.length() : 0L;
            try {
                try {
                    URL url = new URL(this.f29320g);
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                    this.f29324k = httpURLConnection;
                    httpURLConnection.setConnectTimeout(3000);
                    this.f29324k.setReadTimeout(3000);
                    this.f29324k.setRequestProperty("Connection", "Keep-Alive");
                    this.f29324k.setRequestMethod("GET");
                    if (this.f29324k.getResponseCode() == 200) {
                        String headerField = this.f29324k.getHeaderField("Content-Type");
                        String str = "";
                        if (t2.h(headerField)) {
                            headerField = "";
                        }
                        String lowerCase = headerField.toLowerCase();
                        if (this.f29318e == 0) {
                            this.f29318e = this.f29324k.getContentLength();
                        }
                        if (lowerCase.equals("application/octet-stream") || lowerCase.equals(AdBaseConstants.MIME_APK) || lowerCase.equals("application/zip") || this.f29318e == this.f29324k.getContentLength()) {
                            long j10 = this.f29318e;
                            if (j10 == 0 || j10 == this.f29324k.getContentLength()) {
                                this.f29319f = this.f29324k.getContentLength();
                                k(7);
                                long j11 = this.f29319f;
                                if (j11 == 0 || length != j11) {
                                    try {
                                        HttpURLConnection httpURLConnection2 = this.f29324k;
                                        if (httpURLConnection2 != null) {
                                            httpURLConnection2.disconnect();
                                            this.f29324k = null;
                                        }
                                    } catch (Exception unused) {
                                    }
                                    if (this.f29315b.get()) {
                                        q();
                                        if (this.f29323j.length() == 0 || this.f29323j.length() != this.f29319f) {
                                            if (this.f29317d == 0) {
                                                k(4);
                                                return;
                                            }
                                            return;
                                        } else if (!z11) {
                                            k(1);
                                        }
                                    } else {
                                        HttpURLConnection httpURLConnection3 = (HttpURLConnection) url.openConnection();
                                        this.f29325l = httpURLConnection3;
                                        httpURLConnection3.setConnectTimeout(3000);
                                        this.f29325l.setReadTimeout(3000);
                                        this.f29325l.setRequestProperty("Connection", "Keep-Alive");
                                        this.f29325l.setRequestMethod("GET");
                                        if (length > 0) {
                                            this.f29325l.setRequestProperty("Range", "bytes=" + length + "-");
                                        }
                                        int responseCode = this.f29325l.getResponseCode();
                                        if (responseCode != 200 && responseCode != 206) {
                                            switch (responseCode) {
                                                case 301:
                                                case 302:
                                                case 303:
                                                default:
                                                    z10 = false;
                                                    break;
                                            }
                                        } else {
                                            String headerField2 = this.f29325l.getHeaderField("Transfer-Encoding");
                                            if (!TextUtils.isEmpty(headerField2)) {
                                                headerField2.equalsIgnoreCase("chunked");
                                            }
                                            if (responseCode == 200 && length > 0 && this.f29323j.exists()) {
                                                UtilsMy.delete(this.f29323j);
                                            }
                                            z10 = true;
                                        }
                                        if (z10) {
                                            String headerField3 = this.f29325l.getHeaderField("Content-Type");
                                            if (!t2.h(headerField3)) {
                                                str = headerField3;
                                            }
                                            String lowerCase2 = str.toLowerCase();
                                            if (lowerCase2.equals("application/octet-stream") || lowerCase2.equals(AdBaseConstants.MIME_APK) || lowerCase2.equals("application/zip") || this.f29318e == this.f29319f) {
                                                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f29323j, net.lingala.zip4j.util.e.f94694e0);
                                                this.f29326m = randomAccessFile;
                                                randomAccessFile.seek(length);
                                                this.f29328o = length;
                                                this.f29327n = new BufferedInputStream(this.f29325l.getInputStream());
                                                j();
                                                if (this.f29323j.length() == 0 || this.f29323j.length() != this.f29319f) {
                                                    if (this.f29317d == 0) {
                                                        k(4);
                                                        return;
                                                    }
                                                    return;
                                                } else if (!z11) {
                                                    k(1);
                                                }
                                            } else {
                                                this.f29325l.disconnect();
                                                this.f29317d--;
                                                if (this.f29323j.length() == 0 || this.f29323j.length() != this.f29319f) {
                                                    if (this.f29317d == 0) {
                                                        k(4);
                                                    }
                                                } else if (!z11) {
                                                    k(1);
                                                }
                                            }
                                        } else {
                                            try {
                                                HttpURLConnection httpURLConnection4 = this.f29325l;
                                                if (httpURLConnection4 != null) {
                                                    httpURLConnection4.disconnect();
                                                    this.f29325l = null;
                                                }
                                            } catch (Exception unused2) {
                                            }
                                            int i10 = this.f29317d - 1;
                                            this.f29317d = i10;
                                            if (i10 == 0) {
                                                k(4);
                                            }
                                            if (this.f29323j.length() == 0 || this.f29323j.length() != this.f29319f) {
                                                if (this.f29317d == 0) {
                                                    k(4);
                                                }
                                            } else if (!z11) {
                                                k(1);
                                            }
                                        }
                                    }
                                } else {
                                    try {
                                        k(1);
                                        b();
                                        if (this.f29323j.length() == 0 || this.f29323j.length() != this.f29319f) {
                                            if (this.f29317d == 0) {
                                                k(4);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Exception e11) {
                                        e = e11;
                                        z11 = true;
                                        e.printStackTrace();
                                        int i11 = this.f29317d - 1;
                                        this.f29317d = i11;
                                        if (i11 == 0) {
                                            k(4);
                                        }
                                        if (this.f29323j.length() == 0 || this.f29323j.length() != this.f29319f) {
                                            if (this.f29317d == 0) {
                                                k(4);
                                            }
                                        } else if (!z11) {
                                            k(1);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        z11 = true;
                                        if (this.f29323j.length() == 0 || this.f29323j.length() != this.f29319f) {
                                            if (this.f29317d == 0) {
                                                k(4);
                                            }
                                            throw th;
                                        }
                                        if (!z11) {
                                            k(1);
                                        }
                                    }
                                }
                                b();
                                return;
                            }
                            this.f29324k.disconnect();
                            this.f29317d--;
                            if (this.f29323j.length() != 0 && this.f29323j.length() == this.f29319f) {
                                if (!z11) {
                                    k(1);
                                }
                                b();
                                return;
                            } else if (this.f29317d == 0) {
                                k(4);
                            }
                        } else {
                            this.f29324k.disconnect();
                            this.f29317d--;
                            if (this.f29323j.length() != 0 && this.f29323j.length() == this.f29319f) {
                                if (!z11) {
                                    k(1);
                                }
                                b();
                                return;
                            } else if (this.f29317d == 0) {
                                k(4);
                            }
                        }
                    } else {
                        this.f29324k.disconnect();
                        this.f29317d--;
                        if (this.f29323j.length() != 0 && this.f29323j.length() == this.f29319f) {
                            if (!z11) {
                                k(1);
                            }
                            b();
                            return;
                        } else if (this.f29317d == 0) {
                            k(4);
                        }
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
