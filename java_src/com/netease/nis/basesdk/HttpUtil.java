package com.netease.nis.basesdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class HttpUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Handler f75850a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ExecutorService f75851b = Executors.newSingleThreadExecutor();

    public interface ResponseCallBack {
        void onError(int i10, String str);

        void onSuccess(String str);
    }

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f75852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f75853b;

        /* JADX INFO: renamed from: com.netease.nis.basesdk.HttpUtil$a$a, reason: collision with other inner class name */
        class C0972a implements ResponseCallBack {

            /* JADX INFO: renamed from: com.netease.nis.basesdk.HttpUtil$a$a$a, reason: collision with other inner class name */
            class RunnableC0973a implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ String f75855a;

                RunnableC0973a(String str) {
                    this.f75855a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f75853b.onSuccess(this.f75855a);
                }
            }

            /* JADX INFO: renamed from: com.netease.nis.basesdk.HttpUtil$a$a$b */
            class b implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ int f75857a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ String f75858b;

                b(int i10, String str) {
                    this.f75857a = i10;
                    this.f75858b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f75853b.onError(this.f75857a, this.f75858b);
                }
            }

            C0972a() {
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i10, String str) {
                HttpUtil.f75850a.post(new b(i10, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.f75850a.post(new RunnableC0973a(str));
            }
        }

        a(String str, ResponseCallBack responseCallBack) {
            this.f75852a = str;
            this.f75853b = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpUtil.doHttpRequest(this.f75852a, false, false, null, null, null, new C0972a());
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f75860a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f75861b;

        class a implements ResponseCallBack {

            /* JADX INFO: renamed from: com.netease.nis.basesdk.HttpUtil$b$a$a, reason: collision with other inner class name */
            class RunnableC0974a implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ String f75863a;

                RunnableC0974a(String str) {
                    this.f75863a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b.this.f75861b.onSuccess(this.f75863a);
                }
            }

            /* JADX INFO: renamed from: com.netease.nis.basesdk.HttpUtil$b$a$b, reason: collision with other inner class name */
            class RunnableC0975b implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ int f75865a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ String f75866b;

                RunnableC0975b(int i10, String str) {
                    this.f75865a = i10;
                    this.f75866b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b.this.f75861b.onError(this.f75865a, this.f75866b);
                }
            }

            a() {
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i10, String str) {
                HttpUtil.f75850a.post(new RunnableC0975b(i10, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.f75850a.post(new RunnableC0974a(str));
            }
        }

        b(String str, ResponseCallBack responseCallBack) {
            this.f75860a = str;
            this.f75861b = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpUtil.doHttpRequest(this.f75860a, false, true, null, null, null, new a());
        }
    }

    static class c extends ConnectivityManager.NetworkCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Timer f75868a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean[] f75869b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f75870c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f75871d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ConnectivityManager f75872e;

        c(Timer timer, boolean[] zArr, String str, ResponseCallBack responseCallBack, ConnectivityManager connectivityManager) {
            this.f75868a = timer;
            this.f75869b = zArr;
            this.f75870c = str;
            this.f75871d = responseCallBack;
            this.f75872e = connectivityManager;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        @TargetApi(21)
        public void onAvailable(Network network) {
            super.onAvailable(network);
            Logger.d("切换网络成功");
            this.f75868a.cancel();
            this.f75868a.purge();
            if (!this.f75869b[0]) {
                HttpUtil.doHttpRequest(this.f75870c, false, false, null, null, network, this.f75871d);
                this.f75869b[0] = true;
            }
            this.f75872e.unregisterNetworkCallback(this);
        }
    }

    static class d extends TimerTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ConnectivityManager f75873a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ConnectivityManager.NetworkCallback f75874b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f75875c;

        d(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback, ResponseCallBack responseCallBack) {
            this.f75873a = connectivityManager;
            this.f75874b = networkCallback;
            this.f75875c = responseCallBack;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.f75873a.unregisterNetworkCallback(this.f75874b);
            this.f75875c.onError(10002, "当前状态为wifi和数据流量同时开启，切换到数据流量超时，请重试");
        }
    }

    static class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f75876a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f75877b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f75878c;

        class a implements ResponseCallBack {

            /* JADX INFO: renamed from: com.netease.nis.basesdk.HttpUtil$e$a$a, reason: collision with other inner class name */
            class RunnableC0976a implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ String f75880a;

                RunnableC0976a(String str) {
                    this.f75880a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.f75878c.onSuccess(this.f75880a);
                }
            }

            class b implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ int f75882a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ String f75883b;

                b(int i10, String str) {
                    this.f75882a = i10;
                    this.f75883b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.f75878c.onError(this.f75882a, this.f75883b);
                }
            }

            a() {
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i10, String str) {
                HttpUtil.f75850a.post(new b(i10, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.f75850a.post(new RunnableC0976a(str));
            }
        }

        e(String str, String str2, ResponseCallBack responseCallBack) {
            this.f75876a = str;
            this.f75877b = str2;
            this.f75878c = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpUtil.doHttpRequest(this.f75876a, true, true, this.f75877b, null, null, new a());
        }
    }

    static class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f75885a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f75886b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f75887c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ResponseCallBack f75888d;

        class a implements ResponseCallBack {

            /* JADX INFO: renamed from: com.netease.nis.basesdk.HttpUtil$f$a$a, reason: collision with other inner class name */
            class RunnableC0977a implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ String f75890a;

                RunnableC0977a(String str) {
                    this.f75890a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    f.this.f75888d.onSuccess(this.f75890a);
                }
            }

            class b implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ int f75892a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ String f75893b;

                b(int i10, String str) {
                    this.f75892a = i10;
                    this.f75893b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    f.this.f75888d.onError(this.f75892a, this.f75893b);
                }
            }

            a() {
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i10, String str) {
                HttpUtil.f75850a.post(new b(i10, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.f75850a.post(new RunnableC0977a(str));
            }
        }

        f(String str, Map map, Map map2, ResponseCallBack responseCallBack) {
            this.f75885a = str;
            this.f75886b = map;
            this.f75887c = map2;
            this.f75888d = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Logger.i("post request url:" + this.f75885a + " args:" + HttpUtil.map2Form(this.f75886b, "utf-8"));
                HttpUtil.doHttpRequest(this.f75885a, true, false, HttpUtil.map2Form(this.f75886b, "utf-8"), this.f75887c, null, new a());
            } catch (Exception e10) {
                Logger.e(e10.getMessage());
                this.f75888d.onError(10001, "网络请求出现异常:" + e10.toString());
            }
        }
    }

    public static void doGetRequestByForm(String str, ResponseCallBack responseCallBack) {
        Logger.i("get request url:" + str);
        f75851b.execute(new a(str, responseCallBack));
    }

    public static void doGetRequestByJson(String str, ResponseCallBack responseCallBack) {
        Logger.i("get request url:" + str);
        f75851b.execute(new b(str, responseCallBack));
    }

    public static void doGetRequestByMobileNet(Context context, String str, ResponseCallBack responseCallBack) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        Logger.d("system api version >= 21");
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        builder.addCapability(12);
        builder.addTransportType(0);
        NetworkRequest networkRequestBuild = builder.build();
        Timer timer = new Timer();
        c cVar = new c(timer, new boolean[]{false}, str, responseCallBack, connectivityManager);
        connectivityManager.requestNetwork(networkRequestBuild, cVar);
        timer.schedule(new d(connectivityManager, cVar, responseCallBack), 7000L);
    }

    public static void doHttpRequest(String str, boolean z10, boolean z11, String str2, Map<String, String> map, Network network, ResponseCallBack responseCallBack) {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                URL url = new URL(str);
                httpURLConnection = network != null ? (HttpURLConnection) network.openConnection(url) : (HttpURLConnection) url.openConnection();
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setDoInput(true);
                if (z10) {
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setDoOutput(true);
                } else {
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setDoOutput(false);
                }
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setInstanceFollowRedirects(true);
                if (z11) {
                    httpURLConnection.setRequestProperty("Content-Type", "application/json");
                } else {
                    httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                }
                httpURLConnection.setRequestProperty("connection", "Keep-Alive");
                if (map != null) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                if (str2 != null) {
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    byte[] bytes = str2.getBytes("UTF-8");
                    dataOutputStream.write(bytes, 0, bytes.length);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                }
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 200) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                    StringBuilder sb2 = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            sb2.append(new String(line.getBytes("UTF-8")));
                        }
                    }
                    String string = sb2.toString();
                    bufferedReader.close();
                    responseCallBack.onSuccess(string);
                } else if (httpURLConnection.getResponseCode() == 302) {
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField == null || headerField.isEmpty()) {
                        responseCallBack.onError(httpURLConnection.getResponseCode(), "获取重定向url失败");
                    } else {
                        httpURLConnection.disconnect();
                        doHttpRequest(headerField, z10, z11, str2, null, network, responseCallBack);
                    }
                } else {
                    responseCallBack.onError(httpURLConnection.getResponseCode(), "与服务端建立连接失败");
                }
            } catch (Exception e10) {
                Logger.e(e10.getMessage());
                responseCallBack.onError(10001, "网络连接出现异常:" + e10.toString());
                if (0 == 0) {
                    return;
                }
            }
            httpURLConnection.disconnect();
        } catch (Throwable th) {
            if (0 != 0) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    public static void doPostRequestByForm(String str, Map<String, String> map, Map<String, String> map2, ResponseCallBack responseCallBack) {
        f75851b.execute(new f(str, map, map2, responseCallBack));
    }

    public static void doPostRequestByJson(String str, String str2, ResponseCallBack responseCallBack) {
        Logger.i("post request url:" + str + " args:" + str2);
        f75851b.execute(new e(str, str2, responseCallBack));
    }

    public static String map2Form(Map<String, String> map, String str) {
        StringBuilder sb2 = new StringBuilder();
        if (map == null || map.size() == 0) {
            return sb2.toString();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb2.append(URLEncoder.encode(entry.getValue(), str));
            sb2.append(x.a.f97576d);
        }
        return sb2.substring(0, sb2.length() - 1);
    }
}
