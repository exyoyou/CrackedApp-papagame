package com.beizi.ad.internal.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.collection.LruCache;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f8979a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static h f8980e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ExecutorService f8981b = Executors.newFixedThreadPool(4);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LruCache<String, Bitmap> f8982c = new LruCache<>(4194304);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f8983d = new Handler(Looper.getMainLooper());

    public interface a {
        void a();

        void a(Bitmap bitmap);
    }

    private static h b() {
        if (f8980e == null) {
            synchronized (h.class) {
                if (f8980e == null) {
                    f8980e = new h();
                }
            }
        }
        return f8980e;
    }

    private boolean c() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static h a(Context context) {
        if (com.beizi.ad.internal.c.a().f8769j != null) {
            f8979a = com.beizi.ad.internal.c.a().f8769j;
        } else if (context != null) {
            f8979a = context.getApplicationContext();
        } else {
            f8979a = com.beizi.fusion.c.b.a().e();
        }
        return b();
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f9006a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f9007b;

        public b(String str) {
            this.f9006a = str;
        }

        private void b() {
            h.this.f8983d.post(new Runnable() { // from class: com.beizi.ad.internal.e.h.b.2
                @Override // java.lang.Runnable
                public void run() {
                }
            });
        }

        public void a(ImageView imageView) {
            this.f9007b = imageView;
            if (TextUtils.isEmpty(this.f9006a)) {
                return;
            }
            Bitmap bitmap = (Bitmap) h.this.f8982c.get(this.f9006a);
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
                return;
            }
            Bitmap bitmapA = a();
            if (bitmapA == null) {
                h.this.f8981b.submit(this);
            } else {
                imageView.setImageBitmap(bitmapA);
                h.this.f8982c.put(this.f9006a, bitmapA);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f9006a).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(2000);
                if (httpURLConnection.getResponseCode() == 200) {
                    final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    h.this.f8983d.post(new Runnable() { // from class: com.beizi.ad.internal.e.h.b.1
                        @Override // java.lang.Runnable
                        public void run() {
                            b.this.f9007b.setImageBitmap(bitmapDecodeStream);
                        }
                    });
                    h.this.f8982c.put(this.f9006a, bitmapDecodeStream);
                    String str = this.f9006a;
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(com.beizi.ad.lance.a.i.c(h.f8979a), f.a(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)))));
                } else {
                    b();
                }
            } catch (FileNotFoundException unused) {
            } catch (Exception e10) {
                e10.printStackTrace();
                b();
            }
        }

        private Bitmap a() {
            String str = this.f9006a;
            File file = new File(com.beizi.ad.lance.a.i.c(h.f8979a), f.a(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
            if (!file.exists() || file.length() <= 0) {
                return null;
            }
            return BitmapFactory.decodeFile(file.getAbsolutePath());
        }
    }

    public b a(String str) {
        return new b(str);
    }

    public void b(final String str, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = this.f8982c.get(str);
        if (bitmap != null) {
            aVar.a(bitmap);
            return;
        }
        File file = new File(com.beizi.ad.lance.a.i.c(f8979a), f.a(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
        Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f8982c.put(str, bitmapDecodeFile);
            aVar.a(bitmapDecodeFile);
        } else {
            this.f8981b.submit(new Runnable() { // from class: com.beizi.ad.internal.e.h.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(2000);
                        if (httpURLConnection.getResponseCode() == 200) {
                            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                            httpURLConnection.disconnect();
                            h.this.f8982c.put(str, bitmapDecodeStream);
                            String str2 = str;
                            bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(com.beizi.ad.lance.a.i.c(h.f8979a), f.a(str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)))));
                        }
                    } catch (Exception unused) {
                        h.this.f8983d.post(new Runnable() { // from class: com.beizi.ad.internal.e.h.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                aVar.a();
                            }
                        });
                    }
                }
            });
        }
    }

    public void a(final String str, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = this.f8982c.get(str);
        if (bitmap != null) {
            aVar.a(bitmap);
            return;
        }
        File file = new File(com.beizi.ad.lance.a.i.d(f8979a), f.a(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
        Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f8982c.put(str, bitmapDecodeFile);
            aVar.a(bitmapDecodeFile);
        } else {
            this.f8981b.submit(new Runnable() { // from class: com.beizi.ad.internal.e.h.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(2000);
                        if (httpURLConnection.getResponseCode() == 200) {
                            final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                            httpURLConnection.disconnect();
                            h.this.f8983d.post(new Runnable() { // from class: com.beizi.ad.internal.e.h.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    aVar.a(bitmapDecodeStream);
                                }
                            });
                            h.this.f8982c.put(str, bitmapDecodeStream);
                            String str2 = str;
                            bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(com.beizi.ad.lance.a.i.d(h.f8979a), f.a(str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)))));
                        }
                    } catch (Exception unused) {
                        h.this.f8983d.post(new Runnable() { // from class: com.beizi.ad.internal.e.h.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                aVar.a();
                            }
                        });
                    }
                    com.beizi.ad.lance.a.i.e(h.f8979a);
                }
            });
        }
    }

    public void a(final String str, final boolean z10, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final Bitmap bitmap = this.f8982c.get(str);
        if (bitmap != null) {
            if (z10) {
                if (c()) {
                    aVar.a(bitmap);
                    return;
                }
                Handler handler = this.f8983d;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.beizi.ad.internal.e.h.2
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(bitmap);
                        }
                    });
                    return;
                }
                return;
            }
            aVar.a(bitmap);
            return;
        }
        File file = new File(com.beizi.ad.lance.a.i.d(f8979a), f.a(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
        final Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f8982c.put(str, bitmapDecodeFile);
            if (z10) {
                if (c()) {
                    aVar.a(bitmapDecodeFile);
                    return;
                }
                Handler handler2 = this.f8983d;
                if (handler2 != null) {
                    handler2.post(new Runnable() { // from class: com.beizi.ad.internal.e.h.3
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(bitmapDecodeFile);
                        }
                    });
                    return;
                }
                return;
            }
            aVar.a(bitmapDecodeFile);
            return;
        }
        this.f8981b.submit(new Runnable() { // from class: com.beizi.ad.internal.e.h.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setConnectTimeout(2000);
                    if (httpURLConnection.getResponseCode() == 200) {
                        final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                        httpURLConnection.disconnect();
                        if (!z10) {
                            aVar.a(bitmapDecodeStream);
                        } else if (h.this.f8983d != null) {
                            h.this.f8983d.post(new Runnable() { // from class: com.beizi.ad.internal.e.h.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    aVar.a(bitmapDecodeStream);
                                }
                            });
                        }
                        h.this.f8982c.put(str, bitmapDecodeStream);
                        String str2 = str;
                        bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(com.beizi.ad.lance.a.i.d(h.f8979a), f.a(str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)))));
                    }
                } catch (Exception unused) {
                    aVar.a();
                }
                com.beizi.ad.lance.a.i.e(h.f8979a);
            }
        });
    }
}
