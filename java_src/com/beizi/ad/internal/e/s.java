package com.beizi.ad.internal.e;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.collection.LruCache;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public class s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static s f9056d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f9057a = Executors.newFixedThreadPool(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LruCache<String, String> f9058b = new LruCache<>(1048576);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f9059c = new Handler();

    public interface a {
        void a();

        void a(String str);
    }

    private boolean c() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static s a() {
        return b();
    }

    private static s b() {
        if (f9056d == null) {
            synchronized (s.class) {
                if (f9056d == null) {
                    f9056d = new s();
                }
            }
        }
        return f9056d;
    }

    public void a(final Context context, final String str, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String str2 = this.f9058b.get(str);
        if (!TextUtils.isEmpty(str2)) {
            aVar.a(str2);
            return;
        }
        File file = new File(com.beizi.ad.lance.a.i.d(context), f.a(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
        String absolutePath = (!file.exists() || file.length() <= 0) ? null : file.getAbsolutePath();
        if (!TextUtils.isEmpty(absolutePath)) {
            this.f9058b.put(str, absolutePath);
            aVar.a(absolutePath);
        } else {
            this.f9057a.submit(new Runnable() { // from class: com.beizi.ad.internal.e.s.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        InputStream inputStream = ((HttpURLConnection) new URL(str).openConnection()).getInputStream();
                        String str3 = str;
                        File file2 = new File(com.beizi.ad.lance.a.i.d(context), f.a(str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i10 = bufferedInputStream.read(bArr);
                            if (i10 == -1) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, i10);
                            }
                        }
                        final String absolutePath2 = file2.getAbsolutePath();
                        s.this.f9059c.post(new Runnable() { // from class: com.beizi.ad.internal.e.s.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                aVar.a(absolutePath2);
                            }
                        });
                        s.this.f9058b.put(str, absolutePath2);
                        fileOutputStream.close();
                        inputStream.close();
                        bufferedInputStream.close();
                    } catch (Exception unused) {
                        s.this.f9059c.post(new Runnable() { // from class: com.beizi.ad.internal.e.s.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                aVar.a();
                            }
                        });
                    }
                    com.beizi.ad.lance.a.i.e(context);
                }
            });
        }
    }

    public void a(final Context context, final String str, final boolean z10, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final String str2 = this.f9058b.get(str);
        if (!TextUtils.isEmpty(str2)) {
            if (z10) {
                if (c()) {
                    aVar.a(str2);
                    return;
                }
                Handler handler = this.f9059c;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.beizi.ad.internal.e.s.2
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(str2);
                        }
                    });
                    return;
                }
                return;
            }
            aVar.a(str2);
            return;
        }
        File file = new File(com.beizi.ad.lance.a.i.d(context), f.a(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
        final String absolutePath = (!file.exists() || file.length() <= 0) ? null : file.getAbsolutePath();
        if (!TextUtils.isEmpty(absolutePath)) {
            this.f9058b.put(str, absolutePath);
            if (z10) {
                if (c()) {
                    aVar.a(absolutePath);
                    return;
                }
                Handler handler2 = this.f9059c;
                if (handler2 != null) {
                    handler2.post(new Runnable() { // from class: com.beizi.ad.internal.e.s.3
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(absolutePath);
                        }
                    });
                    return;
                }
                return;
            }
            aVar.a(absolutePath);
            return;
        }
        this.f9057a.submit(new Runnable() { // from class: com.beizi.ad.internal.e.s.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    InputStream inputStream = ((HttpURLConnection) new URL(str).openConnection()).getInputStream();
                    String str3 = str;
                    String strSubstring = str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                    File file2 = new File(com.beizi.ad.lance.a.i.d(context), f.a(strSubstring) + "_" + Thread.currentThread().getId() + "_" + System.currentTimeMillis());
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = bufferedInputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i10);
                        }
                    }
                    File file3 = new File(com.beizi.ad.lance.a.i.d(context), f.a(strSubstring));
                    if (file3.exists()) {
                        file2.delete();
                    } else {
                        file2.renameTo(file3);
                    }
                    final String absolutePath2 = file3.getAbsolutePath();
                    if (!z10) {
                        aVar.a(absolutePath2);
                    } else if (s.this.f9059c != null) {
                        s.this.f9059c.post(new Runnable() { // from class: com.beizi.ad.internal.e.s.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                aVar.a(absolutePath2);
                            }
                        });
                    }
                    s.this.f9058b.put(str, absolutePath2);
                    fileOutputStream.close();
                    inputStream.close();
                    bufferedInputStream.close();
                } catch (Exception unused) {
                    aVar.a();
                }
                com.beizi.ad.lance.a.i.e(context);
            }
        });
    }

    public void a(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (!TextUtils.isEmpty(this.f9058b.get(str))) {
                this.f9058b.remove(str);
            }
            File file = new File(com.beizi.ad.lance.a.i.d(context), f.a(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
            if (!file.exists() || file.length() <= 0) {
                return;
            }
            file.delete();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
