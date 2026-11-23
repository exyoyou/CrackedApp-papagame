package com.czhj.sdk.common.network;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.LruCache;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.DeviceUtils;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.common.utils.SharedPreferencesUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.Cache;
import com.czhj.volley.ExecutorDelivery;
import com.czhj.volley.toolbox.BasicNetwork;
import com.czhj.volley.toolbox.FileDownloadNetwork;
import com.czhj.volley.toolbox.HurlStack;
import com.czhj.volley.toolbox.ImageLoader;
import com.czhj.volley.toolbox.NoCache;
import java.util.HashSet;

/* JADX INFO: loaded from: classes9.dex */
public class Networking {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25537a = "sigmob-volley-cache";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f25538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile SigmobRequestQueue f25539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile SigmobRequestQueue f25540d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile SigmobRequestQueue f25541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile SigmobRequestQueue f25542f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile String f25543g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile String f25544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile MaxWidthImageLoader f25545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static boolean f25546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static HurlStack.UrlRewriter f25547k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile Cache f25548l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static HashSet f25549m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static SigmobRequestQueue f25550n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static SigmobRequestQueue f25551o;

    /* JADX INFO: renamed from: com.czhj.sdk.common.network.Networking$4, reason: invalid class name */
    class AnonymousClass4 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f25554a;

