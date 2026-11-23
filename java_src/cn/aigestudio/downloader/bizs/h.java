package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.join.mgps.Util.o3;
import com.windmill.sdk.WMConstants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
class h implements Runnable, l {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f660g = "h";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicLong f663d = new AtomicLong();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f664e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicLong f665f = new AtomicLong(System.currentTimeMillis());

    h(Context context, f info) {
        this.f661b = info;
        this.f662c = context;
        this.f663d.set(info.f623b.get());
        if (info.f631j) {
            return;
        }
        c.k(context).d(info);
    }

    private void e(HttpURLConnection conn) {
        for (e eVar : this.f661b.f636o) {
            conn.addRequestProperty(eVar.f620a, eVar.f621b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.io.InputStream] */
    private void g(HttpURLConnection conn) throws Exception {
        FileOutputStream fileOutputStream;
        Throwable th;
        Exception e10;
        int i10;
        try {
            try {
                conn = conn.getInputStream();
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(this.f661b.f639r);
                    try {
                        byte[] bArr = new byte[4096];
                        while (!this.f661b.f640s && (i10 = conn.read(bArr)) != -1) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("downloading...len=");
                            sb2.append(i10);
                            sb2.append(";url=");
                            sb2.append(this.f661b.f626e);
                            fileOutputStream2.write(bArr, 0, i10);
                            System.currentTimeMillis();
                            c(this.f661b.f626e, i10);
                        }
                        if (this.f661b.f640s) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("wap thread stop now.url=");
                            sb3.append(this.f661b.f626e);
                            j(this.f661b);
                        } else {
                            a(null);
                        }
                        fileOutputStream2.close();
                        conn.close();
                    } catch (Exception e11) {
                        e10 = e11;
                        e10.printStackTrace();
                        throw new IOException();
                    }
                } catch (Exception e12) {
                    e10 = e12;
                } catch (Throwable th2) {
                    fileOutputStream = null;
                    th = th2;
                    fileOutputStream.close();
                    conn.close();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e13) {
            e10 = e13;
        } catch (Throwable th4) {
            fileOutputStream = null;
            th = th4;
            conn = 0;
        }
    }

    private void h() {
        List<j> listG = c.k(this.f662c).g(this.f661b.f626e);
        if (listG != null && listG.size() > 0) {
            Iterator<j> it2 = listG.iterator();
            while (it2.hasNext()) {
                it2.next().f674e = true;
            }
            c.k(this.f662c).j(this.f661b.f626e);
        }
        long length = (this.f661b.f639r.exists() && this.f661b.f639r.isFile()) ? this.f661b.f639r.length() : 0L;
        String string = UUID.randomUUID().toString();
        f fVar = this.f661b;
        j jVar = new j(string, fVar.f626e, length, fVar.f622a.get());
        this.f661b.a(jVar);
        c.k(this.f662c).i(jVar);
        g.q(this.f662c).b(new i(jVar, this.f661b, this));
    }

    private void i(HttpURLConnection conn, int code) throws Exception {
        List<j> list;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method dlInit() called.code= ");
        sb2.append(code);
        sb2.append(";url=");
        sb2.append(this.f661b.f626e);
        k(conn);
        c.k(this.f662c).c(this.f661b);
        if (this.f661b.f630i) {
            f fVar = this.f661b;
            fVar.f638q.a(fVar.f626e, fVar.f624c, fVar.f627f, fVar.f622a.get());
        }
        if (!o3.i(this.f661b.f625d)) {
            throw new DLException("Can not create file");
        }
        this.f661b.f639r = new File(this.f661b.f625d);
        if (this.f661b.f639r.exists() && this.f661b.f639r.length() == this.f661b.f622a.get()) {
            if (this.f661b.f630i) {
                g.q(this.f662c).s(this.f661b.f626e, 7);
                f fVar2 = this.f661b;
                fVar2.f638q.f(fVar2.f626e, fVar2.f639r);
                return;
            }
            return;
        }
        if (code == 200 && this.f661b.f639r.exists() && this.f661b.f639r.length() > 0) {
            conn.disconnect();
            throw new Exception("wap mode.");
        }
        if (code == 200) {
            g(conn);
            return;
        }
        if (code != 206) {
            return;
        }
        if (this.f661b.f622a.get() <= 0) {
            g(conn);
            return;
        }
        if (!this.f661b.f631j || (list = this.f661b.f637p) == null || list.size() != 1) {
            h();
            return;
        }
        for (j jVar : this.f661b.f637p) {
            jVar.f677h = false;
            jVar.f676g = false;
            jVar.f672c = this.f661b.f639r.length();
            g.q(this.f662c).b(new i(jVar, this.f661b, this));
        }
    }

    private synchronized void j(f info) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method onStop() called.url=");
        sb2.append(info.f626e);
        g.q(this.f662c).s(info.f626e, 2);
        if (info.f630i) {
            info.f638q.e(info.f626e, info.f639r.length());
        }
        g.q(this.f662c).a();
    }

