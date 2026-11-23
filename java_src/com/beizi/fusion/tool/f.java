package com.beizi.fusion.tool;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.collection.LruCache;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f10590a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static f f10591e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ExecutorService f10592b = Executors.newFixedThreadPool(4);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LruCache<String, Bitmap> f10593c = new LruCache<>(4194304);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f10594d = new Handler();

    public interface a {
        void a();

        void a(Bitmap bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static f a(Context context) {
        if (context == null) {
            au.b("Illegal Argument: context is null");
        } else {
            f10590a = context;
        }
        return b();
    }

    private static f b() {
        if (f10591e == null) {
            synchronized (f.class) {
                if (f10591e == null) {
                    f10591e = new f();
                }
            }
        }
        return f10591e;
    }

    public b a(String str) {
        return new b(str);
    }

    public void a(final String str, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = this.f10593c.get(str);
        if (bitmap != null) {
            aVar.a(bitmap);
            return;
        }
        File file = new File(g.b(f10590a), c(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
        Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f10593c.put(str, bitmapDecodeFile);
            aVar.a(bitmapDecodeFile);
        } else {
            this.f10592b.submit(new Runnable() { // from class: com.beizi.fusion.tool.f.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(5000);
                        httpURLConnection.setReadTimeout(5000);
                        if (httpURLConnection.getResponseCode() == 200) {
                            final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                            httpURLConnection.disconnect();
                            f.this.f10594d.post(new Runnable() { // from class: com.beizi.fusion.tool.f.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    aVar.a(bitmapDecodeStream);
                                }
                            });
                            f.this.f10593c.put(str, bitmapDecodeStream);
                            String str2 = str;
                            bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(g.b(f.f10590a), f.c(str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)))));
                        }
                    } catch (Exception unused) {
                        f.this.f10594d.post(new Runnable() { // from class: com.beizi.fusion.tool.f.1.2
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

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f10605a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f10606b;

        public b(String str) {
            this.f10605a = str;
        }

        private void b() {
            f.this.f10594d.post(new Runnable() { // from class: com.beizi.fusion.tool.f.b.2
                @Override // java.lang.Runnable
                public void run() {
                }
            });
        }

        public void a(ImageView imageView) {
            this.f10606b = imageView;
            if (TextUtils.isEmpty(this.f10605a)) {
                return;
            }
            Bitmap bitmap = (Bitmap) f.this.f10593c.get(this.f10605a);
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
                return;
            }
            Bitmap bitmapA = a();
            if (bitmapA == null) {
                f.this.f10592b.submit(this);
            } else {
                imageView.setImageBitmap(bitmapA);
                f.this.f10593c.put(this.f10605a, bitmapA);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f10605a).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                if (httpURLConnection.getResponseCode() == 200) {
                    final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    f.this.f10594d.post(new Runnable() { // from class: com.beizi.fusion.tool.f.b.1
                        @Override // java.lang.Runnable
                        public void run() {
                            b.this.f10606b.setImageBitmap(bitmapDecodeStream);
                        }
                    });
                    f.this.f10593c.put(this.f10605a, bitmapDecodeStream);
                    String str = this.f10605a;
                    File file = new File(g.b(f.f10590a), f.c(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
                    ac.a("BeiZis", "BeiZiImageUtils run file == " + file);
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(file));
                } else {
                    b();
                }
            } catch (FileNotFoundException unused) {
            } catch (Exception unused2) {
                b();
            }
        }

        private Bitmap a() {
            String str = this.f10605a;
            File file = new File(g.b(f.f10590a), f.c(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
            ac.a("BeiZis", "BeiZiImageUtils getBitmapFile file == " + file);
            if (!file.exists() || file.length() <= 0) {
                return null;
            }
            return BitmapFactory.decodeFile(file.getAbsolutePath());
        }
    }

    public void b(final String str, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = this.f10593c.get(str);
        if (bitmap != null) {
            aVar.a(bitmap);
            return;
        }
        File file = new File(g.b(f10590a), c(str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)));
        Bitmap bitmapDecodeFile = (!file.exists() || file.length() <= 0) ? null : BitmapFactory.decodeFile(file.getAbsolutePath());
        if (bitmapDecodeFile != null) {
            this.f10593c.put(str, bitmapDecodeFile);
            aVar.a(bitmapDecodeFile);
        } else {
            this.f10592b.submit(new Runnable() { // from class: com.beizi.fusion.tool.f.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(5000);
                        httpURLConnection.setReadTimeout(5000);
                        if (httpURLConnection.getResponseCode() == 200) {
                            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                            httpURLConnection.disconnect();
                            f.this.f10593c.put(str, bitmapDecodeStream);
                            String str2 = str;
                            bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(g.b(f.f10590a), f.c(str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1)))));
                        }
                    } catch (Exception unused) {
                        f.this.f10594d.post(new Runnable() { // from class: com.beizi.fusion.tool.f.2.1
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

    private static String a(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            int i10 = (b10 >>> 4) & 15;
            int i11 = 0;
            while (true) {
                sb2.append((char) ((i10 < 0 || i10 > 9) ? (i10 - 10) + 97 : i10 + 48));
                i10 = b10 & 15;
                int i12 = i11 + 1;
                if (i11 >= 1) {
                    break;
                }
                i11 = i12;
            }
        }
        return sb2.toString();
    }
}
