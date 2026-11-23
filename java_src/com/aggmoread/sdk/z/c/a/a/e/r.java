package com.aggmoread.sdk.z.c.a.a.e;

import com.kuaishou.weapon.p0.bg;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Map<String, WeakReference<r>> f5272e = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f5274b = new byte[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5276d;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (r.this.f5273a) {
                try {
                    File fileE = r.this.e();
                    if (!fileE.exists()) {
                        return;
                    }
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    FileInputStream fileInputStream = new FileInputStream(fileE);
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = fileInputStream.read(bArr, 0, 1024);
                        if (i10 <= 0) {
                            break;
                        } else {
                            byteArrayOutputStream.write(bArr, 0, i10);
                        }
                    }
                    r.this.f5274b = byteArrayOutputStream.toByteArray();
                    r rVar = r.this;
                    rVar.f5275c = rVar.f5274b.length / 8;
                    fileInputStream.close();
                } catch (FileNotFoundException e10) {
                    e = e10;
                    e.printStackTrace();
                } catch (IOException e11) {
                    e = e11;
                    e.printStackTrace();
                }
                r.this.d();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (r.this.f5273a) {
                try {
                    File fileE = r.this.e();
                    if (!fileE.exists() && !fileE.createNewFile()) {
                    } else {
                        new FileOutputStream(r.this.e()).write(r.this.f5274b);
                    }
                } catch (FileNotFoundException e10) {
                    e = e10;
                    e.printStackTrace();
                } catch (IOException e11) {
                    e = e11;
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final c f5279d = new c("REQUEST_DAILY", 0, 86400000, 0);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final c f5280e = new c("REQUEST_HOURLY", 1, bg.f74510s, 1);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final c f5281f = new c("EXPOSURE_DAILY", 2, 86400000, 2);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final c f5282g = new c("EXPOSURE_HOURLY", 3, bg.f74510s, 3);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f5283h = new c("CLICK_DAILY", 4, 86400000, 4);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final c f5284i = new c("CLICK_HOURLY", 5, bg.f74510s, 5);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f5285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f5286c;

        private c(String str, int i10, long j10, int i11) {
            super(str, i10);
            this.f5285b = j10;
            this.f5286c = i11;
        }
    }

    protected r(String str, long j10) {
        new ArrayList();
        this.f5275c = 0;
        this.f5273a = str;
        this.f5276d = j10;
        b();
    }

    public void b() {
        q.b(new a());
    }

    public void c() {
        q.b(new b());
    }

    public int d() {
        synchronized (this) {
            if (this.f5274b.length == 0) {
                return 0;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f5276d;
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(this.f5274b));
            int i10 = 0;
            while (dataInputStream.readLong() < jCurrentTimeMillis) {
                try {
                    this.f5275c--;
                    i10++;
                } catch (IOException unused) {
                }
            }
            if (i10 > 0) {
                int i11 = i10 * 8;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = this.f5274b;
                byteArrayOutputStream.write(bArr, i11, bArr.length - i11);
                this.f5274b = byteArrayOutputStream.toByteArray();
            }
            if (i10 > 0) {
                c();
            }
            if (this.f5275c < 0) {
                this.f5275c = 0;
            }
            return this.f5275c;
        }
    }

    protected File e() {
        return new File(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getApplicationInfo().dataDir, com.aggmoread.sdk.z.c.a.a.e.c.r() + this.f5273a);
    }

    public String toString() {
        return String.format("{tsname= %s,tsc= %s,span= %s}", this.f5273a, Integer.valueOf(this.f5275c), Long.valueOf(this.f5276d));
    }

    public static r a(String str, c cVar) {
        String str2 = String.format("%s_%d", str, Integer.valueOf(cVar.f5286c));
        WeakReference<r> weakReference = f5272e.get(str2);
        r rVar = weakReference != null ? weakReference.get() : null;
        if (rVar == null) {
            synchronized (r.class) {
                WeakReference<r> weakReference2 = f5272e.get(str2);
                if (weakReference2 != null) {
                    rVar = weakReference2.get();
                }
                if (rVar == null) {
                    rVar = new r(str2, cVar.f5285b);
                    f5272e.put(str2, new WeakReference<>(rVar));
                }
            }
        }
        return rVar;
    }

    public void a() {
        synchronized (this) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write(this.f5274b);
                new DataOutputStream(byteArrayOutputStream).writeLong(System.currentTimeMillis());
                this.f5274b = byteArrayOutputStream.toByteArray();
                this.f5275c++;
            } catch (IOException e10) {
                e10.printStackTrace();
                return;
            }
        }
        c();
    }
}
