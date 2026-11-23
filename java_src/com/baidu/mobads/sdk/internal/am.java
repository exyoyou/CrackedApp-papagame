package com.baidu.mobads.sdk.internal;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Observable;

/* JADX INFO: loaded from: classes6.dex */
public class am extends Observable implements x, Runnable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected static final int f7412i = 10240;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected static final int f7413j = 10240;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f7414k = ".tmp";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f7415m = "FileDownloader";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f7416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected URL f7417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f7418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f7419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f7420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected x.a f7421f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f7422g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f7423h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected byte[] f7424l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f7425n;

    public am(Context context, URL url, String str, String str2, boolean z10) {
        this.f7416a = context;
        this.f7417b = url;
        this.f7418c = str;
        this.f7425n = z10;
        if (str2 == null || str2.trim().length() <= 0) {
            String file = url.getFile();
            this.f7419d = file.substring(file.lastIndexOf(47) + 1);
        } else {
            this.f7419d = str2;
        }
        this.f7420e = -1;
        this.f7421f = x.a.DOWNLOADING;
        this.f7422g = 0;
        this.f7423h = 0;
    }

    private void s() {
        a(x.a.ERROR);
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public void a(boolean z10) {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public void b() {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public void c() {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public void d() {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public String e() {
        return this.f7417b.toString();
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public String f() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public String g() {
        return this.f7418c + this.f7419d;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public String h() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public String i() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public int j() {
        return this.f7420e;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public float k() {
        return Math.abs((this.f7422g / this.f7420e) * 100.0f);
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public x.a l() {
        return this.f7421f;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public void m() {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public boolean n() {
        return false;
    }

    public byte[] o() {
        return this.f7424l;
    }

    protected void p() {
        be.a().a(this);
    }

    protected void q() {
        setChanged();
        notifyObservers();
    }

    protected void r() {
        bt.a(this.f7418c + this.f7419d + ".tmp", this.f7418c + this.f7419d);
    }

    /* JADX WARN: Code duplicated, block: B:119:0x01ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x01d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:0x01be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() throws Throwable {
        BufferedInputStream bufferedInputStream;
        HttpURLConnection httpURLConnection;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        Exception e10;
        x.a aVar;
        int i10;
        BufferedOutputStream bufferedOutputStream = null;
        bufferedOutputStream = null;
        bufferedOutputStream = null;
        bufferedOutputStream = null;
        bufferedOutputStream = null;
        bufferedOutputStream = null;
        try {
            if (this.f7417b != null && !cs.a().f(this.f7417b.toString())) {
                cs.a().a((HttpURLConnection) null);
                return;
            }
            HttpURLConnection httpURLConnectionA = cs.a().a(this.f7417b);
            try {
                httpURLConnectionA.setConnectTimeout(10000);
                httpURLConnectionA.setInstanceFollowRedirects(true);
                httpURLConnectionA.connect();
                int responseCode = httpURLConnectionA.getResponseCode();
                if (responseCode == 302 || responseCode == 301) {
                    httpURLConnectionA.setInstanceFollowRedirects(false);
                    httpURLConnectionA = a(httpURLConnectionA);
                    responseCode = httpURLConnectionA.getResponseCode();
                }
                if (responseCode / 100 != 2) {
                    s();
                }
                int contentLength = httpURLConnectionA.getContentLength();
                if (contentLength > 0) {
                    this.f7420e = contentLength;
                }
                File file = new File(this.f7418c);
                if (!file.exists()) {
                    file.mkdirs();
                }
                bufferedInputStream = new BufferedInputStream(httpURLConnectionA.getInputStream());
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(g() + ".tmp"));
                    try {
                        byte[] bArr = new byte[com.sigmob.sdk.archives.tar.d.f78732b];
                        ByteArrayOutputStream byteArrayOutputStream2 = this.f7425n ? new ByteArrayOutputStream() : null;
                        int i11 = 0;
                        while (true) {
                            x.a aVar2 = this.f7421f;
                            aVar = x.a.DOWNLOADING;
                            if (aVar2 != aVar || (i10 = bufferedInputStream.read(bArr, 0, com.sigmob.sdk.archives.tar.d.f78732b)) == -1) {
                                break;
                            }
                            bufferedOutputStream2.write(bArr, 0, i10);
                            if (byteArrayOutputStream2 != null) {
                                byteArrayOutputStream2.write(bArr, 0, i10);
                            }
                            i11 += i10;
                            a(i10, i11 / this.f7420e);
                        }
                        bufferedOutputStream2.flush();
                        if (byteArrayOutputStream2 != null) {
                            byteArrayOutputStream2.flush();
                        }
                        if (this.f7421f == aVar) {
                            r();
                            a(x.a.COMPLETED);
                        } else {
                            x.a aVar3 = x.a.ERROR;
                        }
                        try {
                            bufferedOutputStream2.close();
                        } catch (Exception e11) {
                            bv.a().c(f7415m, e11.getMessage());
                        }
                        if (byteArrayOutputStream2 != null) {
                            try {
                                byteArrayOutputStream2.close();
                            } catch (Exception e12) {
                                bv.a().c(f7415m, e12.getMessage());
                            }
                        }
                        try {
                            bufferedInputStream.close();
                        } catch (Exception e13) {
                            bv.a().c(f7415m, e13.getMessage());
                        }
                        cs.a().a(httpURLConnectionA);
                        return;
                    } catch (Exception e14) {
                        e10 = e14;
                        HttpURLConnection httpURLConnection2 = httpURLConnectionA;
                        byteArrayOutputStream = null;
                        bufferedOutputStream = bufferedOutputStream2;
                        httpURLConnection = httpURLConnection2;
                    } catch (Throwable th2) {
                        th = th2;
                        HttpURLConnection httpURLConnection3 = httpURLConnectionA;
                        byteArrayOutputStream = null;
                        bufferedOutputStream = bufferedOutputStream2;
                        httpURLConnection = httpURLConnection3;
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (Exception e15) {
                                bv.a().c(f7415m, e15.getMessage());
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception e16) {
                                bv.a().c(f7415m, e16.getMessage());
                            }
                        }
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (Exception e17) {
                                bv.a().c(f7415m, e17.getMessage());
                            }
                        }
                        cs.a().a(httpURLConnection);
                        throw th;
                    }
                } catch (Exception e18) {
                    e10 = e18;
                    httpURLConnection = httpURLConnectionA;
                    byteArrayOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    httpURLConnection = httpURLConnectionA;
                    byteArrayOutputStream = null;
                }
            } catch (Exception e19) {
                httpURLConnection = httpURLConnectionA;
                e10 = e19;
                byteArrayOutputStream = null;
                bufferedInputStream = null;
            } catch (Throwable th4) {
                httpURLConnection = httpURLConnectionA;
                th = th4;
                byteArrayOutputStream = null;
                bufferedInputStream = null;
            }
        } catch (Exception e20) {
            bufferedInputStream = null;
            httpURLConnection = null;
            e10 = e20;
            byteArrayOutputStream = null;
        } catch (Throwable th5) {
            bufferedInputStream = null;
            httpURLConnection = null;
            th = th5;
            byteArrayOutputStream = null;
        }
        try {
            bv.a().c(f7415m, e10.getMessage());
            s();
            if (bufferedOutputStream != null) {
                try {
                    bufferedOutputStream.close();
                } catch (Exception e21) {
                    bv.a().c(f7415m, e21.getMessage());
                }
            }
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (Exception e22) {
                    bv.a().c(f7415m, e22.getMessage());
                }
            }
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (Exception e23) {
                    bv.a().c(f7415m, e23.getMessage());
                }
            }
            cs.a().a(httpURLConnection);
        } catch (Throwable th6) {
            th = th6;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            cs.a().a(httpURLConnection);
            throw th;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public void a() {
        a(x.a.DOWNLOADING);
        p();
    }

    protected void a(x.a aVar) {
        this.f7421f = aVar;
        q();
    }

    protected void a(int i10, float f10) {
        this.f7422g += i10;
        q();
    }

    private HttpURLConnection a(HttpURLConnection httpURLConnection) {
        while (true) {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 302 && responseCode != 301) {
                    return httpURLConnection;
                }
                URL url = new URL(httpURLConnection.getHeaderField("Location"));
                this.f7417b = url;
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(10000);
                    httpURLConnection2.setInstanceFollowRedirects(false);
                    httpURLConnection2.setRequestProperty("Range", "bytes=0-");
                    httpURLConnection = httpURLConnection2;
                } catch (Exception unused) {
                    return httpURLConnection2;
                }
            } catch (Exception unused2) {
                return httpURLConnection;
            }
        }
    }
}