    private void k(HttpURLConnection conn) {
        this.f661b.f634m = conn.getHeaderField(com.sigmob.sdk.downloader.core.c.f80446j);
        this.f661b.f635n = conn.getHeaderField("Content-Location");
        this.f661b.f632k = k.e(conn.getContentType());
        String headerField = conn.getHeaderField("Transfer-Encoding");
        if (TextUtils.isEmpty(headerField)) {
            try {
                this.f661b.f622a.set(Integer.parseInt(conn.getHeaderField("Content-Length")));
            } catch (NumberFormatException unused) {
                this.f661b.f622a.set(-1L);
            }
        } else {
            this.f661b.f622a.set(-1L);
        }
        if (this.f661b.f622a.get() == -1 && (TextUtils.isEmpty(headerField) || !headerField.equalsIgnoreCase("chunked"))) {
            throw new RuntimeException("Can not obtain size of download file.");
        }
        if (TextUtils.isEmpty(this.f661b.f624c)) {
            f fVar = this.f661b;
            fVar.f624c = k.f(fVar.f627f, fVar.f634m, fVar.f635n);
        }
    }

    @Override // cn.aigestudio.downloader.bizs.l
    public synchronized void a(j threadInfo) {
        try {
            if (threadInfo == null) {
                if (this.f661b.f630i) {
                    g.q(this.f662c).s(this.f661b.f626e, 1);
                    f fVar = this.f661b;
                    fVar.f638q.f(fVar.f626e, fVar.f639r);
                }
                return;
            }
            this.f661b.b(threadInfo);
            c.k(this.f662c).a(threadInfo.f670a);
            if (threadInfo.f672c < threadInfo.f673d) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Thread size ");
            sb2.append(this.f661b.f637p.size());
            if (this.f661b.f637p.isEmpty()) {
                g.q(this.f662c).s(this.f661b.f626e, 1);
                c.k(this.f662c).f(this.f661b.f626e);
                if (this.f661b.f630i) {
                    f fVar2 = this.f661b;
                    fVar2.f638q.c(fVar2.f626e, fVar2.f622a.get());
                    f fVar3 = this.f661b;
                    fVar3.f638q.f(fVar3.f626e, fVar3.f639r);
                }
                g.q(this.f662c).a();
            } else {
                this.f661b.f628g.decrementAndGet();
                for (int i10 = 0; i10 < this.f661b.f637p.size(); i10++) {
                    g.q(this.f662c).b(new i(this.f661b.f637p.get(i10), this.f661b, this));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // cn.aigestudio.downloader.bizs.l
    public synchronized void b(j threadInfo) {
        c.k(this.f662c).e(threadInfo);
        int i10 = this.f664e + 1;
        this.f664e = i10;
        if (i10 >= this.f661b.f637p.size()) {
            this.f661b.f623b.set(this.f663d.get());
            c.k(this.f662c).c(this.f661b);
            this.f664e = 0;
            if (this.f661b.f630i) {
                f fVar = this.f661b;
                fVar.f638q.d(fVar.f626e, this.f663d.get());
            }
        }
    }

    @Override // cn.aigestudio.downloader.bizs.l
    public synchronized void c(String url, int progress) {
        AtomicLong atomicLong = this.f663d;
        atomicLong.set(atomicLong.get() + ((long) progress));
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f665f.get() > 1000) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f663d.get());
            sb2.append("");
            if (this.f661b.f630i) {
                this.f661b.f638q.c(url, this.f663d.get());
            }
            this.f665f.set(jCurrentTimeMillis);
        }
    }

    @Override // cn.aigestudio.downloader.bizs.l
    public synchronized void d(j threadInfo) {
        c.k(this.f662c).e(threadInfo);
        int i10 = this.f664e + 1;
        this.f664e = i10;
        if (i10 >= this.f661b.f637p.size()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("All the threads was stopped.threadInfo.isError=");
            sb2.append(threadInfo.f675f);
            this.f661b.f623b.set(this.f663d.get());
            g.q(this.f662c).c(this.f661b).s(this.f661b.f626e, 3);
            c.k(this.f662c).c(this.f661b);
            this.f664e = 0;
            if (this.f661b.f630i) {
                if (threadInfo.f675f) {
                    f fVar = this.f661b;
                    fVar.f638q.g(fVar.f626e, -1, WMConstants.TIMER_STAGE_NONE);
                } else {
                    f fVar2 = this.f661b;
                    fVar2.f638q.e(fVar2.f626e, this.f663d.get());
                }
            }
            g.q(this.f662c).a();
        }
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        if (this.f661b.f630i) {
            f fVar = this.f661b;
            fVar.f638q.a(fVar.f626e, fVar.f624c, fVar.f627f, fVar.f622a.get());
        }
        Process.setThreadPriority(10);
        while (this.f661b.f629h < 5) {
            HttpURLConnection httpURLConnection = null;
            try {
                try {
                    HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(this.f661b.f627f).openConnection();
                    try {
                        f fVar2 = this.f661b;
                        if (fVar2.f640s) {
                            g.q(this.f662c).s(this.f661b.f626e, 4);
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                                return;
                            }
                            return;
                        }
                        if (fVar2.f641t) {
                            g.q(this.f662c).s(this.f661b.f626e, 6);
                            if (this.f661b.f630i) {
                                f fVar3 = this.f661b;
                                fVar3.f638q.g(fVar3.f626e, 138, "delete...");
                            }
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                                return;
                            }
                            return;
                        }
                        httpURLConnection2.setInstanceFollowRedirects(false);
                        httpURLConnection2.setConnectTimeout(10000);
                        httpURLConnection2.setReadTimeout(30000);
                        e(httpURLConnection2);
                        int responseCode = httpURLConnection2.getResponseCode();
                        if (responseCode == 200 || responseCode == 206) {
                            i(httpURLConnection2, responseCode);
                            httpURLConnection2.disconnect();
                            return;
                        }
                        if (responseCode != 301 && responseCode != 307 && responseCode != 303 && responseCode != 304) {
                            if (this.f661b.f630i) {
                                f fVar4 = this.f661b;
                                fVar4.f638q.g(fVar4.f626e, responseCode, httpURLConnection2.getResponseMessage());
                            }
                            g.q(this.f662c).s(this.f661b.f626e, 5);
                            httpURLConnection2.disconnect();
                            return;
                        }
                        String headerField = httpURLConnection2.getHeaderField("location");
                        if (TextUtils.isEmpty(headerField)) {
                            throw new DLException("Can not obtain real url from location in header.");
                        }
                        f fVar5 = this.f661b;
                        fVar5.f627f = headerField;
                        fVar5.f629h++;
                        httpURLConnection2.disconnect();
                    } catch (Exception e10) {
                        e = e10;
                        httpURLConnection = httpURLConnection2;
                        e.printStackTrace();
                        g.q(this.f662c).s(this.f661b.f626e, 6);
                        if (this.f661b.f630i) {
                            f fVar6 = this.f661b;
                            fVar6.f638q.g(fVar6.f626e, 138, e.toString());
                        }
                        g.q(this.f662c).a();
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                            return;
                        }
                        return;
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
        throw new RuntimeException("Too many redirects");
    }
}
