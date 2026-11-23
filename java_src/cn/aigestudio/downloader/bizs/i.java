package cn.aigestudio.downloader.bizs;

import android.os.Process;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes7.dex */
class i implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f666e = "i";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f668c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private l f669d;

    public i(j dlThreadInfo, f dlInfo, l listener) {
        this.f667b = dlThreadInfo;
        this.f669d = listener;
        this.f668c = dlInfo;
    }

    private void a(HttpURLConnection conn) {
        for (e eVar : this.f668c.f636o) {
            conn.addRequestProperty(eVar.f620a, eVar.f621b);
        }
        conn.setRequestProperty("Range", "bytes=" + this.f667b.f672c + "-" + this.f667b.f673d);
    }

    public f b() {
        return this.f668c;
    }

    public j c() {
        return this.f667b;
    }

    public void d(f dlInfo) {
        this.f668c = dlInfo;
    }

    public void e(j dlThreadInfo) {
        this.f667b = dlThreadInfo;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0229 A[Catch: IOException -> 0x0225, TRY_LEAVE, TryCatch #11 {IOException -> 0x0225, blocks: (B:101:0x0221, B:105:0x0229), top: B:115:0x0221 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x0232  */
    /* JADX WARN: Code duplicated, block: B:130:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x01c5 A[Catch: IOException -> 0x01c1, TRY_LEAVE, TryCatch #13 {IOException -> 0x01c1, blocks: (B:63:0x01bd, B:67:0x01c5), top: B:117:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01eb A[Catch: IOException -> 0x01e7, TRY_LEAVE, TryCatch #9 {IOException -> 0x01e7, blocks: (B:76:0x01e3, B:80:0x01eb), top: B:113:0x01e3 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0211 A[Catch: IOException -> 0x020d, TRY_LEAVE, TryCatch #6 {IOException -> 0x020d, blocks: (B:89:0x0209, B:93:0x0211), top: B:111:0x0209 }] */
    @Override // java.lang.Runnable
    public void run() throws Throwable {
        HttpURLConnection httpURLConnection;
        RandomAccessFile randomAccessFile;
        Exception e10;
        RandomAccessFile randomAccessFile2;
        IOException e11;
        FileNotFoundException e12;
        int i10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method run() called.url=");
        sb2.append(this.f667b.f671b);
        Process.setThreadPriority(10);
        InputStream inputStream = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.f668c.f627f).openConnection();
                try {
                    httpURLConnection.setConnectTimeout(10000);
                    httpURLConnection.setReadTimeout(10000);
                    a(httpURLConnection);
                    if (!this.f668c.f639r.exists() || !this.f668c.f639r.canWrite()) {
                        this.f667b.f674e = true;
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("dlThreadInfo.start=");
                    sb3.append(this.f667b.f672c);
                    sb3.append(";dlInfo.totalBytes.get()=");
                    sb3.append(this.f668c.f622a.get());
                    if (this.f667b.f672c == this.f668c.f622a.get()) {
                        this.f669d.a(this.f667b);
                        httpURLConnection.disconnect();
                        return;
                    }
                    randomAccessFile2 = new RandomAccessFile(this.f668c.f639r, "rwd");
                    try {
                        randomAccessFile2.seek(this.f667b.f672c);
                        InputStream inputStream2 = httpURLConnection.getInputStream();
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("open connection.url=");
                        sb4.append(this.f667b.f671b);
                        sb4.append(";start=");
                        sb4.append(this.f667b.f672c);
                        byte[] bArr = new byte[8192];
                        while (true) {
                            f fVar = this.f668c;
                            if (fVar.f641t || fVar.f640s || this.f667b.f674e || this.f667b.f676g || (i10 = inputStream2.read(bArr)) == -1) {
                                break;
                            }
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("Thread running.id=");
                            sb5.append(Thread.currentThread().getId());
                            sb5.append(";threadCount=");
                            sb5.append(this.f668c.f637p.size());
                            randomAccessFile2.write(bArr, 0, i10);
                            j jVar = this.f667b;
                            jVar.f672c += (long) i10;
                            this.f669d.c(jVar.f671b, i10);
                        }
                        if (this.f667b.f674e) {
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("Thread ");
                            sb6.append(this.f667b.f670a);
                            sb6.append(" will be stopped.");
                            this.f667b.f675f = false;
                            this.f669d.d(this.f667b);
                        } else if (this.f667b.f676g) {
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append("Thread ");
                            sb7.append(this.f667b.f670a);
                            sb7.append(" will be stopped.");
                            this.f667b.f675f = false;
                            this.f669d.b(this.f667b);
                        } else {
                            StringBuilder sb8 = new StringBuilder();
                            sb8.append("Thread ");
                            sb8.append(this.f667b.f670a);
                            sb8.append(" will be finished.");
                            this.f669d.a(this.f667b);
                        }
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        randomAccessFile2.close();
                    } catch (FileNotFoundException e14) {
                        e12 = e14;
                        this.f667b.f675f = true;
                        this.f669d.d(this.f667b);
                        e12.printStackTrace();
                        if (0 != 0) {
                            try {
                                inputStream.close();
                                if (randomAccessFile2 != null) {
                                    randomAccessFile2.close();
                                }
                            } catch (IOException e15) {
                                e15.printStackTrace();
                                if (httpURLConnection == null) {
                                    return;
                                }
                                httpURLConnection.disconnect();
                            }
                        } else if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        if (httpURLConnection == null) {
                            return;
                        }
                    } catch (IOException e16) {
                        e11 = e16;
                        this.f667b.f675f = true;
                        this.f669d.d(this.f667b);
                        e11.printStackTrace();
                        if (0 != 0) {
                            try {
                                inputStream.close();
                                if (randomAccessFile2 != null) {
                                    randomAccessFile2.close();
                                }
                            } catch (IOException e17) {
                                e17.printStackTrace();
                                if (httpURLConnection == null) {
                                    return;
                                }
                                httpURLConnection.disconnect();
                            }
                        } else if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        if (httpURLConnection == null) {
                            return;
                        }
                    } catch (Exception e18) {
                        e10 = e18;
                        this.f667b.f675f = true;
                        this.f669d.d(this.f667b);
                        e10.printStackTrace();
                        if (0 != 0) {
                            try {
                                inputStream.close();
                                if (randomAccessFile2 != null) {
                                    randomAccessFile2.close();
                                }
                            } catch (IOException e19) {
                                e19.printStackTrace();
                                if (httpURLConnection == null) {
                                    return;
                                }
                                httpURLConnection.disconnect();
                            }
                        } else if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        if (httpURLConnection == null) {
                            return;
                        }
                    }
                    httpURLConnection.disconnect();
                } catch (FileNotFoundException e20) {
                    e12 = e20;
                    randomAccessFile2 = null;
                } catch (IOException e21) {
                    e11 = e21;
                    randomAccessFile2 = null;
                } catch (Exception e22) {
                    e10 = e22;
                    randomAccessFile2 = null;
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = null;
                    if (0 != 0) {
                        try {
                            inputStream.close();
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                        } catch (IOException e23) {
                            e23.printStackTrace();
                            if (httpURLConnection != null) {
                                throw th;
                            }
                            httpURLConnection.disconnect();
                            throw th;
                        }
                    } else if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    if (httpURLConnection != null) {
                        throw th;
                    }
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e24) {
            httpURLConnection = null;
            e12 = e24;
            randomAccessFile2 = null;
        } catch (IOException e25) {
            httpURLConnection = null;
            e11 = e25;
            randomAccessFile2 = null;
        } catch (Exception e26) {
            httpURLConnection = null;
            e10 = e26;
            randomAccessFile2 = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
            randomAccessFile = null;
        }
    }
}
