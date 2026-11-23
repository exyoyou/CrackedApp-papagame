package com.byazt.xn;

import android.text.TextUtils;
import com.byazt.gqp.i;
import com.byazt.gqp.m;
import com.byazt.gqp.sl;
import com.byazt.gqp.t;
import com.byazt.gqp.yp;
import com.byazt.gqp.z;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 873, 20})
public class c implements com.byazt.gqp.tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f21997a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public yp f21998c;
    public uj tt;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicBoolean f21999n = new AtomicBoolean(false);
    public final String ve = com.byazt.na.uj.c(UUID.randomUUID().toString()).c();
    public sl uj = new sl();

    /* JADX INFO: renamed from: com.byazt.xn.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 873, 44})
    final class C0486c extends com.byazt.na.n {
        public final c uj;
        public final com.byazt.gqp.ve ve;

        public C0486c(com.byazt.gqp.ve veVar, c cVar) {
            super("net-async-call", new Object[0]);
            this.ve = veVar;
            this.uj = cVar;
        }

        public void c() {
            sl slVar;
            c cVar = this.uj;
            if (cVar == null || (slVar = cVar.uj) == null) {
                return;
            }
            slVar.uj();
        }

        @Override // com.byazt.na.n
        public void tt() {
            sl slVar;
            try {
                c cVar = this.uj;
                if (cVar != null && (slVar = cVar.uj) != null) {
                    slVar.c();
                }
                m mVarN = c.this.n();
                if (mVarN == null) {
                    this.ve.onFailure(c.this, new IOException("response is null"));
                } else {
                    this.ve.onResponse(c.this, mVarN);
                }
                try {
                    this.uj.tt.tt(this);
                } catch (Throwable th) {
                    com.byazt.nr.m.c(th);
                }
            } catch (Throwable th2) {
                try {
                    if (th2 instanceof IOException) {
                        this.ve.onFailure(c.this, th2);
                    } else {
                        this.ve.onFailure(c.this, new IOException(th2));
                    }
                } finally {
                    try {
                        this.uj.tt.tt(this);
                    } catch (Throwable th3) {
                        com.byazt.nr.m.c(th3);
                    }
                }
            }
        }
    }

    public c(yp ypVar, uj ujVar) {
        this.f21998c = ypVar;
        this.tt = ujVar;
    }

    private boolean sp() {
        if (this.f21998c.uj() == null) {
            return false;
        }
        return this.f21998c.uj().containsKey("Content-Type");
    }

    private boolean ve(z zVar) {
        yp ypVar;
        return (zVar == null || (ypVar = this.f21998c) == null || !"POST".equalsIgnoreCase(ypVar.ve()) || zVar.f14722a != z.c.STRING_TYPE || TextUtils.isEmpty(zVar.uj)) ? false : true;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.byazt.gqp.tt clone() {
        return new c(this.f21998c, this.tt);
    }

    @Override // com.byazt.gqp.tt
    public yp c() {
        return this.f21998c;
    }

    public m n() {
        List<i> list;
        if (this.f21999n.get()) {
            return null;
        }
        try {
            t tVar = this.f21998c.f14718c;
            if (tVar == null || (list = tVar.f14705c) == null || list.size() <= 0) {
                return c(this.f21998c);
            }
            ArrayList arrayList = new ArrayList(this.f21998c.f14718c.f14705c);
            arrayList.add(new i() { // from class: com.byazt.xn.c.1
                @Override // com.byazt.gqp.i
                public m c(i.c cVar) throws IOException {
                    return c.this.c(cVar.c());
                }
            });
            return ((i) arrayList.get(0)).c(new tt(arrayList, this.f21998c));
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.gqp.tt
    public m tt() throws IOException {
        synchronized (this) {
            if (this.f21997a) {
                throw new IllegalStateException("Already Executed");
            }
            this.f21997a = true;
        }
        try {
            this.tt.c(this);
            return n();
        } finally {
            this.tt.tt(this);
        }
    }

    @Override // com.byazt.gqp.tt
    public boolean uj() {
        return this.f21999n.get();
    }

    @Override // com.byazt.gqp.tt
    public void c(com.byazt.gqp.ve veVar) {
        try {
            synchronized (this) {
                if (this.f21997a) {
                    throw new IllegalStateException("Already Executed");
                }
                this.f21997a = true;
            }
            this.tt.c(new C0486c(veVar, this));
        } catch (Throwable th) {
            if (veVar != null) {
                veVar.onFailure(this, new IOException(th.getMessage()));
            }
        }
    }

    @Override // com.byazt.gqp.tt
    public void ve() {
        this.f21999n.set(true);
    }

    public m c(yp ypVar) throws IOException {
        try {
            sl slVar = this.uj;
            if (slVar != null) {
                slVar.tt();
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(ypVar.tt().c().toString()).openConnection();
            if (ypVar.uj() != null && ypVar.uj().size() > 0) {
                for (Map.Entry<String, List<String>> entry : ypVar.uj().entrySet()) {
                    Iterator<String> it2 = entry.getValue().iterator();
                    while (it2.hasNext()) {
                        httpURLConnection.addRequestProperty(entry.getKey(), it2.next());
                    }
                }
            }
            t tVar = ypVar.f14718c;
            if (tVar != null) {
                TimeUnit timeUnit = tVar.ve;
                if (timeUnit != null) {
                    httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(tVar.tt));
                }
                t tVar2 = ypVar.f14718c;
                TimeUnit timeUnit2 = tVar2.f14708n;
                if (timeUnit2 != null) {
                    httpURLConnection.setReadTimeout((int) timeUnit2.toMillis(tVar2.uj));
                }
            }
            if (ypVar.a() == null) {
                httpURLConnection.setRequestMethod("GET");
            } else {
                if (!sp() && ypVar.a().ve != null) {
                    httpURLConnection.addRequestProperty("Content-Type", ypVar.a().ve.toString());
                }
                httpURLConnection.setRequestMethod(ypVar.ve());
                if (c(ypVar.a())) {
                    c(httpURLConnection);
                }
                if ("POST".equalsIgnoreCase(ypVar.ve())) {
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    if (ve(ypVar.a())) {
                        outputStream.write(ypVar.a().uj.getBytes());
                    } else if (c(ypVar.a())) {
                        c(ypVar.a().f14724n, outputStream, ypVar.a().tt(), ypVar.a().c());
                    } else if (tt(ypVar.a())) {
                        outputStream.write(ypVar.a().f14724n);
                    }
                    outputStream.flush();
                    outputStream.close();
                }
            }
            httpURLConnection.connect();
            long jCurrentTimeMillis = System.currentTimeMillis();
            sl slVar2 = this.uj;
            if (slVar2 != null) {
                slVar2.ve();
                this.uj.c(jCurrentTimeMillis);
            }
            httpURLConnection.getResponseCode();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (this.f21999n.get()) {
                httpURLConnection.disconnect();
                return null;
            }
            a aVar = new a(httpURLConnection, ypVar);
            aVar.uj = jCurrentTimeMillis;
            aVar.ve = jCurrentTimeMillis2;
            sl slVar3 = this.uj;
            if (slVar3 != null) {
                slVar3.tt(jCurrentTimeMillis2);
            }
            aVar.f21996n = this.uj;
            return aVar;
        } catch (Exception e10) {
            throw new IOException(e10);
        }
    }

    private boolean tt(z zVar) {
        yp ypVar;
        byte[] bArr;
        return zVar != null && (ypVar = this.f21998c) != null && "POST".equalsIgnoreCase(ypVar.ve()) && zVar.f14722a == z.c.BYTE_ARRAY_TYPE && (bArr = zVar.f14724n) != null && bArr.length > 0;
    }

    private void c(HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return;
        }
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + this.ve);
    }

    private void c(byte[] bArr, OutputStream outputStream, String str, String str2) throws IOException {
        if (bArr == null || outputStream == null) {
            return;
        }
        PrintWriter printWriter = new PrintWriter((Writer) new OutputStreamWriter(outputStream, "UTF-8"), true);
        printWriter.append((CharSequence) ("--" + this.ve)).append((CharSequence) "\r\n");
        printWriter.append((CharSequence) ("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + x.a.f97579g)).append((CharSequence) "\r\n");
        printWriter.append((CharSequence) "Content-Type: multipart/form-data").append((CharSequence) "\r\n");
        StringBuilder sb2 = new StringBuilder("Content-Length: ");
        sb2.append(bArr.length);
        printWriter.append((CharSequence) sb2.toString()).append((CharSequence) "\r\n");
        printWriter.append((CharSequence) "\r\n");
        printWriter.flush();
        outputStream.write(bArr);
        printWriter.append((CharSequence) "\r\n");
        printWriter.append((CharSequence) ("--" + this.ve + "--")).append((CharSequence) "\r\n");
        printWriter.flush();
        printWriter.close();
    }

    private boolean c(z zVar) {
        yp ypVar;
        byte[] bArr;
        return zVar != null && (ypVar = this.f21998c) != null && "POST".equalsIgnoreCase(ypVar.ve()) && zVar.f14722a == z.c.FILE_TYPE && (bArr = zVar.f14724n) != null && bArr.length > 0;
    }
}