        AnonymousClass4(Context context) {
            this.f25554a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    WebView webView = new WebView(this.f25554a);
                    webView.removeJavascriptInterface("searchBoxJavaBridge_");
                    webView.removeJavascriptInterface("accessibility");
                    webView.removeJavascriptInterface("accessibilityTraversal");
                    String unused = Networking.f25543g = webView.getSettings().getUserAgentString();
                    SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(this.f25554a).edit();
                    editorEdit.putString("user-agent-cache", Networking.f25543g);
                    editorEdit.apply();
                }
            } catch (Throwable unused2) {
            }
        }
    }

    static {
        String property = System.getProperty("http.agent");
        f25538b = property;
        f25544h = property;
        f25546j = false;
        f25548l = null;
        f25549m = new HashSet();
    }

    public static void AddSigmobServerURL(String str) {
        f25549m.add(str);
    }

    private static Cache a(Context context) {
        if (f25548l == null) {
            f25548l = new NoCache();
        }
        return f25548l;
    }

    private static HurlStack.UrlRewriter b(Context context) {
        if (f25547k == null) {
            f25547k = new PlayServicesUrlRewriter();
        }
        return f25547k;
    }

    private static SigmobRequestQueue c(Context context) {
        SigmobRequestQueue sigmobRequestQueue = f25550n;
        if (sigmobRequestQueue == null) {
            synchronized (Networking.class) {
                sigmobRequestQueue = f25550n;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue2 = new SigmobRequestQueue(new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 2, Integer.MAX_VALUE, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
                    f25550n = sigmobRequestQueue2;
                    sigmobRequestQueue2.start();
                    sigmobRequestQueue = sigmobRequestQueue2;
                }
            }
        }
        return sigmobRequestQueue;
    }

    public static SigmobRequestQueue getAdTrackerRetryQueue() {
        return f25551o;
    }

    public static String getBaseUrlScheme() {
        return b() ? "https" : "http";
    }

    public static SigmobRequestQueue getBuriedPointRequestQueue() {
        return f25541e;
    }

    public static String getCachedUserAgent() {
        String str = f25543g;
        return str == null ? f25538b : str;
    }

    public static SigmobRequestQueue getCommonRequestQueue() {
        return f25542f;
    }

    public static SigmobRequestQueue getDownloadRequestQueue() {
        return f25540d;
    }

    public static SigmobRequestQueue getRequestQueue() {
        return f25550n;
    }

    public static String getScheme() {
        return "https";
    }

    public static SigmobRequestQueue getSigRequestQueue() {
        return f25539c;
    }

    public static HashSet getSigmobServerURLS() {
        return f25549m;
    }

    public static HurlStack.UrlRewriter getUrlRewriter() {
        return f25547k;
    }

    public static String getUserAgent() {
        return TextUtils.isEmpty(f25543g) ? f25544h : f25543g;
    }

    public static void initialize(Context context) {
        initializeUserAgentCache(context);
        initializeUserAgent(context);
        initializeBuriedPointRequestQueue(context);
        initializeDownloadRequestQueue(context);
        c(context);
        initializeCommonRequestQueue(context);
        initializeImageLoader(context);
        initializeadTrackerReTryQueue(context);
    }

    public static SigmobRequestQueue initializeBuriedPointRequestQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue = f25541e;
        if (sigmobRequestQueue == null) {
            synchronized (Networking.class) {
                sigmobRequestQueue = f25541e;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue2 = new SigmobRequestQueue(new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 1, 2);
                    f25541e = sigmobRequestQueue2;
                    sigmobRequestQueue2.start();
                    sigmobRequestQueue = sigmobRequestQueue2;
                }
            }
        }
        return sigmobRequestQueue;
    }

    public static SigmobRequestQueue initializeCommonRequestQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue = f25542f;
        if (sigmobRequestQueue == null) {
            synchronized (Networking.class) {
                sigmobRequestQueue = f25542f;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue2 = new SigmobRequestQueue(new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 2, 10);
                    f25542f = sigmobRequestQueue2;
                    sigmobRequestQueue2.start();
                    sigmobRequestQueue = sigmobRequestQueue2;
                }
            }
        }
        return sigmobRequestQueue;
    }

    public static SigmobRequestQueue initializeDownloadRequestQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue = f25540d;
        if (sigmobRequestQueue == null) {
            synchronized (Networking.class) {
                sigmobRequestQueue = f25540d;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue2 = new SigmobRequestQueue(new FileDownloadNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 1, 6);
                    f25540d = sigmobRequestQueue2;
                    sigmobRequestQueue2.start();
                    sigmobRequestQueue = sigmobRequestQueue2;
                }
            }
        }
        return sigmobRequestQueue;
    }

    public static ImageLoader initializeImageLoader(Context context) {
        MaxWidthImageLoader maxWidthImageLoader = f25545i;
        if (maxWidthImageLoader == null) {
            synchronized (Networking.class) {
                maxWidthImageLoader = f25545i;
                if (maxWidthImageLoader == null) {
                    SigmobRequestQueue downloadRequestQueue = getDownloadRequestQueue();
                    final LruCache<String, Bitmap> lruCache = new LruCache<String, Bitmap>(DeviceUtils.memoryCacheSizeBytes(context)) { // from class: com.czhj.sdk.common.network.Networking.1
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.util.LruCache
                        public int sizeOf(String str, Bitmap bitmap) {
                            return bitmap != null ? bitmap.getRowBytes() * bitmap.getHeight() : super.sizeOf(str, (Object) null);
                        }
                    };
                    MaxWidthImageLoader maxWidthImageLoader2 = new MaxWidthImageLoader(downloadRequestQueue, context, new ImageLoader.ImageCache() { // from class: com.czhj.sdk.common.network.Networking.2
                        @Override // com.czhj.volley.toolbox.ImageLoader.ImageCache
                        public Bitmap getBitmap(String str) {
                            return (Bitmap) lruCache.get(str);
                        }

                        @Override // com.czhj.volley.toolbox.ImageLoader.ImageCache
                        public void putBitmap(String str, Bitmap bitmap) {
                            lruCache.put(str, bitmap);
                        }
                    });
                    f25545i = maxWidthImageLoader2;
                    maxWidthImageLoader = maxWidthImageLoader2;
                }
            }
        }
        return maxWidthImageLoader;
    }

    public static void initializeMill(Context context) {
        initializeUserAgentCache(context);
        initializeUserAgent(context.getApplicationContext());
        c(context);
        initializeCommonRequestQueue(context);
        initializeBuriedPointRequestQueue(context);
    }

    public static SigmobRequestQueue initializeSigRequestQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue = f25539c;
        if (sigmobRequestQueue == null) {
            synchronized (Networking.class) {
                sigmobRequestQueue = f25539c;
                if (sigmobRequestQueue == null) {
                    SigmobRequestQueue sigmobRequestQueue2 = new SigmobRequestQueue(new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000))), 2, 5);
                    f25539c = sigmobRequestQueue2;
                    sigmobRequestQueue2.start();
                    sigmobRequestQueue = sigmobRequestQueue2;
                }
            }
        }
        return sigmobRequestQueue;
    }

    public static String initializeUserAgent(final Context context) {
        Preconditions.NoThrow.checkNotNull(context);
        String str = f25543g;
        if (str == null) {
            synchronized (Networking.class) {
                str = f25543g;
                if (str == null) {
                    try {
                        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.network.Networking.3
                            @Override // java.lang.Runnable
                            public void run() {
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                String unused = Networking.f25543g = WebSettings.getDefaultUserAgent(context);
                                SigmobLog.d("getUA time " + (System.currentTimeMillis() - jCurrentTimeMillis));
                                SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(context).edit();
                                editorEdit.putString("user-agent-cache", Networking.f25543g);
                                editorEdit.apply();
                            }
                        });
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return str;
    }

    public static void initializeUserAgentCache(Context context) {
        f25544h = SharedPreferencesUtil.getSharedPreferences(context).getString("user-agent-cache", f25538b);
    }

    public static void initializeV2(Context context) {
        initializeUserAgentCache(context);
        initializeUserAgent(context);
        initializeBuriedPointRequestQueue(context);
        initializeDownloadRequestQueue(context);
        initializeCommonRequestQueue(context);
        initializeadTrackerReTryQueue(context);
    }

    public static SigmobRequestQueue initializeadTrackerReTryQueue(Context context) {
        SigmobRequestQueue sigmobRequestQueue = f25551o;
        if (sigmobRequestQueue == null) {
            synchronized (Networking.class) {
                sigmobRequestQueue = f25551o;
                if (sigmobRequestQueue == null) {
                    BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(CustomSSLSocketFactory.getDefault(10000)));
                    if (f25548l == null) {
                        a(context);
                    }
                    SigmobRequestQueue sigmobRequestQueue2 = new SigmobRequestQueue(basicNetwork, 1, 10);
                    f25551o = sigmobRequestQueue2;
                    sigmobRequestQueue2.start();
                    sigmobRequestQueue = sigmobRequestQueue2;
                }
            }
        }
        return sigmobRequestQueue;
    }

    public static void useHttps(boolean z10) {
        f25546j = z10;
    }

    private static boolean b() {
        return f25546j;
    }
}
