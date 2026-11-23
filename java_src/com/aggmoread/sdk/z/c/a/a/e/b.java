package com.aggmoread.sdk.z.c.a.a.e;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Map<String, WeakReference<b>> f5201e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static h f5202f = new h("cc_default");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f5205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5206d;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ byte[] f5207b;

        a(byte[] bArr) {
            this.f5207b = bArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (b.this) {
                File file = new File(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getApplicationInfo().dataDir, String.format("%s_%s_m", com.aggmoread.sdk.z.c.a.a.e.c.r(), b.this.f5203a));
                if (this.f5207b == null) {
                    if (file.exists()) {
                        file.delete();
                    }
                    return;
                }
                try {
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(this.f5207b);
                    fileOutputStream.close();
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

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.e.b$b, reason: collision with other inner class name */
    class RunnableC0188b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f5209b;

        RunnableC0188b(c cVar) {
            this.f5209b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (b.this) {
                File file = new File(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getApplicationInfo().dataDir, String.format("%s_%s_m", com.aggmoread.sdk.z.c.a.a.e.c.r(), b.this.f5203a));
                if (file.exists()) {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        FileInputStream fileInputStream = new FileInputStream(file);
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i10 = fileInputStream.read(bArr, 0, 1024);
                            if (i10 <= 0) {
                                break;
                            } else {
                                byteArrayOutputStream.write(bArr, 0, i10);
                            }
                        }
                        b.this.f5205c = byteArrayOutputStream.toByteArray();
                        b.this.f5204b = b.f5202f.a(b.this.f5203a, 0L);
                        b.this.f5206d = b.f5202f.a(b.this.f5203a + "_v", (String) null);
                        fileInputStream.close();
                    } catch (FileNotFoundException e10) {
                        e = e10;
                        e.printStackTrace();
                    } catch (IOException e11) {
                        e = e11;
                        e.printStackTrace();
                    }
                }
            }
            this.f5209b.a(b.this);
        }
    }

    public interface c {
        void a(b bVar);
    }

    protected b(String str) {
        this.f5203a = str;
    }

    public byte[] b() {
        return this.f5205c;
    }

    public long c() {
        return this.f5204b;
    }

    public String d() {
        return this.f5206d;
    }

    public static b a(String str) {
        WeakReference<b> weakReference = f5201e.get(str);
        b bVar = weakReference != null ? weakReference.get() : null;
        if (bVar == null) {
            synchronized (b.class) {
                WeakReference<b> weakReference2 = f5201e.get(str);
                if (weakReference2 != null) {
                    bVar = weakReference2.get();
                }
                if (bVar == null) {
                    bVar = new b(str);
                    f5201e.put(str, new WeakReference<>(bVar));
                }
            }
        }
        return bVar;
    }

    public void a(c cVar) {
        q.b(new RunnableC0188b(cVar));
    }

    public void a(byte[] bArr) {
        this.f5205c = bArr;
        this.f5204b = System.currentTimeMillis();
        if (bArr == null) {
            this.f5204b = 0L;
        }
        f5202f.b(this.f5203a, this.f5204b);
        f5202f.b(this.f5203a + "_v", "20102911");
        q.b(new a(bArr));
    }
}
