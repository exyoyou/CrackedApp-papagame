package com.join.android.app.component.album.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.collection.LruCache;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.facebook.common.internal.l;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.join.mgps.Util.t0;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes5.dex */
public class ImageLoader {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f34929k = 10485760;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static ImageLoader f34930l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LruCache<String, Bitmap> f34931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ExecutorService f34932b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinkedList<Runnable> f34935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Thread f34936f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f34937g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f34938h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile Semaphore f34940j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34933c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Type f34934d = Type.LIFO;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile Semaphore f34939i = new Semaphore(0);

    public enum Type {
        FIFO,
        LIFO
    }

    class a implements l<u> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ u f34941a;

        a(final u val$bitmapCacheParams) {
            this.f34941a = val$bitmapCacheParams;
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public u get() {
            return this.f34941a;
        }
    }

    class b extends Thread {

        class a extends Handler {
            a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                ImageLoader.this.f34932b.execute(ImageLoader.this.s());
                try {
                    ImageLoader.this.f34940j.acquire();
                } catch (InterruptedException unused) {
                }
            }
        }

        b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            ImageLoader.this.f34937g = new a();
            ImageLoader.this.f34939i.release();
            Looper.loop();
        }
    }

    class c extends LruCache<String, Bitmap> {
        c(int maxSize) {
            super(maxSize);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.collection.LruCache
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String key, Bitmap value) {
            return value.getRowBytes() * value.getHeight();
        }
    }

    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            g gVar = (g) msg.obj;
            ImageView imageView = gVar.f34953b;
            Bitmap bitmap = gVar.f34952a;
            if (imageView.getTag().toString().equals(gVar.f34954c)) {
                imageView.setImageBitmap(bitmap);
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f34946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f34947c;

        e(final ImageView val$imageView, final String val$path) {
            this.f34946b = val$imageView;
            this.f34947c = val$path;
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVarP = ImageLoader.this.p(this.f34946b);
            ImageLoader.this.i(this.f34947c, ImageLoader.this.l(this.f34947c, fVarP.f34949a, fVarP.f34950b));
            g gVar = new g(ImageLoader.this, null);
            gVar.f34952a = ImageLoader.this.m(this.f34947c);
            gVar.f34953b = this.f34946b;
            gVar.f34954c = this.f34947c;
            Message messageObtain = Message.obtain();
            messageObtain.obj = gVar;
            ImageLoader.this.f34938h.sendMessage(messageObtain);
            ImageLoader.this.f34940j.release();
        }
    }

    private class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f34949a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f34950b;

        private f() {
        }

        /* synthetic */ f(ImageLoader imageLoader, a aVar) {
            this();
        }
    }

    private class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Bitmap f34952a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f34953b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f34954c;

        private g() {
        }

        /* synthetic */ g(ImageLoader imageLoader, a aVar) {
            this();
        }
    }

    public ImageLoader(int threadCount, Type type) {
        t(threadCount, type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(String key, Bitmap bitmap) {
        if (m(key) != null || bitmap == null) {
            return;
        }
        this.f34931a.put(key, bitmap);
    }

    private synchronized void j(Runnable runnable) {
        try {
            if (this.f34937g == null) {
                this.f34939i.acquire();
            }
        } catch (InterruptedException unused) {
        }
        this.f34935e.add(runnable);
        this.f34937g.sendEmptyMessage(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME);
    }

    private static ImagePipelineConfig n(Context context) {
        int i10 = f34929k;
        a aVar = new a(new u(i10, Integer.MAX_VALUE, i10, Integer.MAX_VALUE, Integer.MAX_VALUE));
        ImagePipelineConfig.Builder builderNewBuilder = ImagePipelineConfig.newBuilder(context);
        builderNewBuilder.setBitmapMemoryCacheParamsSupplier(aVar);
        return builderNewBuilder.build();
    }

    private static int o(Object object, String fieldName) {
        try {
            Field declaredField = ImageView.class.getDeclaredField(fieldName);
            declaredField.setAccessible(true);
            int iIntValue = ((Integer) declaredField.get(object)).intValue();
            if (iIntValue <= 0 || iIntValue >= Integer.MAX_VALUE) {
                return 0;
            }
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(iIntValue);
                sb2.append("");
            } catch (Exception unused) {
            }
            return iIntValue;
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static ImageLoader q() {
        if (f34930l == null) {
            synchronized (ImageLoader.class) {
                if (f34930l == null) {
                    f34930l = new ImageLoader(1, Type.LIFO);
                }
            }
        }
        return f34930l;
    }

    public static ImageLoader r(int threadCount, Type type) {
        if (f34930l == null) {
            synchronized (ImageLoader.class) {
                if (f34930l == null) {
                    f34930l = new ImageLoader(threadCount, type);
                }
            }
        }
        return f34930l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Runnable s() {
        Type type = this.f34934d;
        if (type == Type.FIFO) {
            return this.f34935e.removeFirst();
        }
        if (type != Type.LIFO) {
            return null;
        }
        return this.f34935e.removeLast();
    }

    private void t(int threadCount, Type type) {
        b bVar = new b();
        this.f34936f = bVar;
        bVar.start();
        this.f34931a = new c(((int) Runtime.getRuntime().maxMemory()) / 8);
        this.f34932b = Executors.newFixedThreadPool(threadCount);
        this.f34940j = new Semaphore(threadCount);
        this.f34935e = new LinkedList<>();
        if (type == null) {
            type = Type.LIFO;
        }
        this.f34934d = type;
    }

    public static void u(Context context) {
        t0.m(context, 400);
    }

    public void h(String key, Bitmap bitmap) {
        i(key, bitmap);
    }

    public int k(BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        if (i10 <= reqWidth || i11 <= reqHeight) {
            return 1;
        }
        float f10 = i10 / reqWidth;
        return Math.max(Math.round(f10), Math.round(f10));
    }

    public Bitmap l(String pathName, int reqWidth, int reqHeight) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(pathName, options);
        options.inSampleSize = k(options, reqWidth, reqHeight);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(pathName, options);
    }

    public Bitmap m(String key) {
        return this.f34931a.get(key);
    }

    public f p(ImageView imageView) {
        f fVar = new f(this, null);
        DisplayMetrics displayMetrics = imageView.getContext().getResources().getDisplayMetrics();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int width = layoutParams.width == -2 ? 0 : imageView.getWidth();
        if (width <= 0) {
            width = layoutParams.width;
        }
        if (width <= 0) {
            width = o(imageView, "mMaxWidth");
        }
        if (width <= 0) {
            width = displayMetrics.widthPixels;
        }
        int height = layoutParams.height != -2 ? imageView.getHeight() : 0;
        if (height <= 0) {
            height = layoutParams.height;
        }
        if (height <= 0) {
            height = o(imageView, "mMaxHeight");
        }
        if (height <= 0) {
            height = displayMetrics.heightPixels;
        }
        fVar.f34949a = width;
        fVar.f34950b = height;
        return fVar;
    }

    public void v(final String path, final ImageView imageView) {
        imageView.setTag(path);
        if (this.f34938h == null) {
            this.f34938h = new d();
        }
        Bitmap bitmapM = m(path);
        if (bitmapM == null) {
            j(new e(imageView, path));
            return;
        }
        g gVar = new g(this, null);
        gVar.f34952a = bitmapM;
        gVar.f34953b = imageView;
        gVar.f34954c = path;
        Message messageObtain = Message.obtain();
        messageObtain.obj = gVar;
        this.f34938h.sendMessage(messageObtain);
    }

    public void w(String key) {
        this.f34931a.remove(key);
    }
}
