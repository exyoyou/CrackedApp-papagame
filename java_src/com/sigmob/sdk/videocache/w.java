package com.sigmob.sdk.videocache;

import android.content.Context;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static w f81993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f81994b = Executors.newFixedThreadPool(8);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, WeakReference<a>> f81995c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f81996d;

    private static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f81997a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicBoolean f81998b = new AtomicBoolean(false);

        public a(String url) {
            this.f81997a = url;
        }

        /* JADX WARN: Code duplicated, block: B:48:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:58:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:68:? A[SYNTHETIC] */
        private void a(String getURL) throws Throwable {
            HttpURLConnection httpURLConnection;
            InputStream inputStream = null;
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(getURL).openConnection();
                    try {
                        try {
                            httpURLConnection.setConnectTimeout(5000);
                            httpURLConnection.setReadTimeout(5000);
                            httpURLConnection.connect();
                            byte[] bArr = new byte[1024];
                            inputStream = httpURLConnection.getInputStream();
                            while (inputStream.read(bArr) != -1) {
                                if (this.f81998b.get()) {
                                    SigmobLog.d(String.format("cancelPreLoadVideo，取消网络请求，成功（正在下载数据），url = %s", this.f81997a));
                                    break;
                                }
                            }
                            SigmobLog.i(String.format("preloadVideo，网络文件，成功，url = %s", this.f81997a));
                            try {
                                inputStream.close();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            httpURLConnection.disconnect();
                        } catch (Exception e11) {
                            e = e11;
                            SigmobLog.e(String.format("preloadVideo，网络文件，失败，msg = %s，url = %s", e.getMessage(), this.f81997a));
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception e12) {
                                    e12.printStackTrace();
                                }
                            }
                            if (httpURLConnection == null) {
                            } else {
                                httpURLConnection.disconnect();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e13) {
                                e13.printStackTrace();
                            }
                        }
                        if (httpURLConnection != null) {
                            throw th;
                        }
                        try {
                            httpURLConnection.disconnect();
                            throw th;
                        } catch (Exception e14) {
                            e14.printStackTrace();
                            throw th;
                        }
                    }
                } catch (Exception e15) {
                    e15.printStackTrace();
                }
            } catch (Exception e16) {
                e = e16;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = null;
                if (inputStream != null) {
                    inputStream.close();
                }
                if (httpURLConnection != null) {
                    throw th;
                }
                httpURLConnection.disconnect();
                throw th;
            }
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            if (this.f81998b.get()) {
                SigmobLog.i(String.format("cancelPreLoadVideo，取消网络请求，成功（未下载数据），url = %s", this.f81997a));
            } else {
                a(this.f81997a);
            }
        }

        public void a(boolean cancel) {
            this.f81998b.set(cancel);
        }
    }

    private w(Context context) {
        this.f81996d = context;
    }

    public static synchronized w a(Context context) {
        if (f81993a == null && context != null) {
            f81993a = new w(context.getApplicationContext());
        }
        return f81993a;
    }

    public void b(String url) {
        WeakReference<a> weakReference;
        a aVar;
        SigmobLog.d(String.format("cancelPreLoadVideo，ulr = %s", url));
        if (TextUtils.isEmpty(url) || (weakReference = this.f81995c.get(url)) == null || (aVar = weakReference.get()) == null) {
            return;
        }
        SigmobLog.d(String.format("cancelPreLoadVideo，取消网络请求，ulr = %s", url));
        aVar.a(true);
    }

    public void a(String url) {
        if (TextUtils.isEmpty(url)) {
            return;
        }
        String url2 = StringUtil.getUrl(url);
        if (!url2.startsWith("http")) {
            SigmobLog.d(String.format("preloadVideo，本地文件：ulr = %s", url2));
            return;
        }
        SigmobLog.d(String.format("preloadVideo，网络文件，开始下载：ulr = %s", url2));
        a aVar = new a(url2);
        this.f81995c.put(url2, new WeakReference<>(aVar));
        this.f81994b.execute(aVar);
    }
}
