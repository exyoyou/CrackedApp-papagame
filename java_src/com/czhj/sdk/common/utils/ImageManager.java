package com.czhj.sdk.common.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.LruCache;
import android.widget.ImageView;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes9.dex */
public class ImageManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile ImageManager f25634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f25635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExecutorService f25636c = ThreadPoolFactory.getFixIOExecutor();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LruCache<String, Bitmap> f25637d = new LruCache<>(4194304);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f25638e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f25639f;

    public interface BitmapLoadedListener {
        void onBitmapLoadFailed();

        void onBitmapLoaded(Bitmap bitmap);
    }

    public class RequestCreatorRunnable implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f25646a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f25647b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f25648c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f25649d;

        public RequestCreatorRunnable(String str) {
            this.f25646a = StringUtil.getUrl(str);
        }

        private Bitmap a() {
            File file = new File(ImageManager.this.a(), Md5Util.getMd5FilenameFromUrl(this.f25646a));
            if (!file.exists() || file.length() <= 0) {
                return null;
            }
            return BitmapFactory.decodeFile(file.getAbsolutePath());
        }

        private void b() {
            ImageManager.this.f25638e.post(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.RequestCreatorRunnable.2
                @Override // java.lang.Runnable
                public void run() {
                    ImageView imageView;
                    RequestCreatorRunnable requestCreatorRunnable = RequestCreatorRunnable.this;
                    int i10 = requestCreatorRunnable.f25648c;
                    if (i10 == 0 || (imageView = requestCreatorRunnable.f25649d) == null) {
                        return;
                    }
                    imageView.setImageResource(i10);
                }
            });
        }

        public RequestCreatorRunnable error(int i10) {
            this.f25648c = i10;
            return this;
        }

        public void into(ImageView imageView) {
            this.f25649d = imageView;
            int i10 = this.f25647b;
            if (i10 != 0 && imageView != null) {
                imageView.setImageResource(i10);
            }
            if (TextUtils.isEmpty(this.f25646a)) {
                return;
            }
            Bitmap bitmap = (Bitmap) ImageManager.this.f25637d.get(this.f25646a);
            if (bitmap != null && imageView != null) {
                imageView.setImageBitmap(bitmap);
                return;
            }
            Bitmap bitmapA = a();
            if (bitmapA == null || imageView == null) {
                ImageManager.this.f25636c.submit(this);
            } else {
                imageView.setImageBitmap(bitmapA);
                ImageManager.this.f25637d.put(this.f25646a, bitmapA);
            }
        }

        public RequestCreatorRunnable placeholder(int i10) {
            this.f25647b = i10;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                if (i10 >= 3) {
                    return;
                }
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f25646a).openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setConnectTimeout(2000);
                    if (httpURLConnection.getResponseCode() == 200) {
                        final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                        ImageManager.this.f25638e.post(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.RequestCreatorRunnable.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ImageView imageView = RequestCreatorRunnable.this.f25649d;
                                if (imageView == null) {
                                    return;
                                }
                                imageView.setImageBitmap(bitmapDecodeStream);
                                RequestCreatorRunnable.this.f25649d = null;
                            }
                        });
                        ImageManager.this.f25637d.put(this.f25646a, bitmapDecodeStream);
                        bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(ImageManager.this.a(), Md5Util.getMd5FilenameFromUrl(this.f25646a))));
                        return;
                    }
                    b();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    b();
                }
                i10 = i11;
            }
        }
    }

    public ImageManager(Context context) {
        this.f25635b = context.getApplicationContext();
    }

    private static ImageManager a(Context context) {
        if (f25634a == null) {
            synchronized (ImageManager.class) {
                if (f25634a == null) {
                    f25634a = new ImageManager(context);
                }
            }
        }
        return f25634a;
    }

    public static ImageManager with(Context context) {
        return a(context);
    }

    public void clearCache() {
        ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.1
            @Override // java.lang.Runnable
            public void run() {
                String str;
                try {
                    File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount(FileUtil.orderByDate(ImageManager.this.a().getAbsolutePath()), 100);
                    if (fileArrClearCacheFileByCount == null) {
                        str = "native ad file list is null";
                    } else {
                        str = "native ad file remain num: " + fileArrClearCacheFileByCount.length;
                    }
                    SigmobLog.i(str);
                } catch (Throwable th) {
                    SigmobLog.e("clean native ad file error", th);
                }
            }
        });
    }

    public ImageManager customCachePath(File file) {
        this.f25639f = file;
        return this;
    }

    public void getBitmap(String str, final BitmapLoadedListener bitmapLoadedListener) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final String url = StringUtil.getUrl(str);
        Bitmap bitmapDecodeFile = this.f25637d.get(url);
        if (bitmapDecodeFile == null) {
            bitmapDecodeFile = null;
        } else {
            if (!bitmapDecodeFile.isRecycled()) {
                bitmapLoadedListener.onBitmapLoaded(bitmapDecodeFile);
                return;
            }
            this.f25637d.remove(url);
        }
        File file = new File(a(), Md5Util.getMd5FilenameFromUrl(url));
        if (file.exists() && file.length() > 0) {
            bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
        }
        if (bitmapDecodeFile == null) {
            this.f25636c.submit(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(url).openConnection();
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(2000);
                        if (httpURLConnection.getResponseCode() == 200) {
                            final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                            httpURLConnection.disconnect();
                            ImageManager.this.f25638e.post(new Runnable() { // from class: com.czhj.sdk.common.utils.ImageManager.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    bitmapLoadedListener.onBitmapLoaded(bitmapDecodeStream);
                                }
                            });
                            ImageManager.this.f25637d.put(url, bitmapDecodeStream);
                            bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(ImageManager.this.a(), Md5Util.getMd5FilenameFromUrl(url))));
                        }
                    } catch (Exception unused) {
                        Handler handler = ImageManager.this.f25638e;
                        final BitmapLoadedListener bitmapLoadedListener2 = bitmapLoadedListener;
                        Objects.requireNonNull(bitmapLoadedListener2);
                        handler.post(new Runnable() { // from class: com.czhj.sdk.common.utils.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                bitmapLoadedListener2.onBitmapLoadFailed();
                            }
                        });
                    }
                }
            });
        } else {
            this.f25637d.put(url, bitmapDecodeFile);
            bitmapLoadedListener.onBitmapLoaded(bitmapDecodeFile);
        }
    }

    public RequestCreatorRunnable load(String str) {
        return new RequestCreatorRunnable(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File a() {
        File file = this.f25639f;
        if (file != null && file.isDirectory() && this.f25639f.exists()) {
            return this.f25639f;
        }
        File file2 = Environment.getExternalStorageState().equals("mounted") ? new File(this.f25635b.getExternalCacheDir(), "SigImageCache") : new File(this.f25635b.getCacheDir(), "SigImageCache");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        this.f25639f = file2;
        return file2;
    }
}
